-- Minerva
-- Author: hina8
-- DateCreated: 2024/11/10
--------------------------------------------------------------

-- 労働倫理の能力追加
INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 
('MODIFIER_KH_VOIDSINGER_WORK_ETHICKS', 'MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS', 'DISTRICT_IS_HOLY_SITE');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_KH_VOIDSINGER_WORK_ETHICKS', 'YieldTypeToMirror', 'YIELD_FAITH'),
('MODIFIER_KH_VOIDSINGER_WORK_ETHICKS', 'YieldTypeToGrant', 'YIELD_PRODUCTION');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('MODIFIER_KH_VOIDSINGER_WORK_ETHICKS', 'KIND_MODIFIER');

INSERT OR IGNORE INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES 
('GOVERNOR_PROMOTION_VOIDSINGERS_4', 'MODIFIER_KH_VOIDSINGER_WORK_ETHICKS');


