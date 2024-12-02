-- Hermesu
-- Author: hina8
-- DateCreated: 2024/11/10
--------------------------------------------------------------

-- ******
-- 1レベ
-- ******

-- キャンパスは区域数を追加する
TRAIT_EXTRA_DISTRICT_EACH_CITY
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
    ('MODIFIER_KH_CAMPUS_HAS_EXTRA_DISTRICT', 'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT', 'CITY_HAS_DISTRICT_CAMPUS');
INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES
	('MODIFIER_KH_CAMPUS_HAS_EXTRA_DISTRICT', 'Amount', 1);
INSERT OR IGNORE INTO Types (Type, Kind) VALUES
	('MODIFIER_KH_CAMPUS_HAS_EXTRA_DISTRICT', 'KIND_MODIFIER');	
INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_1', 'MODIFIER_KH_CAMPUS_HAS_EXTRA_DISTRICT');

-- ******
-- 2レベ
-- ******

-- レイラインの能力を2に付け替え（いっぱいあるのでとりあえず全部置き換え）
UPDATE GovernorPromotionModifiers
SET GovernorPromotionType = 'GOVERNOR_PROMOTION_HERMETIC_ORDER_2'
WHERE 
	GovernorPromotionType = 'GOVERNOR_PROMOTION_HERMETIC_ORDER_3';

-- ******
-- 3レベ
-- ******

-- アピールが最大のパネルの全出力が+1
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
    ('MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_3', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_3', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_3', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_3', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_3', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_3', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
    ('MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_3', 'YieldType' , 'YIELD_SCIENCE'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_3', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_3', 'YieldType' , 'YIELD_CULTURE'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_3', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_3', 'YieldType' , 'YIELD_GOLD'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_3', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_3', 'YieldType' , 'YIELD_PRODUCTION'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_3', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_3', 'YieldType' , 'YIELD_FAITH'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_3', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_3', 'YieldType' , 'YIELD_FOOD'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_3', 'Amount' , '1');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
	('MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_3', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_3', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_3', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_3', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_3', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_3', 'KIND_MODIFIER');

INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_3', 'MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_3'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_3', 'MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_3'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_3', 'MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_3'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_3', 'MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_3'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_3', 'MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_3'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_3', 'MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_3');

-- ******
-- 4レベ
-- ******

-- アピールが最大のパネルの全出力がさらに+1
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
    ('MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_4', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_4', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_4', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_4', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_4', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_4', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIRES_PLOT_BREATHTAKING_APPEAL');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
    ('MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_4', 'YieldType' , 'YIELD_SCIENCE'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_4', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_4', 'YieldType' , 'YIELD_CULTURE'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_4', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_4', 'YieldType' , 'YIELD_GOLD'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_4', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_4', 'YieldType' , 'YIELD_PRODUCTION'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_4', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_4', 'YieldType' , 'YIELD_FAITH'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_4', 'Amount' , '1'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_4', 'YieldType' , 'YIELD_FOOD'),
    ('MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_4', 'Amount' , '1');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
	('MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_4', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_4', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_4', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_4', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_4', 'KIND_MODIFIER'),
	('MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_4', 'KIND_MODIFIER');

INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_4', 'MODIFIER_KH_BREATHTAKING_PLOT_SCIENCE_HERMETIC_4'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_4', 'MODIFIER_KH_BREATHTAKING_PLOT_CULTURE_HERMETIC_4'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_4', 'MODIFIER_KH_BREATHTAKING_PLOT_GOLD_HERMETIC_4'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_4', 'MODIFIER_KH_BREATHTAKING_PLOT_PRODUCTION_HERMETIC_4'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_4', 'MODIFIER_KH_BREATHTAKING_PLOT_FAITH_HERMETIC_4'),
	('GOVERNOR_PROMOTION_HERMETIC_ORDER_4', 'MODIFIER_KH_BREATHTAKING_PLOT_FOOD_HERMETIC_4');