<!-- TODO: 日本語のみでいいから更新 -->
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES
('MODIFIER_KH_VAMPIRE_POST_COMBAT_YIELD_GOLD', 'Preview', 'LOC_KH_ABILITY_VAMPIRE_POST_COMBAT_YIELD_GOLD_DESCRIPTION'),
('MODIFIER_KH_VAMPIRE_POST_COMBAT_YIELD_SCIENCE', 'Preview', 'LOC_KH_ABILITY_VAMPIRE_POST_COMBAT_YIELD_SCIENCE_DESCRIPTION'),
('MODIFIER_KH_VAMPIRE_POST_COMBAT_YIELD_CULTURE', 'Preview', 'LOC_KH_ABILITY_VAMPIRE_POST_COMBAT_YIELD_CULTURE_DESCRIPTION');


UPDATE LocalizedText
SET Text = '自然遺産を発見すると解除される。レイライン資源の位置が明らかになる。レイラインはすべての専門区域に大きな隣接ボーナスをもたらす。全てのキャンパスは[ICON_HOUSING]+2と[ICON_AMENITIES]+1を得る。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_HERMETIC_ORDER_1_DESCRIPTION';

UPDATE LocalizedText
SET Text = '現在の政府に経済政策スロット+1。都市国家に[ICON_TradeRoute]交易路を繋いだ際にその都市国家に無償の[Icon_Envoy]代表団を1つ派遣する。国外への[ICON_TradeRoute]交易路から追加の[ICON_FOOD]食料+2、[ICON_PRODUCTION]生産力+2、[ICON_GOLD]ゴールド+4が得られる。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_OWLS_OF_MINERVA_1_DESCRIPTION';

INSERT OR IGNORE INTO LocalizedText (Language, Tag, Text) VALUES
('ja_JP', 'LOC_KH_ABILITY_VAMPIRE_POST_COMBAT_YIELD_GOLD_DESCRIPTION', '戦闘に勝利すると、そのユニットの基本 [ICON_Strength] 戦闘力の50%に相当する [ICON_Gold] ゴールドを得る (速度オンラインで)'),
('ja_JP', 'LOC_KH_ABILITY_VAMPIRE_POST_COMBAT_YIELD_SCIENCE_DESCRIPTION', '戦闘に勝利すると、そのユニットの基本 [ICON_Strength] 戦闘力の25%に相当する [ICON_Science] 科学を得る (速度オンラインで)'),
('ja_JP', 'LOC_KH_ABILITY_VAMPIRE_POST_COMBAT_YIELD_CULTURE_DESCRIPTION', '戦闘に勝利すると、そのユニットの基本 [ICON_Strength] 戦闘力の25%に相当する [ICON_Culture] 文化を得る (速度オンラインで)'),
('ja_JP', 'LOC_KH_MINERVA_TRADE_BONUS_YIELD_FOOD_DESCRIPTION', '国外への[ICON_TradeRoute]交易路から追加の[ICON_FOOD]食料+2が得られる。'),
('ja_JP', 'LOC_KH_MINERVA_TRADE_BONUS_YIELD_PRODUCTION_DESCRIPTION', '国外への[ICON_TradeRoute]交易路から追加の[ICON_PRODUCTION]生産力+2が得られる。'),
('ja_JP', 'LOC_KH_MINERVA_TRADE_BONUS_YIELD_GOLD_DESCRIPTION', '国外への[ICON_TradeRoute]交易路から追加の[ICON_GOLD]ゴールド+2が得られる。'),
('ja_JP', 'LOC_KH_HERMES_CAMPUS_AMENITY_DESCRIPTION', 'キャンパスは[ICON_AMENITIES]快適性+1を得る'),
('ja_JP', 'LOC_KH_HERMES_CAMPUS_HOUSING_DESCRIPTION', 'キャンパスは[ICON_HOUSING]住宅+2を得る);
