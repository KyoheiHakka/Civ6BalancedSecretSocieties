-- Minerva
-- Author: hina8
-- DateCreated: 2024/11/10
--------------------------------------------------------------

-- 交易追加のModifier用意
INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType) VALUES 
('MODIFIER_KH_MINERVA_ADD_TRADE_ROUTE_CAPACITY', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('MODIFIER_KH_MINERVA_ADD_TRADE_ROUTE_CAPACITY', 'KIND_MODIFIER');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_KH_MINERVA_ADD_TRADE_ROUTE_CAPACITY', 'Amount', '1');

INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_1', 'MODIFIER_KH_MINERVA_ADD_TRADE_ROUTE_CAPACITY'),
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_2', 'MODIFIER_KH_MINERVA_ADD_TRADE_ROUTE_CAPACITY'),
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_3', 'MODIFIER_KH_MINERVA_ADD_TRADE_ROUTE_CAPACITY'),
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_4', 'MODIFIER_KH_MINERVA_ADD_TRADE_ROUTE_CAPACITY');

-- ******
-- 1レベ
-- ******

-- 交易にさらに科学と文化追加
INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType) VALUES 
('MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_SCIENCE', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),
('MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_CULTURE', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_SCIENCE', 'KIND_MODIFIER'),
('MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_CULTURE', 'KIND_MODIFIER');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_SCIENCE', 'Amount', '1'),
('MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_SCIENCE', 'YieldType', 'YIELD_SCIENCE'),
('MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_CULTURE', 'Amount', '1'),
('MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_CULTURE', 'YieldType', 'YIELD_CULTURE');

INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_1', 'MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_SCIENCE'),
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_1', 'MODIFIER_KH_MINERVA_TRADE_BONUS_YIELD_CULTURE');

-- 商業ハブが影響力+1

---- 商業ハブを持ってたらの条件
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
('CITY_HAS_DISTRICT_HAB', 'REQUIREMENTSET_TEST_ALL');

---- 影響力を付与
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
('CITY_HAS_DISTRICT_HAB', 'REQUIRES_CITY_HAS_COMMERCIAL_HUB');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 
('MODIFIER_KH_MINERVA_HAB_INFLUENCEPOINTS', 'MODIFIER_PLAYER_ADJUST_INFLUENCE_POINTS_PER_TURN', 'CITY_HAS_DISTRICT_HAB');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_KH_MINERVA_HAB_INFLUENCEPOINTS', 'Amount', '1');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('MODIFIER_KH_MINERVA_HAB_INFLUENCEPOINTS', 'KIND_MODIFIER');

INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_1', 'MODIFIER_KH_MINERVA_HAB_INFLUENCEPOINTS');


-- ******
-- 2レベと4レベのスロット
-- ******

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType) VALUES 
('MODIFIER_KH_MINERVA_ADD_DIPLO_SLOT', 'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER'),
('MODIFIER_KH_MINERVA_ADD_ECONOMIC_SLOT', 'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_KH_MINERVA_ADD_DIPLO_SLOT', 'GovernmentSlotType', 'SLOT_DIPLOMATIC'),
('MODIFIER_KH_MINERVA_ADD_ECONOMIC_SLOT', 'GovernmentSlotType', 'SLOT_ECONOMIC');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('MODIFIER_KH_MINERVA_ADD_DIPLO_SLOT', 'KIND_MODIFIER'),
('MODIFIER_KH_MINERVA_ADD_ECONOMIC_SLOT', 'KIND_MODIFIER');


INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_2', 'MODIFIER_KH_MINERVA_ADD_DIPLO_SLOT'),
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_4', 'MODIFIER_KH_MINERVA_ADD_ECONOMIC_SLOT');


-- 商業ハブが労働力
INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 
('MODIFIER_KH_MINERVA_HAB_WORK_ETHICKS', 'MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS', 'DISTRICT_IS_COMMERCIAL_HUB');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_KH_MINERVA_HAB_WORK_ETHICKS', 'YieldTypeToMirror', 'YIELD_GOLD'),
('MODIFIER_KH_MINERVA_HAB_WORK_ETHICKS', 'YieldTypeToGrant', 'YIELD_PRODUCTION');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('MODIFIER_KH_MINERVA_HAB_WORK_ETHICKS', 'KIND_MODIFIER');

INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
('GOVERNOR_PROMOTION_OWLS_OF_MINERVA_4', 'MODIFIER_KH_MINERVA_HAB_WORK_ETHICKS');


