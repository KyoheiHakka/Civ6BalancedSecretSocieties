-- Vampire
-- Author: hina8
-- DateCreated: 2024/11/10
--------------------------------------------------------------

-- - 1. バンパイアを1体得る
--         - 今と同じ能力
--     - 2. バンパイアは威圧を得る + 全てのユニットの移動力+1
--     - 3. バンパイアを1体得る + バンパイアは倒した敵を捕縛する能力を得る
--     - 4. 合計4つの城を作れる + （スキタイと同じ）全ての戦闘ユニットは敵を倒した時に少し回復する

-- 空輸能力削除
DELETE FROM GovernorPromotionModifiers 
WHERE 
	ModifierId = 'SECRET_SOCIETIES_ATTACH_PLAYER_CASTLES_TELEPORT' &
	GovernorPromotionType = 'GOVERNOR_PROMOTION_SANGUINE_PACT_4';

-- ******
-- 2レベ
-- ******

-- 2レベの城とバンパイア削除
DELETE FROM GovernorPromotionModifiers 
WHERE 
	ModifierId = 'SECRET_SOCIETY_GRANT_VAMPIRE' &
	GovernorPromotionType = 'GOVERNOR_PROMOTION_SANGUINE_PACT_2';

-- 威圧は2レベ
UPDATE GovernorPromotionModifiers
SET GovernorPromotionType ='GOVERNOR_PROMOTION_SANGUINE_PACT_2'
WHERE ModifierId = 'SECRET_SOCIETY_INTIMIDATE_ENEMIES_ATTACHMENT';

-- 全てのユニットの移動力が+1
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
    ('MODIFIER_KH_SANGUINE_MOVEMENT_BONUS', 'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER', 'MODIFIER_KH_SANGUINE_MOVEMENT_BONUS_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES
    ('MODIFIER_KH_SANGUINE_MOVEMENT_BONUS_MODIFIER', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
    ('MODIFIER_KH_SANGUINE_MOVEMENT_BONUS' , 'ModifierId', 'MODIFIER_KH_SANGUINE_MOVEMENT_BONUS_MODIFIER'),
    ('MODIFIER_KH_SANGUINE_MOVEMENT_BONUS_MODIFIER', 'Amount', '1');
INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
	('GOVERNOR_PROMOTION_SANGUINE_PACT_2', 'MODIFIER_KH_SANGUINE_MOVEMENT_BONUS');


-- ******
-- 3レベ
-- ******

-- 3レベの城削除	
DELETE FROM GovernorPromotionModifiers 
WHERE 
	ModifierId = 'SECRET_SOCIETY_GRANT_ONE_VAMPIRE_BUILD' &
	GovernorPromotionType = 'GOVERNOR_PROMOTION_SANGUINE_PACT_3';	

-- バンパイアは捕獲能力を得る
INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 
('MODIFIER_KH_VAMPIRE_CAPTURE_UNITS', 'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER', 'REQUIRE_THIS_UNIT_IS_A_VAMPIRE');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 
('MODIFIER_KH_VAMPIRE_CAPTURE_UNITS_MODIFIER', 'MODIFIER_UNIT_ADJUST_COMBAT_UNIT_CAPTURE');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('MODIFIER_KH_VAMPIRE_CAPTURE_UNITS', 'KIND_MODIFIER'),
('MODIFIER_KH_VAMPIRE_CAPTURE_UNITS_MODIFIER', 'KIND_MODIFIER');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES
('MODIFIER_KH_VAMPIRE_CAPTURE_UNITS', 'ModifierId', 'MODIFIER_KH_VAMPIRE_CAPTURE_UNITS_MODIFIER'),
('MODIFIER_KH_VAMPIRE_CAPTURE_UNITS', 'CanCapture', '1');

INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
('GOVERNOR_PROMOTION_SANGUINE_PACT_3', 'MODIFIER_KH_VAMPIRE_CAPTURE_UNITS');

-- ******
-- 4レベ
-- ******

-- 4レベの城とバンパイア削除
DELETE FROM GovernorPromotionModifiers 
WHERE 
	ModifierId = 'SECRET_SOCIETY_GRANT_VAMPIRE' &
	GovernorPromotionType = 'GOVERNOR_PROMOTION_SANGUINE_PACT_4';

DELETE FROM GovernorPromotionModifiers 
WHERE 
	ModifierId = 'SECRET_SOCIETY_GRANT_ONE_VAMPIRE_BUILD' &
	GovernorPromotionType = 'GOVERNOR_PROMOTION_SANGUINE_PACT_4';

-- 城のための労働力を4獲る（内部的には白の解禁はされている状態）
UPDATE GovernorPromotionModifiers
SET GovernorPromotionType = 'GOVERNOR_PROMOTION_SANGUINE_PACT_4'
WHERE 
	ModifierId = 'SECRET_SOCIETY_GRANT_TWO_VAMPIRE_BUILDS';

UPDATE ModifierArguments
SET Value = '4'
WHERE 
	ModifierId = 'SECRET_SOCIETY_GRANT_TWO_VAMPIRE_BUILDS';

-- 全ての戦闘ユニットは敵を倒した時に少し回復する
INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES
	('GOVERNOR_PROMOTION_SANGUINE_PACT_4', 'HEAL_AFTER_DEFEATING_UNIT');

