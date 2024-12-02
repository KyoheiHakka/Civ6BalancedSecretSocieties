-- RevealPromotions Author: jason DateCreated: 4/19/2021 11:12:18 PM
--------------------------------------------------------------

UPDATE LocalizedText
SET Text = 'レイライン資源の位置が明らかになる。レイラインはすべての専門区域に大きな隣接ボーナスをもたらす。全てのキャンパスは[ICON_HOUSING]+2と[ICON_AMENITIES]+1を得る。キャンパスを持つ都市は追加の区域を建設できる。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_HERMETIC_ORDER_1_DESCRIPTION';

UPDATE LocalizedText
SET Text = '大学に取ってかわる「錬金術協会」が建設可能になる。[ICON_GreatPerson]偉人を獲得した際にレイラインが[ICON_GreatPerson]偉人の区域タイプに対応する産出を1得る。（[ICON_Greatgeneral]大将軍と[ICON_GreatAdmiral]大提督の場合は[ICON_SCIENCE]科学力+1）'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_HERMETIC_ORDER_2_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'レイラインの力を得てアピールが最高のタイルは全ての産出が+1される。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_HERMETIC_ORDER_3_DESCRIPTION';

UPDATE LocalizedText
SET Text = '「オカルト研究」のプロジェクトが解禁される。レイラインの力はさらに強まりアピールが最高のタイルは全ての産出が更に+1される。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_HERMETIC_ORDER_4_DESCRIPTION';


UPDATE LocalizedText
SET Text = '現在の政府に経済政策スロット+1。[ICON_TradeRoute]交易路の上限+1。都市国家に[ICON_TradeRoute]交易路を繋いだ際にその都市国家に無償の[Icon_Envoy]代表団を1つ派遣する。国外への[ICON_TradeRoute]交易路から追加の[ICON_FOOD]食料+2、[ICON_PRODUCTION]生産力+2、[ICON_GOLD]ゴールド+4、[ICON_SCIENCE]科学と[ICON_CULTURE]文化+1が得られる。全ての商業ハブは影響力+1を得る。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_OWLS_OF_MINERVA_1_DESCRIPTION';

UPDATE LocalizedText
SET Text = '現在の政府に外交政策スロット+1。[ICON_TradeRoute]交易路の上限+1。銀行に取ってかわる「黄金の宝物庫」を建設可能になる。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_OWLS_OF_MINERVA_2_DESCRIPTION';

UPDATE LocalizedText
SET Text = '現在の政府にワイルドカード政策スロット+1。[ICON_TradeRoute]交易路の上限+1。スパイ[ICON_SPY]の上限数+2。自文明のスパイが領土内にいる都市は[ICON_AMENITIES]快適性+1、ターン毎の忠誠心+4'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_OWLS_OF_MINERVA_3_DESCRIPTION';

UPDATE LocalizedText
SET Text = '現在の政府に経済政策スロット+1。[ICON_TradeRoute]交易路の上限+1。商業ハブは隣接ボーナスに等しい[ICON_PRODUCTION]生産力を得る。所持ゴールドの3%に相当する[ICON_GOLD]ゴールドを毎ターン得る。(最大1000ゴールドまで)攻撃的ミッションに成功した際に対象都市がターン毎に得られる[ICON_GOLD]ゴールド・[ICON_SCIENCE]科学力・[ICON_CULTURE]文化力・[ICON_FAITH]信仰力の50%を得る。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_OWLS_OF_MINERVA_4_DESCRIPTION';


UPDATE LocalizedText
SET Text = '吸血鬼1ユニットを獲得する。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_SANGUINE_PACT_1_DESCRIPTION';

UPDATE LocalizedText
SET Text = '吸血鬼が「威圧」するようになる。(隣接する敵ユニットの[ICON_Strength]戦闘力-5)。自文明の全てのユニットの[ICON_MOVEMENT]移動力が+1される。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_SANGUINE_PACT_2_DESCRIPTION';

UPDATE LocalizedText
SET Text = '吸血鬼1ユニットを獲得する。吸血鬼は略奪による[ICON_MOVEMENT]移動力の消費が1になる。吸血鬼は倒した敵を捕獲する。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_SANGUINE_PACT_3_DESCRIPTION';

UPDATE LocalizedText
SET Text = '吸血鬼は自文明全体で最大4つまで吸血鬼の城を建設できる。自文明の全ての戦闘ユニットは戦闘に勝利した時に体力を回復する。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_SANGUINE_PACT_4_DESCRIPTION';


UPDATE LocalizedText
SET Text = '「闇の召還」のプロジェクトが解禁される。聖地は隣接ボーナスに等しい[ICON_PRODUCTION]生産力を得る。'
WHERE Tag = 'LOC_GOVERNOR_PROMOTION_VOIDSINGERS_4_DESCRIPTION';


INSERT OR IGNORE INTO LocalizedText (Language, Tag, Text) VALUES
('ja_JP', 'LOC_Ability_KH_VAMPIRE_TRAIT_POST_COMBAT_YIELD_DESCRIPTION', '戦闘に勝利すると、そのユニットの基本 [ICON_Strength] 戦闘力の50%に相当する [ICON_Gold]ゴールド、25%に相当する[ICON_Science]科学と[ICON_Culture]文化を得る (速度オンラインで)'),
('ja_JP', 'LOC_KH_ABILITY_VAMPIRE_POST_COMBAT_YIELD_GOLD_DESCRIPTION', '戦闘に勝利すると、そのユニットの基本 [ICON_Strength] 戦闘力の50%に相当する [ICON_Gold] ゴールドを得る (速度オンラインで)'),
('ja_JP', 'LOC_KH_ABILITY_VAMPIRE_POST_COMBAT_YIELD_SCIENCE_DESCRIPTION', '戦闘に勝利すると、そのユニットの基本 [ICON_Strength] 戦闘力の25%に相当する [ICON_Science] 科学を得る (速度オンラインで)'),
('ja_JP', 'LOC_KH_ABILITY_VAMPIRE_POST_COMBAT_YIELD_CULTURE_DESCRIPTION', '戦闘に勝利すると、そのユニットの基本 [ICON_Strength] 戦闘力の25%に相当する [ICON_Culture] 文化を得る (速度オンラインで)'),
('ja_JP', 'LOC_KH_MINERVA_TRADE_BONUS_YIELD_FOOD_DESCRIPTION', '国外への[ICON_TradeRoute]交易路から追加の[ICON_FOOD]食料+2が得られる。'),
('ja_JP', 'LOC_KH_MINERVA_TRADE_BONUS_YIELD_PRODUCTION_DESCRIPTION', '国外への[ICON_TradeRoute]交易路から追加の[ICON_PRODUCTION]生産力+2が得られる。'),
('ja_JP', 'LOC_KH_MINERVA_TRADE_BONUS_YIELD_GOLD_DESCRIPTION', '国外への[ICON_TradeRoute]交易路から追加の[ICON_GOLD]ゴールド+2が得られる。'),
('ja_JP', 'LOC_KH_HERMES_CAMPUS_AMENITY_DESCRIPTION', 'キャンパスは[ICON_AMENITIES]快適性+1を得る'),
('ja_JP', 'LOC_KH_HERMES_CAMPUS_HOUSING_DESCRIPTION', 'キャンパスは[ICON_HOUSING]住宅+2を得る');
