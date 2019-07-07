/*
 Navicat Premium Data Transfer

 Source Server         : txs
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : ym-ehr-oa

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 07/07/2019 11:34:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dbi_city
-- ----------------------------
DROP TABLE IF EXISTS `dbi_city`;
CREATE TABLE `dbi_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '市编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市名称',
  `mark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市备注',
  `lon` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市经度',
  `lat` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市维度',
  `del_flag` int(2) NULL DEFAULT NULL COMMENT '删除标记',
  `province_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键-所在省名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'DBI-市级表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_city
-- ----------------------------
INSERT INTO `dbi_city` VALUES (1, '北京', '简称“京”，是中华人民共和国的首都、直辖市、国家中心城市、超大城市、国际大都市，全国政治中心、文化中心、国际交往中心、科技创新中心。', '116.41667', '39.91667', 1, '北京市');
INSERT INTO `dbi_city` VALUES (2, '上海', '简称“沪”或“申”，是中国共产党的诞生地，中华人民共和国直辖市，国家中心城市，超大城市，沪杭甬大湾区核心城市。', '121.43333', '34.50000', 1, '上海市');
INSERT INTO `dbi_city` VALUES (3, '天津', '简称津，中华人民共和国直辖市、国家中心城市、超大城市、环渤海地区经济中心、首批沿海开放城市。', '117.20000', '39.13333', 1, '天津市');
INSERT INTO `dbi_city` VALUES (4, '香港', '简称“港”，全称为中华人民共和国香港特别行政区（HKSAR）。', '114.10000', '22.20000', 1, '香港');
INSERT INTO `dbi_city` VALUES (5, '广州', '简称穗，别称羊城、花城，是广东省省会、副省级市、国家中心城市、超大城市、国际大都市、国际商贸中心、国际综合交通枢纽、国家综合性门户城市。', '113.23333', '23.16667', 1, '广东省');
INSERT INTO `dbi_city` VALUES (6, '杭州', '简称“杭”，浙江省省会，位于中国东南沿海、浙江省北部、钱塘江下游、京杭大运河南端，副省级市，是浙江省的政治、经济、文化、教育、交通和金融中心。', '120.20000', '30.26667', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (7, '重庆', '简称渝或巴，是中华人民共和国直辖市、国家中心城市 [2]  、超大城市、国际大都市，长江上游地区的经济、金融、科创、航运和商贸物流中心。', '106.45000', '29.56667', 1, '重庆市');
INSERT INTO `dbi_city` VALUES (8, '福州', '别称榕城，简称“榕”，隶属于福建省，位于福建省东部、闽江下游及沿海地区，是福建省省会，福建省的政治、文化、交通中心，海峡西岸经济区中心城市之一。', '119.30000', '26.08333', 1, '福建省');
INSERT INTO `dbi_city` VALUES (9, '兰州', '别称榕城，简称“榕”，隶属于福建省，位于福建省东部、闽江下游及沿海地区，是福建省省会。', '103.73333', '36.03333', 1, '甘肃省');
INSERT INTO `dbi_city` VALUES (10, '贵阳', '贵州省省会，简称筑、金筑，有“林城”之美誉，因境内贵山之南而得名。', '106.71667', '26.56667', 1, '贵州省');
INSERT INTO `dbi_city` VALUES (11, '长沙', '古称潭州，别名星城，是湖南省省会，长江中游地区重要的中心城市，全国“两型社会”综合配套改革试验区，全国性综合交通枢纽。', '113.00000', '28.21667', 1, '湖南省');
INSERT INTO `dbi_city` VALUES (12, '南京', '简称“宁”，古称金陵、建康，是江苏省会、副省级市、南京都市圈核心城市，国务院批复确定的中国东部地区重要的中心城市、全国重要的科研教育基地和综合交通枢纽。', '118.78333', '32.05000', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (13, '南昌', '简称 “洪”或“昌”，古称豫章、洪都，江西省省会，是中国最早的航空工业基地、重要的综合交通枢纽和光电产业基地，世界级的光伏产业基地。', '115.90000', '28.68333', 1, '江西省');
INSERT INTO `dbi_city` VALUES (14, '沈阳', '简称“沈”，别称盛京、奉天，是辽宁省省会、副省级市、特大城市、沈阳都市圈核心城市。', '123.38333', '41.80000', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (15, '太原', ' 太原,山西省省会,简称“并(bīng)”,别称并州,古称晋阳,也称龙城,是中国优秀旅游城市、国家历史文化名城、国家园林城市、中部地区重要的中心城市。', '112.53333', '37.86667', 1, '山西省');
INSERT INTO `dbi_city` VALUES (16, '成都', '简称蓉，别称蓉城、锦城，是四川省省会，西南地区唯一一个副省级市，特大城市，国家重要的高新技术产业基地、商贸物流中心和综合交通枢纽，西部地区重要的中心城市。', '104.06667', '30.66667', 1, '四川省');
INSERT INTO `dbi_city` VALUES (17, '拉萨', '简称“拉”，是中国西藏自治区的首府，具有高原和民族特色的国际旅游城市，是西藏的政治、经济、文化和科教中心，也是藏传佛教圣地。', '91.00000', '29.05000', 1, '西藏自治区');
INSERT INTO `dbi_city` VALUES (18, '乌鲁木齐', '通称“乌市”，旧称迪化，是新疆维吾尔自治区首府，全疆政治、经济、文化、科教和交通中心', '87.68333', '43.76667', 1, '新疆维吾尔族自治区');
INSERT INTO `dbi_city` VALUES (19, '昆明', '享“春城”之美誉，云南省省会，中国面向东南亚、南亚开放的门户城市，国家历史文化名城', '102.73333', '25.05000', 1, '云南省');
INSERT INTO `dbi_city` VALUES (20, '西安', '古称长安、镐京，是陕西省会、副省级市、关中平原城市群核心城市、中国西部地区重要的国家中心城市，国家重要的科研、教育、工业基地 ', '108.95000', '34.26667', 1, '陕西省');
INSERT INTO `dbi_city` VALUES (21, '西宁', '简称“青”，古称青唐城、西平郡、鄯州，取”西陲安宁“之意，是青海省省会，西北地区重要的中心城市，是青海省的政治、经济、科学、教育、文化、交通、通讯中心和国务院确定的内陆开放城市，也是中央军委西宁联勤保障中心驻地。', '101.75000', '34.26667', 1, '青海省');
INSERT INTO `dbi_city` VALUES (22, '银川', '简称“银”，是宁夏回族自治区的首府，国家历史文化名城，西北地区重要的中心城市', '106.26667', '38.46667', 1, '宁夏回族自治区');
INSERT INTO `dbi_city` VALUES (23, '哈尔滨', '黑龙江省省会、副省级市、特大城市、中国东北地区中心城市之一', '126.63333', '45.75000', 1, '黑龙江省');
INSERT INTO `dbi_city` VALUES (24, '长春', '简称“长”，别称“春城”，是吉林省省会、副省级市、东北亚经济圈中心城市', '125.35000', '43.76667', 1, '吉林省');
INSERT INTO `dbi_city` VALUES (25, '武汉', '简称“汉”，别称“江城”，是湖北省省会、中部六省唯一的副省级市和特大城市，中国中部地区的中心城市。', '114.31667', '30.51667', 1, '湖北省');
INSERT INTO `dbi_city` VALUES (26, '郑州', '河南省省会，是中国中部地区重要的中心城市、国家重要的综合交通枢纽、中原经济区核心城市。', '113.48333', '38.03333', 1, '河南省');
INSERT INTO `dbi_city` VALUES (27, '石家庄', '简称“石”，河北省省会，地处河北省西南部，旧称石门。', '114.48333', '38.03333', 1, '河北省');
INSERT INTO `dbi_city` VALUES (28, '海口', '别称“椰城”，海南省省会，国家“一带一路”战略支点城市，北部湾城市群中心城市。', '110.35000', '20.01667', 1, '海南省');
INSERT INTO `dbi_city` VALUES (29, '澳门', '澳门（葡语Macau、英语Macao），全称为中华人民共和国澳门特别行政区，位于中国大陆东南沿海。', '113.50000', '22.20000', 1, '澳门');
INSERT INTO `dbi_city` VALUES (30, '宜昌', '三峡大坝', '111.3', '30.7', 1, '湖北省');
INSERT INTO `dbi_city` VALUES (31, '海门', '海门市是江苏省南通市代管的县级市,位于江苏省东南部。', '121.15', '31.89', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (32, '鄂尔多斯', '鄂尔多斯（Ordos）蒙古语意为“众多的宫殿”。是内蒙古自治区下辖地级市，位于黄河几字弯河套腹地，地处内蒙古自治区西南部，西北东三面为黄河环绕，南临古长城，毗邻晋陕宁三省区。', '109.781327', '39.608266', 1, '内蒙古自治区');
INSERT INTO `dbi_city` VALUES (33, '招远', '旧称招远县，是山东省烟台市下辖县级市，以出产黄金闻名，被誉为中国金都。', '120.38', '37.35', 1, '山东省');
INSERT INTO `dbi_city` VALUES (34, '舟山', '是我国第一个以群岛建制的地级市，隶属于浙江省，地处中国东部黄金海岸线与长江黄金水道的交汇处，背靠长三角广阔经济腹地', '122.207216', '29.985295', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (35, '齐齐哈尔', '别称鹤城、卜奎。是黑龙江省下辖地级市，也是黑龙江省省域副中心城市，位于黑龙江省西部', '123.97', '47.33', 1, '黑龙江省');
INSERT INTO `dbi_city` VALUES (36, '盐城', '地处中国东部沿海中部，江苏省中东部，位于长江三角洲北翼', '120.13', '33.38', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (37, '赤峰', '蒙东辽西冀北地区（旧热河地区）经济中心、区域中心城市。被自治区政府定位为省域副中心城市', '118.87', '42.28', 1, '内蒙古自治区');
INSERT INTO `dbi_city` VALUES (38, '青岛', '国家计划单列市、副省级城市，简称青，旧称“胶澳”，别称“琴岛”、“岛城”', '120.33', '36.07', 1, '山东省');
INSERT INTO `dbi_city` VALUES (39, '乳山', '因境内“大乳山”而得名，总面积1668平方公里，人口57.4万，辖省级乳山经济开发区和省级银滩旅游度假区、14个镇、1个街道办事处，共601个行政村', '121.52', '36.89', 1, '山东省');
INSERT INTO `dbi_city` VALUES (40, '金昌', '位于东经101°04′35″—102°43′40″，北纬37°47′10″—39°00′30″，甘肃省河西走廊中段，祁连山北麓，阿拉善台地南缘。', '102.188043', '38.520089', 1, '甘肃省');
INSERT INTO `dbi_city` VALUES (41, '泉州', '简称“鲤”，别名“鲤城”、“刺桐城”、“温陵”，地处福建省东南部，北承福州，南接厦门，东望台湾宝岛', '118.58', '24.93', 1, '福建省');
INSERT INTO `dbi_city` VALUES (42, '莱西', '由青岛市代管。莱西是国务院确定的沿海地区对外开放县市，也是中国农村综合实力百强县市之一', '120.53', '36.86', 1, '山东省');
INSERT INTO `dbi_city` VALUES (43, '日照', '日照，周为莒地，秦属琅琊郡，西汉置海曲县，三国魏时属城阳郡并于莒，北魏置梁乡县', '119.46', '35.42', 1, '山东省');
INSERT INTO `dbi_city` VALUES (44, '胶南', '是青岛市的一个市辖区，同时也是中华人民共和国第九个国家级新区青岛西海岸新区', '119.97', '35.88', 1, '山东省');
INSERT INTO `dbi_city` VALUES (45, '南通', '位于江苏东南部，长江三角洲北翼 ，简称“通”，别称静海、崇州、崇川、紫琅、北上海，古称通州', '121.05', '32.08', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (46, '云浮', '又被称为石城，位于广东省的西部，西江南岸，西面与广西交界。地处北回归线南面', '112.02', '22.93', 1, '广东省');
INSERT INTO `dbi_city` VALUES (47, '梅州', '广东省省辖地级市，位于广东省东北部，地处闽、粤、赣三省交界处，东部与福建省龙岩市和漳州市接壤', '116.1', '24.55', 1, '广东省');
INSERT INTO `dbi_city` VALUES (48, '文登', '位于山东半岛东部。经纬度为北纬36°52′~37°23′、东经121°43′~122°19′之间。文登与韩国隔海相望', '122.05', '37.2', 1, '山东省');
INSERT INTO `dbi_city` VALUES (49, '攀枝花', '是全国唯一以花名命名的地级市，位于中国西南川、滇交界部，北距成都749km，南至昆明351km，西连丽江，东接昭通', '101.718637', '26.582347', 1, '四川省');
INSERT INTO `dbi_city` VALUES (50, '威海', '位于山东半岛东端，北、东、南三面濒临黄海，北与辽东半岛相对，东与朝鲜半岛隔海相望，西与山东烟台接壤', '122.1', '37.5', 1, '山东省');
INSERT INTO `dbi_city` VALUES (51, '承德', '处于华北和东北两个地区的过渡地带，西南与南分别挨着北京与天津，背靠蒙辽，省内与秦皇岛、唐山两个沿海城市以及张家口市相邻', '117.93', '40.97', 1, '河北省');
INSERT INTO `dbi_city` VALUES (52, '厦门', '别称鹭岛，简称鹭，位于福建省东南端，西接漳州台商投资区，北邻南安，东南与大小金门和大担岛隔海相望', '118.1', '24.46', 1, '福建省');
INSERT INTO `dbi_city` VALUES (54, '潮州', '位于韩江中下游，是广东省东部沿海的港口城市。东与福建省的诏安县、平和县交界，西与广东省揭阳市的揭东区接壤', '116.63', '23.68', 1, '广东省');
INSERT INTO `dbi_city` VALUES (55, '丹东', '东与朝鲜民主主义人民共和国的新义州市隔江相望，南临黄海，西界鞍山，西南与大连市毗邻，北与本溪市接壤', '124.37', '40.13', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (56, '太仓', '因吴王及春申君在此设立粮仓而得名“太仓”。南朝时为信义县', '121.1', '31.45', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (57, '曲靖', '位于云南省东部，东与贵州省、广西壮族自治区毗邻，南与文山州、红河州接壤，西与昆明市连接，北靠昭通市和贵州省毕节市', '103.79', '25.51', 1, '云南省');
INSERT INTO `dbi_city` VALUES (58, '烟台', '处山东半岛东北部，东连威海，西接潍坊、青岛，南邻黄海，北濒渤海，与辽东半岛对峙，与大连隔海相望', '121.39', '37.52', 1, '山东省');
INSERT INTO `dbi_city` VALUES (59, '瓦房店', '地处北纬39°20′～40°07′，东经121°13′～122°16′；东邻普兰店区为邻，西濒渤海，南与金州区接壤', '121.979603', '39.627114', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (60, '即墨', '素有“青岛后院”之称', '120.45', '36.38', 1, '山东省');
INSERT INTO `dbi_city` VALUES (61, '抚顺', '素有\"煤都\"之称，位于辽宁省东部，东与吉林省接壤，西距省会沈阳市45公里，北与铁岭毗邻，南与本溪相望', '123.97', '41.97', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (62, '玉溪', '为云南省第三大城市。先秦属古滇国地，1997年12月13日，国务院批复同意玉溪撤地设市', '102.52', '24.35', 1, '云南省');
INSERT INTO `dbi_city` VALUES (63, '张家口', '又称“张垣”“武城”，位于河北省西北部，是冀西北地区的中心城市，连接京津、沟通晋蒙的交通枢纽', '114.87', '40.82', 1, '河北省');
INSERT INTO `dbi_city` VALUES (64, '阳泉', '是一座新兴工业城市。2012年建成区面积达到105平方公里，三区融合后城市人口数量为78万', '113.57', '37.85', 1, '山西省');
INSERT INTO `dbi_city` VALUES (65, '莱州', '烟台市西部，西临渤海莱州湾', '119.942327', '37.177017', 1, '山东省');
INSERT INTO `dbi_city` VALUES (66, '湖州', '州是一座具有二千多年历史的江南古城', '120.1', '30.86', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (67, '汕头', '韩江三角洲南端，北接潮州，西邻揭阳，东南濒临南海', '116.69', '23.39', 1, '广东省');
INSERT INTO `dbi_city` VALUES (68, '昆山', '是苏州市下辖县级市，昆山地处上海与苏州之间，北至东北与常熟、太仓两市相连，东与上海嘉定、青浦两区交界', '120.95', '31.39', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (69, '宁波', '有制订地方性法规权限的较大的市，首批沿海开放城市，中国海滨城市，中国大陆综合竞争力前15强城市', '121.56', '29.86', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (70, '湛江', '位于中国大陆最南端雷州半岛上，地处粤桂琼三省区交汇处，南濒南海隔琼州海峡与海南省相望', '110.359377', '21.270708', 1, '广东省');
INSERT INTO `dbi_city` VALUES (71, '揭阳', '地处广东省东部，榕江从市区穿梭而过，东邻汕头市、潮州市，西接汕尾市，南濒南海，北靠梅州市。享有地方立法权', '116.35', '23.55', 1, '广东省');
INSERT INTO `dbi_city` VALUES (72, '荣成', '地处山东半岛最东端，三面环海，海岸线长500公里，是中国大陆距离韩国最近的地方', '122.41', '37.16', 1, '山东省');
INSERT INTO `dbi_city` VALUES (73, '连云港', '因面向连岛、背倚云台山，又因连云港港，得名连云港。  连云港位于中国大陆东部沿海，长江三角洲北翼', '119.16', '34.59', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (74, '葫芦岛', '地处辽宁省西南部，总面积10415平方公里，总人口257万。葫芦岛中心地理方位为东经120°38`，北纬40°56`', '120.836932', '40.711052', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (75, '常熟', '简称虞，因\"土壤膏沃，岁无水旱之灾\"得名\"常熟\"，是一座千年古城', '120.74', '34.64', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (76, '东莞', '又称\"莞城\"，位于珠江口东岸，\"广东四小虎\"之首 ，号称\"世界工厂\"，国际花园城市 ，全国文明城市 ，全国篮球城市', '113.75', '23.04', 1, '广东省');
INSERT INTO `dbi_city` VALUES (77, '河源', '别称槎城，为广东省地级市。位于广东省东北部、东江中上游，东接梅州市、汕尾市，南邻惠州市，西连韶关市、惠州市，北与江西省赣州市交界', '114.68', '23.73', 1, '广东省');
INSERT INTO `dbi_city` VALUES (78, '淮安', '江淮平原东部。地处长江三角洲地区，是苏北重要中心城市，南京都市圈紧密圈层城市。坐落于古淮河与京杭大运河交点', '119.15', '33.5', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (79, '泰州', '简称“泰”。南唐时(公元937年)为州治，取“国泰民安”之意，始名泰州', '119.9', '32.49', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (80, '南宁', '简称邕，古称邕州，中国广西壮族自治区首府，广西第一大城市，广西政治、经济、文化、交通中心，北部湾经济区核心城市', '108.33', '22.84', 1, '广西壮族自治区');
INSERT INTO `dbi_city` VALUES (81, '营口', '地处辽东半岛中枢，渤海东岸，大辽河入海口处。是中国东北近代史上第一个对外开埠的口岸，是大龙邮票的诞生地和发行地之一', '122.18', '40.65', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (83, '江阴', '为无锡市行政代管。江阴古称暨阳，位于长江三角洲，有7000年人类生息史、5000年文明史、2500年文字记载史', '120.26', '31.91', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (84, '蓬莱', '山东省县级市，由烟台市代管。位于山东省东北部、烟台市境北部，北临黄海、渤海', '120.75', '37.8', 1, '山东省');
INSERT INTO `dbi_city` VALUES (85, '韶关', '简称“韶”，古称韶州，得名于丹霞的名山韶石山，取韶石之名改东衡州为韶州，之后历朝沿袭', '113.62', '24.84', 1, '广东省');
INSERT INTO `dbi_city` VALUES (86, '嘉峪关', '城关两侧的城墙横穿沙漠戈壁，北连黑山悬壁长城，南接天下第一墩，是明长城最西端的关口', '98.289152', '39.77313', 1, '甘肃省');
INSERT INTO `dbi_city` VALUES (87, '延安', '简称“延”，位于陕北南半部，北接榆林市，南连咸阳市、铜川市、渭南市，东隔黄河与山西省临汾市、吕梁市相望', '109.47', '36.36', 1, '陕西省');
INSERT INTO `dbi_city` VALUES (89, '清远', '988年1月7日经国务院批准设立，位于中国广东省中部，北江中下游，北面和东北面与韶关市为邻，东南和南面接广州市', '113.01', '23.7', 1, '广东省');
INSERT INTO `dbi_city` VALUES (90, '中山', '前身为1152年设立的香山县；1925年，为纪念孙中山而改名为中山县，位于珠江三角洲中部偏南的西、北江下游出海处', '113.38', '22.52', 1, '广东省');
INSERT INTO `dbi_city` VALUES (91, '寿光', '由潍坊市代管。位于山东省中北部，潍坊市境西北部，渤海莱州湾西南岸', '118.73', '36.86', 1, '山东省');
INSERT INTO `dbi_city` VALUES (92, '盘锦', '辽河三角洲的中心地带，东北邻鞍山市，东南隔大辽河与营口市相望，西北邻锦州市，南临渤海辽东湾', '122.070714', '41.119997', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (93, '长治', '长治”原为潞安府府治所在县名，得名于明嘉靖八年，取长治久安之意。长治地处晋东南，晋冀豫三省交界', '113.08', '36.18', 1, '山西省');
INSERT INTO `dbi_city` VALUES (94, '深圳', '地处广东省南部，珠江三角洲东岸，与香港一水之隔，东临大亚湾和大鹏湾，西濒珠江口和伶仃洋', '114.07', '22.62', 1, '广东省');
INSERT INTO `dbi_city` VALUES (95, '珠海', '地处北纬21°48′～22°27′、东经113°03′～114°19′之间', '113.52', '22.3', 1, '广东省');
INSERT INTO `dbi_city` VALUES (97, '咸阳', '位于陕西省八百里秦川腹地，渭水穿南，嵕山亘北，山水俱阳，故称咸阳', '108.72', '34.36', 1, '陕西省');
INSERT INTO `dbi_city` VALUES (98, '铜川', '地处陕西省中部、关中盆地和陕北高原的接交地带，与延安、渭南、咸阳3个地市毗邻。历史源远流长', '109.11', '35.09', 1, '陕西省');
INSERT INTO `dbi_city` VALUES (99, '平度', '平度市为中国肉类生产第六大县市，青岛市的卫星城，也是山东省面积最大的县级行政区', '119.97', '36.77', 1, '山东省');
INSERT INTO `dbi_city` VALUES (100, '佛山', '辖市，位于广东省中部，地处珠三角腹地，东接广州，南邻中山，历史上是中国天下四聚、四大名镇之一', '119.11', '23.05', 1, '广东省');
INSERT INTO `dbi_city` VALUES (102, '章丘', '位于济南市的东部，地处北纬36°25′-37°09′，东经117°10′-117°35′之间', '117.53', '36.72', 1, '山东省');
INSERT INTO `dbi_city` VALUES (103, '肇庆', '西江干流中下游，东部和东南部与佛山市、江门市接壤，西南与云浮市相连，西及西北与广西壮族自治区梧州市和贺州市交界', '112.44', '23.05', 1, '广东省');
INSERT INTO `dbi_city` VALUES (104, '临汾', '郑州、西安三个省会城市连接中点，区位优势突出，交通通讯便捷。位于山西省西南部', '111.5', '36.08', 1, '山西省');
INSERT INTO `dbi_city` VALUES (105, '吴江', '东接上海市青浦区，南连浙江省嘉兴市和桐乡市，西临太湖，北靠吴中区，东南与浙江省嘉善县毗邻，东北和昆山市接壤', '120.63', '31.16', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (106, '石嘴山', '石嘴山因贺兰山脉与黄河交汇之处“山石突出如嘴”而得名，位于宁夏回族自治区北部', '106.39', '39.04', 1, '宁夏回族自治区');
INSERT INTO `dbi_city` VALUES (107, '苏州', '简称为苏，又称姑苏、平江等，是国家历史文化名城和风景旅游城市，国家高新技术产业基地，长江三角洲重要的中心城市之一', '120.62', '31.32', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (108, '茂名', '省域副中心城市，位于广东省西南部，鉴江中游，东毗阳江，西临湛江，北连云浮和广西壮族自治区，南临南海', '110.88', '21.68', 1, '广东省');
INSERT INTO `dbi_city` VALUES (109, '嘉兴', '位于浙江省东北部、长江三角洲杭嘉湖平原腹地，是长三角城市群、上海大都市圈重要城市、杭州都市圈副中心城市', '120.76', '30.77', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (110, '胶州', '由青岛市代管。位于山东省东部，山东半岛西南部，青岛市境西部，胶州湾西北岸', '120.03336', '36.264622', 1, '山东省');
INSERT INTO `dbi_city` VALUES (111, '张家港', '1986年9月撤销沙洲县，以境内天然良港张家港命名设立张家港市', '120.555821', '31.875428', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (112, '三门峡', '位于河南省最西部， 东与洛阳为邻，南接南阳相接，西连陕西省，北隔黄河与山西省呼应，在历史上是三省交界的经济、文化中心', '111.19', '34.76', 1, '河南省');
INSERT INTO `dbi_city` VALUES (113, '锦州', '西南部、“辽西走廊”东部，是连接华北和东北两大区域的交通枢纽，下辖黑山、北镇、凌海、义县和凌河区、古塔区、太和区、经济技术开发', '121.15', '41.13', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (114, '柳州', '地形为“三江四合，抱城如壶”，故称“壶城”。又叫龙城，龙城的名字源于南朝梁', '109.4', '24.33', 1, '广西壮族自治区');
INSERT INTO `dbi_city` VALUES (115, '三亚', '是中国最南部的热带滨海旅游城市，中国海滨城市，是中国空气质量最好的城市、全国最长寿地区（平均寿命80岁）', '109.511909', '18.252847', 1, '海南省');
INSERT INTO `dbi_city` VALUES (116, '自贡', '“中国历史文化名城”，有“千年盐都”、“恐龙之乡”、“南国灯城”和“美食之府”之称', '104.778442', '29.33903', 1, '四川省');
INSERT INTO `dbi_city` VALUES (118, '泸州', '1983年3月3日国务院批复同意将地辖泸州市改为省辖市', '105.39', '28.91', 1, '四川省');
INSERT INTO `dbi_city` VALUES (119, '西宁', '古称西平郡、青唐城，取\"西陲安宁\"之意，是青海省第一大城市，亦是整个青藏高原最大的城市', '101.74', '36.56', 1, '青海省');
INSERT INTO `dbi_city` VALUES (120, '宜宾', '地处川、滇、黔三省结合部，因金沙江、岷江在此汇合成长江，素有“长江第一城”之美称', '104.56', '29.77', 1, '四川盆');
INSERT INTO `dbi_city` VALUES (121, '呼和浩特', '是内蒙古的政治、经济、文化、科教和金融中心，呼包银城市群核心城市，呼包鄂城市群中心城市', '111.65', '40.82', 1, '内蒙古自治区');
INSERT INTO `dbi_city` VALUES (122, '大同', '是中国首批24个国家历史文化名城之一、中国首批13个较大的市之一、中国九大古都之一、国家新能源示范城市、中国优秀旅游城市', '113.3', '40.12', 1, '山西省');
INSERT INTO `dbi_city` VALUES (123, '镇江', '位于江苏省西南部，中国东部沿海、江苏南部，古时称\"润州\"，民国时期为江苏省省会', '119.44', '32.2', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (124, '桂林', '是世界著名的旅游城市、中国首批国家历史文化名城、中国优秀旅游城市，其境内的山水风光举世闻名，千百年来享有\"桂林山水甲天下\"的美誉', '110.28', '25.29', 1, '广西壮族自治区');
INSERT INTO `dbi_city` VALUES (125, '宜兴', '无锡市代管。秦始皇二十六年（公元前221年）建县，改荆邑为阳羡县。隋开皇九年（589年）改称义兴', '119.82', '31.36', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (126, '北海', '地处广西壮族自治区南端，北部湾东北岸。位于东经108°50′45″～109°47′28″，北纬20°26′～21°55′3', '109.12', '21.49', 1, '广西壮族自治区');
INSERT INTO `dbi_city` VALUES (127, '金坛', '位于北纬31°33′42″~31°53′22″，东径119°17′45″~119°44′59″，为宁(南京)、沪(上海)、杭(杭州)三角地带之中枢', '119.56', '31.74', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (128, '东营', '成立于1983年10月，是黄河三角洲的中心城市。位于山东省东北部、黄河入海口的三角洲地带，东经118º5´，北纬38º15´', '119.49', '37.46', 1, '山东省');
INSERT INTO `dbi_city` VALUES (129, '牡丹江', '位于黑龙江省东南部，是黑龙江省省域副中心城市，也是东北东部地区重要的区域中心城市和黑龙江的重要开放门户', '129.58', '44.6', 1, '黑龙江省');
INSERT INTO `dbi_city` VALUES (130, '遵义', '是国家全域旅游示范区。南临贵阳市，北倚重庆市，西接四川省，是昆筑北上和川渝南下之咽喉', '106.9', '27.7', 1, '贵州省');
INSERT INTO `dbi_city` VALUES (131, '绍兴', '绍兴从新石器时代中期的小黄山文化开始，至今已有约9000年历史', '120.58', '30.01', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (132, '扬州', '古称广陵、江都、维扬，建城史可上溯至公元前486年，扬州历史悠久，文化璀璨，商业昌盛，人杰地灵。地处江苏省中部，长江与京杭大运河交汇处', '119.42', '32.39', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (133, '常州', '常州是一座有着3200多年历史的文化古城。春秋末期（前547年），吴王寿梦第四子季札封邑延陵', '119.95', '32.79', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (134, '潍坊', '古称“潍县”，又名“鸢都”，位于山东半岛的中部，山东省下辖地级市，与青岛、日照、淄博、烟台、临沂等地相邻', '119.1', '36.62', 1, '山东省');
INSERT INTO `dbi_city` VALUES (135, '台州', '地理位于浙江省中部沿海，东濒东海，北靠绍兴市、宁波市，南邻温州市，西与金华市和丽水市毗邻', '121.420757', '28.656386', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (136, '滨州', '地处黄河三角洲高效生态经济区、山东半岛蓝色经济区和环渤海经济圈', '118.03', '37.36', 1, '山东省');
INSERT INTO `dbi_city` VALUES (137, '无锡', '称“锡”，古称梁溪、金匮，被誉为“太湖明珠”。无锡市位于长江三角洲平原腹地，江苏南部，太湖流域的交通中枢，京杭大运河从中穿过', '120.29', '31.59', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (138, '本溪', '是国务院批准的具有地方立法权的市，是辽宁中部城市群的中心城市，沈阳经济区副中心城市。本溪市位于辽宁省东南部', '123.73', '41.3', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (139, '克拉玛依', '是国家重要的石油石化基地、新疆重点建设的新型工业化城市，克拉玛依地处准噶尔盆地西北缘', '84.77', '45.59', 1, '新疆维吾尔自治区');
INSERT INTO `dbi_city` VALUES (140, '渭南', '古称下邽、莲勺。位于东经108°50′-110°38′和北纬34°13′-35°52′之间，地处陕西关中渭河平原东部，是陕西省的“东大门”', '109.5', '34.52', 1, '陕西省');
INSERT INTO `dbi_city` VALUES (141, '马鞍山', '简称“马”，中国安徽省地级市，安徽东部，苏皖交汇地区，1956年10月12日设立，现辖3区3县，总面积4049平方公里。2015年全市户籍人口227.7万人', '118.48', '31.56', 1, '安徽省');
INSERT INTO `dbi_city` VALUES (142, '宝鸡', '古称“陈仓”、“雍城”，典故“明修栈道，暗度陈仓”发源地，誉称“炎帝故里、青铜器之乡”。公元757年因“石鸡啼鸣”之祥瑞改称宝鸡', '107.15', '34.38', 1, '陕西省');
INSERT INTO `dbi_city` VALUES (143, '焦作', '北依太行山，与山西晋城市接壤，南临滔滔黄河，与郑州市、洛阳市隔河相望，东临新乡市，西临济源', '113.21', '35.24', 1, '河南省');
INSERT INTO `dbi_city` VALUES (145, '徐州', '地处江苏省西北部、华北平原东南部，长江三角洲北翼，北倚微山湖，西连萧县，东临连云港，南接宿迁', '117.2', '34.26', 1, '江苏省');
INSERT INTO `dbi_city` VALUES (146, '衡水', '位于河北省东南部。 大禹治水划天下为九州，现衡水所辖冀州为九州之首。 河北省称冀，也缘于此', '115.72', '37.72', 1, '河北省');
INSERT INTO `dbi_city` VALUES (147, '包头', '有地方立法权的较大的市，是内蒙古的制造业、工业中心及最大城市，呼包银经济带、呼包鄂城市群的中心城市', '110', '40.58', 1, '内蒙古自治区');
INSERT INTO `dbi_city` VALUES (148, '绵阳', '位于四川盆地西北部，涪江中上游地带。东邻广元市的青川县、剑阁县和南充市的南部县、西充县', '104.73', '31.48', 1, '四川省');
INSERT INTO `dbi_city` VALUES (149, '枣庄', '处山东省南部，东依沂蒙山，西濒微山湖，南接华东门户徐州，北临孔孟之乡-济宁。枣庄因多枣树而得名', '117.57', '34.86', 1, '山东省');
INSERT INTO `dbi_city` VALUES (150, '杭州', '位于中国东南沿海、浙江省北部、钱塘江下游、京杭大运河南端，是浙江省的政治、经济、文化、教育', '120.19', '30.26', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (151, '淄博', '地处黄河三角洲高效生态经济区、山东半岛蓝色经济区两大国家战略经济区与省会城市群经济圈的重要交汇处', '118.05', '36.78', 1, '山东省');
INSERT INTO `dbi_city` VALUES (152, '鞍山', '辽宁省第三大城市，是国务院批准的具有地方立法权的较大的市，沈阳经济区副中心城市', '122.85', '41.12', 1, '辽宁省');
INSERT INTO `dbi_city` VALUES (154, '库尔勒', '新疆巴音郭楞蒙古自治州的首府，成立于1979年9月30日', '86.06', '41.68', 1, '新疆维吾尔自治区');
INSERT INTO `dbi_city` VALUES (155, '安阳', '简称殷、邺，是河南省下辖地级市，位于河南省最北部，地处山西、河北、河南三省交汇处，西倚太行山，东连华北平原，北邻邯郸，南接鹤壁', '114.35', '36.1', 1, '河南省');
INSERT INTO `dbi_city` VALUES (156, '开封', '简称汴，古称东京、汴京，为八朝古都 。位于黄河中下游平原东部，地处河南省中东部，东与商丘相连，西与郑州毗邻，南接许昌和周口', '114.35', '34.79', 1, '河南省');
INSERT INTO `dbi_city` VALUES (157, '济南', '简称“济”别称“泉城”山东省省会、全国十五个副省级城市之一解放军五大战区之一的北部战区陆军机关驻地 是山东政治、文化、教育中心济南因境内泉', '117', '36.65', 1, '山东省');
INSERT INTO `dbi_city` VALUES (158, '德阳', '位于成都平原东北部。德阳市是成渝经济区重要区域中心城市和成都经济区重要增长极', '104.37', '31.13', 1, '四川省');
INSERT INTO `dbi_city` VALUES (159, '温州', '简称\"瓯\";浙江省三大中心城市之一。温州历史悠久，有2000余年的建城历史。是中国民营经济发展的先发地区与改革开放的前沿阵地', '120.65', '28.01', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (160, '九江', '古称柴桑、江州、浔阳，是一座有着2200多年历史的江南名城', '115.97', '29.71', 1, '江西省');
INSERT INTO `dbi_city` VALUES (161, '邯郸', '邯郸的城邑，肇起于商殷，邯郸古城距今已有3100多年的建城历史', '114.47', '36.6', 1, '河北省');
INSERT INTO `dbi_city` VALUES (162, '临安', '东汉建安 16年（211年）分余杭置临水县，晋武帝太康元年（280年）更名临安县，1996年12月撤县建市', '119.72', '30.23', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (163, '沧州', '地处河北省东南，东临渤海，北靠天津，与山东半岛及辽东半岛隔海相望，距北京200公里，距天津100公里', '116.83', '38.33', 1, '河北省');
INSERT INTO `dbi_city` VALUES (165, '南充', '南充距今已有2200年历史，自古有“丝绸之都”、“水果之州”的美称，地处四川盆地东北部，嘉陵江中游', '106.110698', '30.837793', 1, '四川省');
INSERT INTO `dbi_city` VALUES (166, '富阳', '位于杭州的西南面，是一座历史悠久的城市。富阳地处丘陵，是一个“八山半水分半田”的半山区', '119.95', '30.07', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (167, '泰安', '位于山东省中部，地处东经116°02′至117°59′、北纬35°38′至36°28′之间，东西长约176.6公里', '117.13', '36.18', 1, '山东省');
INSERT INTO `dbi_city` VALUES (168, '诸暨', '北邻杭州，东接绍兴，南临义乌。诸暨历史悠久、人文荟萃，是越国故地、西施故里，诸暨为古越民族聚居地之一', '120.23', '29.71', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (169, '郑州', '地处华北平原南部，河南省中部偏北，黄河下游。 北临黄河，西依嵩山，东南为广阔的黄淮平原', '113.65', '34.76', 1, '河南省');
INSERT INTO `dbi_city` VALUES (171, '芜湖', '简称为“芜”，别称江城，安徽省地级市、双核城市。地处长三角西南部，是华东重要的工业基地、科教基地和综合交通枢纽', '118.38', '31.33', 1, '安徽省');
INSERT INTO `dbi_city` VALUES (172, '唐山', '位于河北省东部、华北平原东北部，南临渤海，北依燕山，毗邻京津，地处华北与东北通道的咽喉要地', '118.02', '39.63', 1, '河北省');
INSERT INTO `dbi_city` VALUES (173, '平顶山', '地理坐标介于北纬33°08′至34°20′、东经112°14′至113°45′ 之间。国家重要的能源原材料工业基地', '113.29', '33.75', 1, '河南省');
INSERT INTO `dbi_city` VALUES (174, '邢台', '简称“邢”，旧称邢州、顺德，位于京津冀区域冀中南地区中心，西依太行山与山西毗邻，东沿卫运河与山东相望，北连石家庄、衡水，南接邯郸', '114.48', '37.05', 1, '河北省');
INSERT INTO `dbi_city` VALUES (175, '德州', '位于山东省西北部、黄河下游冲积平原，是山东省的西北大门。北接河北省沧州市，南接省会济南市、聊城市，西邻河北省衡水市', '116.29', '37.45', 1, '山东省');
INSERT INTO `dbi_city` VALUES (177, '荆州', '是春秋战国时楚国都城所在地。位于湖北省中南部，长江中游两岸，江汉平原腹地，是国务院公布的首批24座中国历史文化名城之一，中国优秀旅游城市，国家园林城市，长江中游重要的港口城市，中南地区重要的工业基地和轻纺织基地，素有“长江经济带钢腰”之称', '112.239741', '30.335165', 1, '湖北省');
INSERT INTO `dbi_city` VALUES (178, '义乌', '义乌位于浙江省中部，地处金衢盆地东部，市境东、南、北三面群山环抱，义乌南北长58.15公里，东西宽44.41公里，面积1,105平方公里', '120.06', '29.32', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (179, '丽水', '丽水被誉为“浙江绿谷”。境内海拔1000米以上的山峰有3573座。龙泉市凤阳山黄茅尖海拔1929米，庆元县百山祖海拔1856.7米，分别为浙江省第一、第二高峰', '119.92', '28.45', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (180, '洛阳', '洛阳古称雒阳、豫州，位于河南西部、黄河中游，因地处洛河之阳而得名，是国务院首批公布的历史文化名城，也是中部地区重要的工业城市', '112.44', '34.7', 1, '河南省');
INSERT INTO `dbi_city` VALUES (181, '秦皇岛', '世界级汽车轮毂制造基地和中国最大铝制品生产加工基地，北方最大粮油加工基地，中国首批沿海开放城市，中国海滨城市，东北亚重要的对外贸易口岸，地处环渤海经济圈中心地带，是东北与华北两大经济区的结合部。秦皇岛港是世界第一大能源输出港，有国民经济“晴雨表”之称', '119.57', '39.95', 1, '河北省');
INSERT INTO `dbi_city` VALUES (182, '株洲', '株洲市辖天元区、芦淞区、荷塘区、石峰区4区，株洲县、攸县、茶陵县、炎陵县4县，代管县级醴陵市，此外设立有云龙示范区', '113.16', '27.83', 1, '湖南省');
INSERT INTO `dbi_city` VALUES (183, '莱芜', '为山东省地级市，历来是兵家必争之地，春秋时期在这里发生过“长勺之战”，解放战争时期华东野战军曾在此发动了“莱芜战役”', '117.67', '36.19', 1, '山东省');
INSERT INTO `dbi_city` VALUES (184, '常德', '湖南省省域副中心城市，环洞庭湖生态经济圈核心城市之一，也是长株潭3+5城市群之一。位于湖南北部，江南洞庭湖西侧，武陵山下，史称\"川黔咽喉，云贵门户\"，是一座拥有二千年历史的文化名城，是国家公路运输枢纽城市、湘西北铁路枢纽城市', '111.69', '29.05', 1, '湖南省');
INSERT INTO `dbi_city` VALUES (185, '保定', '自古是“北控三关、南达九省、地连四部、雄冠中州”的“通衢之地”。保定曾是直隶省会，直隶总督驻地，也是河北省最早的省会，从1669年至1968年，是河北的政治、经济、文化中心，为京津冀地区中心城市之一', '115.48', '38.85', 1, '河北省');
INSERT INTO `dbi_city` VALUES (186, '湘潭', '与长沙、株洲同为国家长株潭城市群“两型社会”综合配套改革试验区中心城市，是中国优秀旅游城市、国家园林城市、湖南省历史文化名城、全国文明城市创建工作先进市', '112.91', '27.87', 1, '湖南省');
INSERT INTO `dbi_city` VALUES (187, '金华', '坐标东经119゜14′-120゜46′30”，北纬28°32′－29°41′，境辖设婺城区、金东区2个市辖区，兰溪市、义乌市、东阳市、永康市4县级市以及武义县、浦江县、磐安县3县，总面积10942平方公里。国家级历史文化名城、中国十佳宜居城市之一', '119.64', '29.12', 1, '浙江省');
INSERT INTO `dbi_city` VALUES (188, '岳阳', '位于江南洞庭湖之滨，依长江、纳三湘四水，江湖交汇，是一个资源丰富、区位优越、风景优美的地方。不仅是中国南北东西交通要道、国务院首批沿江开放之重地，且是长江中游重要的区域中心城市、湖南首位门户城市', '113.09', '29.37', 1, '湖南省');
INSERT INTO `dbi_city` VALUES (190, '廊坊', '位于河北省中部偏东，地处北京、天津两大直辖市之间，被誉为\"京津走廊上的明珠\"。辖广阳、安次两个区，大厂、香河、永清、固安、文安、大城六个县和廊坊经济技术开发区，代管三河、霸州两个县级市', '116.7', '39.53', 1, '河北省');
INSERT INTO `dbi_city` VALUES (191, '合肥', '是安徽省省会、合肥都市圈中心城市，皖江城市带核心城市，是国务院批准确定的中国东部地区重要中心城市、全国重要的科研教育基地和综合交通枢纽', '117.27', '31.86', 1, '安徽省');
INSERT INTO `dbi_city` VALUES (192, '菏泽', '位于山东省西南部，鲁苏豫皖四省交界地带，东与济宁市相邻，东南与江苏省徐州市、安徽省宿州市接壤，南与河南省商丘市相连，西与河南省开封市、新乡市毗邻，北接河南省濮阳市', '115.480656', '35.23375', 1, '山东省');
INSERT INTO `dbi_city` VALUES (193, '大庆', '是黑龙江省下辖的地级市，位于黑龙江省西南部，是黑龙江省省域副中心城市，综合实力位列全国地级城市第11位，中国城市财力50强，新二线城市', '125.03', '46.58', 1, '黑龙江省');
INSERT INTO `dbi_city` VALUES (194, '测试1', '111', '222', '222', 0, '黑龙江省');
INSERT INTO `dbi_city` VALUES (195, '测试2', '222', '222', '222', 0, '黑龙江省');
INSERT INTO `dbi_city` VALUES (196, '测试3', '333', '333', '333', 0, '黑龙江省');
INSERT INTO `dbi_city` VALUES (197, '测试5', '555', '555', '555', 0, NULL);
INSERT INTO `dbi_city` VALUES (198, '测试6', '666', '66666', '66666', 1, NULL);
INSERT INTO `dbi_city` VALUES (199, '武汉市', '233333', '233333', '233333', 0, NULL);
INSERT INTO `dbi_city` VALUES (200, '测试', '233', '2333', '2333', NULL, NULL);
INSERT INTO `dbi_city` VALUES (201, '测试33', '33', '33', '33', NULL, NULL);
INSERT INTO `dbi_city` VALUES (202, '测试', '2222', '22222', '22222', 1, NULL);
INSERT INTO `dbi_city` VALUES (203, '测试', '222', '333', '444', 1, NULL);
INSERT INTO `dbi_city` VALUES (204, '测试', '1', '2', '3', 0, '湖北省');
INSERT INTO `dbi_city` VALUES (205, '测试2', '2', '22', '22', 0, '湖北省');
INSERT INTO `dbi_city` VALUES (206, '武汉市', '测试', '333', '333', 0, '湖北省');
INSERT INTO `dbi_city` VALUES (207, '测试1', '11', '22', '11', 0, '湖北省');

-- ----------------------------
-- Table structure for dbi_customer_map
-- ----------------------------
DROP TABLE IF EXISTS `dbi_customer_map`;
CREATE TABLE `dbi_customer_map`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` date NULL DEFAULT NULL COMMENT '年份',
  `city` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户城市',
  `value` int(11) NULL DEFAULT NULL COMMENT '该城市客户人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 359 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_customer_map
-- ----------------------------
INSERT INTO `dbi_customer_map` VALUES (11, '2018-01-01', '长沙', 1251);
INSERT INTO `dbi_customer_map` VALUES (25, '2018-01-01', '武汉', 895);
INSERT INTO `dbi_customer_map` VALUES (28, '2018-01-01', '海口', 1071);
INSERT INTO `dbi_customer_map` VALUES (30, '2018-01-01', '宜昌', 1290);
INSERT INTO `dbi_customer_map` VALUES (173, '2018-01-01', '常德', 147);
INSERT INTO `dbi_customer_map` VALUES (174, '2018-01-01', '保定', 1313);
INSERT INTO `dbi_customer_map` VALUES (175, '2018-01-01', '湘潭', 1353);
INSERT INTO `dbi_customer_map` VALUES (176, '2018-01-01', '金华', 1427);
INSERT INTO `dbi_customer_map` VALUES (177, '2018-01-01', '岳阳', 535);
INSERT INTO `dbi_customer_map` VALUES (178, '2018-01-01', '廊坊', 506);
INSERT INTO `dbi_customer_map` VALUES (179, '2018-01-01', '合肥', 391);
INSERT INTO `dbi_customer_map` VALUES (180, '2018-01-01', '菏泽', 1430);
INSERT INTO `dbi_customer_map` VALUES (181, '2018-02-01', '湖州', 550);
INSERT INTO `dbi_customer_map` VALUES (182, '2018-02-01', '长沙', 231);
INSERT INTO `dbi_customer_map` VALUES (183, '2018-02-01', '嘉兴', 225);
INSERT INTO `dbi_customer_map` VALUES (184, '2018-02-01', '寿光', 456);
INSERT INTO `dbi_customer_map` VALUES (185, '2018-02-01', '牡丹江', 867);
INSERT INTO `dbi_customer_map` VALUES (186, '2018-02-01', '铜川', 656);
INSERT INTO `dbi_customer_map` VALUES (187, '2018-02-01', '克拉玛依', 56);
INSERT INTO `dbi_customer_map` VALUES (188, '2018-02-01', '北海', 678);
INSERT INTO `dbi_customer_map` VALUES (189, '2018-02-01', '长治', 89);
INSERT INTO `dbi_customer_map` VALUES (190, '2018-02-01', '德州', 99);
INSERT INTO `dbi_customer_map` VALUES (191, '2018-02-01', '常熟', 54);
INSERT INTO `dbi_customer_map` VALUES (192, '2018-02-01', '廊坊', 56);
INSERT INTO `dbi_customer_map` VALUES (193, '2018-02-01', '呼和浩特', 686);
INSERT INTO `dbi_customer_map` VALUES (194, '2018-02-01', '开封', 85);
INSERT INTO `dbi_customer_map` VALUES (195, '2018-03-01', '哈尔滨', 85);
INSERT INTO `dbi_customer_map` VALUES (196, '2018-03-01', '江阴', 545);
INSERT INTO `dbi_customer_map` VALUES (197, '2018-03-01', '玉溪', 897);
INSERT INTO `dbi_customer_map` VALUES (198, '2018-03-01', '西宁', 34);
INSERT INTO `dbi_customer_map` VALUES (199, '2018-03-01', '昆明', 423);
INSERT INTO `dbi_customer_map` VALUES (200, '2018-03-01', '成都', 334);
INSERT INTO `dbi_customer_map` VALUES (201, '2018-03-01', '泉州', 323);
INSERT INTO `dbi_customer_map` VALUES (202, '2018-03-01', '滨州', 85);
INSERT INTO `dbi_customer_map` VALUES (203, '2018-03-01', '鄂尔多斯', 456);
INSERT INTO `dbi_customer_map` VALUES (204, '2018-03-01', '张家港', 234);
INSERT INTO `dbi_customer_map` VALUES (205, '2018-03-01', '库尔勒', 342);
INSERT INTO `dbi_customer_map` VALUES (206, '2018-03-01', '宁波', 464);
INSERT INTO `dbi_customer_map` VALUES (207, '2018-03-01', '咸阳', 233);
INSERT INTO `dbi_customer_map` VALUES (208, '2018-03-01', '攀枝花', 642);
INSERT INTO `dbi_customer_map` VALUES (209, '2018-04-01', '本溪', 792);
INSERT INTO `dbi_customer_map` VALUES (210, '2018-04-01', '连云港', 921);
INSERT INTO `dbi_customer_map` VALUES (211, '2018-04-01', '揭阳', 548);
INSERT INTO `dbi_customer_map` VALUES (212, '2018-04-01', '呼和浩特', 374);
INSERT INTO `dbi_customer_map` VALUES (213, '2018-04-01', '金昌', 754);
INSERT INTO `dbi_customer_map` VALUES (214, '2018-04-01', '烟台', 914);
INSERT INTO `dbi_customer_map` VALUES (215, '2018-04-01', '北京', 621);
INSERT INTO `dbi_customer_map` VALUES (216, '2018-04-01', '葫芦岛', 278);
INSERT INTO `dbi_customer_map` VALUES (217, '2018-04-01', '安阳', 542);
INSERT INTO `dbi_customer_map` VALUES (218, '2018-04-01', '平顶山', 695);
INSERT INTO `dbi_customer_map` VALUES (219, '2018-04-01', '咸阳', 661);
INSERT INTO `dbi_customer_map` VALUES (220, '2018-04-01', '南昌', 167);
INSERT INTO `dbi_customer_map` VALUES (221, '2018-04-01', '成都', 233);
INSERT INTO `dbi_customer_map` VALUES (222, '2018-04-01', '芜湖', 354);
INSERT INTO `dbi_customer_map` VALUES (223, '2018-04-01', '梅州', 282);
INSERT INTO `dbi_customer_map` VALUES (224, '2018-05-01', '哈尔滨', 857);
INSERT INTO `dbi_customer_map` VALUES (225, '2018-05-01', '西宁', 416);
INSERT INTO `dbi_customer_map` VALUES (226, '2018-05-01', '天津', 823);
INSERT INTO `dbi_customer_map` VALUES (227, '2018-05-01', '乌鲁木齐', 958);
INSERT INTO `dbi_customer_map` VALUES (228, '2018-05-01', '温州', 24);
INSERT INTO `dbi_customer_map` VALUES (229, '2018-05-01', '柳州', 749);
INSERT INTO `dbi_customer_map` VALUES (230, '2018-05-01', '衡水', 930);
INSERT INTO `dbi_customer_map` VALUES (231, '2018-05-01', '长春', 472);
INSERT INTO `dbi_customer_map` VALUES (232, '2018-05-01', '武汉', 767);
INSERT INTO `dbi_customer_map` VALUES (233, '2018-05-01', '泉州', 171);
INSERT INTO `dbi_customer_map` VALUES (234, '2018-05-01', '吴江', 52);
INSERT INTO `dbi_customer_map` VALUES (235, '2018-05-01', '营口', 272);
INSERT INTO `dbi_customer_map` VALUES (236, '2018-05-01', '大同', 253);
INSERT INTO `dbi_customer_map` VALUES (237, '2018-05-01', '邯郸', 344);
INSERT INTO `dbi_customer_map` VALUES (238, '2018-05-01', '廊坊', 708);
INSERT INTO `dbi_customer_map` VALUES (239, '2018-06-01', '阳泉', 901);
INSERT INTO `dbi_customer_map` VALUES (240, '2018-06-01', '丹东', 639);
INSERT INTO `dbi_customer_map` VALUES (241, '2018-06-01', '常州', 386);
INSERT INTO `dbi_customer_map` VALUES (242, '2018-06-01', '张家港', 568);
INSERT INTO `dbi_customer_map` VALUES (243, '2018-06-01', '金坛', 827);
INSERT INTO `dbi_customer_map` VALUES (244, '2018-06-01', '绵阳', 545);
INSERT INTO `dbi_customer_map` VALUES (245, '2018-06-01', '宜宾', 342);
INSERT INTO `dbi_customer_map` VALUES (246, '2018-06-01', '泰安', 836);
INSERT INTO `dbi_customer_map` VALUES (247, '2018-06-01', '潍坊', 178);
INSERT INTO `dbi_customer_map` VALUES (248, '2018-06-01', '荆州', 155);
INSERT INTO `dbi_customer_map` VALUES (249, '2018-06-01', '武汉', 675);
INSERT INTO `dbi_customer_map` VALUES (250, '2018-06-01', '临汾', 595);
INSERT INTO `dbi_customer_map` VALUES (251, '2018-06-01', '文登', 381);
INSERT INTO `dbi_customer_map` VALUES (252, '2018-06-01', '大同', 650);
INSERT INTO `dbi_customer_map` VALUES (253, '2018-06-01', '桂林', 117);
INSERT INTO `dbi_customer_map` VALUES (254, '2018-07-01', '焦作', 577);
INSERT INTO `dbi_customer_map` VALUES (255, '2018-07-01', '大同', 528);
INSERT INTO `dbi_customer_map` VALUES (256, '2018-07-01', '芜湖', 664);
INSERT INTO `dbi_customer_map` VALUES (257, '2018-07-01', '绵阳', 471);
INSERT INTO `dbi_customer_map` VALUES (258, '2018-07-01', '邯郸', 66);
INSERT INTO `dbi_customer_map` VALUES (259, '2018-07-01', '苏州', 502);
INSERT INTO `dbi_customer_map` VALUES (260, '2018-07-01', '三门峡', 176);
INSERT INTO `dbi_customer_map` VALUES (261, '2018-07-01', '福州', 830);
INSERT INTO `dbi_customer_map` VALUES (262, '2018-07-01', '临安', 489);
INSERT INTO `dbi_customer_map` VALUES (263, '2018-07-01', '合肥', 971);
INSERT INTO `dbi_customer_map` VALUES (264, '2018-07-01', '镇江', 791);
INSERT INTO `dbi_customer_map` VALUES (265, '2018-07-01', '九江', 760);
INSERT INTO `dbi_customer_map` VALUES (266, '2018-07-01', '克拉玛依', 962);
INSERT INTO `dbi_customer_map` VALUES (267, '2018-07-01', '邯郸', 525);
INSERT INTO `dbi_customer_map` VALUES (268, '2018-07-01', '平度', 75);
INSERT INTO `dbi_customer_map` VALUES (269, '2018-08-01', '拉萨', 971);
INSERT INTO `dbi_customer_map` VALUES (270, '2018-08-01', '鞍山', 714);
INSERT INTO `dbi_customer_map` VALUES (271, '2018-08-01', '九江', 338);
INSERT INTO `dbi_customer_map` VALUES (272, '2018-08-01', '延安', 200);
INSERT INTO `dbi_customer_map` VALUES (273, '2018-08-01', '滨州', 159);
INSERT INTO `dbi_customer_map` VALUES (274, '2018-08-01', '诸暨', 726);
INSERT INTO `dbi_customer_map` VALUES (275, '2018-08-01', '湛江', 407);
INSERT INTO `dbi_customer_map` VALUES (276, '2018-08-01', '常州', 800);
INSERT INTO `dbi_customer_map` VALUES (277, '2018-08-01', '香港', 234);
INSERT INTO `dbi_customer_map` VALUES (278, '2018-08-01', '宜昌', 71);
INSERT INTO `dbi_customer_map` VALUES (279, '2018-08-01', '阳泉', 347);
INSERT INTO `dbi_customer_map` VALUES (280, '2018-08-01', '株洲', 642);
INSERT INTO `dbi_customer_map` VALUES (281, '2018-08-01', '太仓', 220);
INSERT INTO `dbi_customer_map` VALUES (282, '2018-08-01', '石家庄', 799);
INSERT INTO `dbi_customer_map` VALUES (283, '2018-08-01', '郑州', 982);
INSERT INTO `dbi_customer_map` VALUES (284, '2018-09-01', '遵义', 287);
INSERT INTO `dbi_customer_map` VALUES (285, '2018-09-01', '清远', 954);
INSERT INTO `dbi_customer_map` VALUES (286, '2018-09-01', '贵阳', 685);
INSERT INTO `dbi_customer_map` VALUES (287, '2018-09-01', '莱西', 919);
INSERT INTO `dbi_customer_map` VALUES (288, '2018-09-01', '温州', 757);
INSERT INTO `dbi_customer_map` VALUES (289, '2018-09-01', '南充', 602);
INSERT INTO `dbi_customer_map` VALUES (290, '2018-09-01', '重庆', 361);
INSERT INTO `dbi_customer_map` VALUES (291, '2018-09-01', '玉溪', 683);
INSERT INTO `dbi_customer_map` VALUES (292, '2018-09-01', '茂名', 947);
INSERT INTO `dbi_customer_map` VALUES (293, '2018-09-01', '泰安', 395);
INSERT INTO `dbi_customer_map` VALUES (294, '2018-09-01', '北海', 630);
INSERT INTO `dbi_customer_map` VALUES (295, '2018-09-01', '金坛', 939);
INSERT INTO `dbi_customer_map` VALUES (296, '2018-09-01', '沧州', 242);
INSERT INTO `dbi_customer_map` VALUES (297, '2018-09-01', '鞍山', 420);
INSERT INTO `dbi_customer_map` VALUES (298, '2018-09-01', '海口', 410);
INSERT INTO `dbi_customer_map` VALUES (299, '2018-10-01', '临安', 317);
INSERT INTO `dbi_customer_map` VALUES (300, '2018-10-01', '章丘', 59);
INSERT INTO `dbi_customer_map` VALUES (301, '2018-10-01', '武汉', 139);
INSERT INTO `dbi_customer_map` VALUES (302, '2018-10-01', '常州', 114);
INSERT INTO `dbi_customer_map` VALUES (303, '2018-10-01', '舟山', 736);
INSERT INTO `dbi_customer_map` VALUES (304, '2018-10-01', '西安', 131);
INSERT INTO `dbi_customer_map` VALUES (305, '2018-10-01', '保定', 30);
INSERT INTO `dbi_customer_map` VALUES (306, '2018-10-01', '洛阳', 81);
INSERT INTO `dbi_customer_map` VALUES (307, '2018-10-01', '秦皇岛', 818);
INSERT INTO `dbi_customer_map` VALUES (308, '2018-10-01', '长沙', 456);
INSERT INTO `dbi_customer_map` VALUES (309, '2018-10-01', '岳阳', 744);
INSERT INTO `dbi_customer_map` VALUES (310, '2018-10-01', '镇江', 904);
INSERT INTO `dbi_customer_map` VALUES (311, '2018-10-01', '佛山', 634);
INSERT INTO `dbi_customer_map` VALUES (312, '2018-10-01', '北京', 780);
INSERT INTO `dbi_customer_map` VALUES (313, '2018-10-01', '长治', 184);
INSERT INTO `dbi_customer_map` VALUES (314, '2018-11-01', '胶南', 76);
INSERT INTO `dbi_customer_map` VALUES (315, '2018-11-01', '太原', 622);
INSERT INTO `dbi_customer_map` VALUES (316, '2018-11-01', '南宁', 794);
INSERT INTO `dbi_customer_map` VALUES (317, '2018-11-01', '哈尔滨', 394);
INSERT INTO `dbi_customer_map` VALUES (318, '2018-11-01', '澳门', 889);
INSERT INTO `dbi_customer_map` VALUES (319, '2018-11-01', '湛江', 754);
INSERT INTO `dbi_customer_map` VALUES (320, '2018-11-01', '三门峡', 615);
INSERT INTO `dbi_customer_map` VALUES (321, '2018-11-01', '郑州', 961);
INSERT INTO `dbi_customer_map` VALUES (322, '2018-11-01', '武汉', 201);
INSERT INTO `dbi_customer_map` VALUES (323, '2018-11-01', '杭州', 496);
INSERT INTO `dbi_customer_map` VALUES (324, '2018-11-01', '葫芦岛', 141);
INSERT INTO `dbi_customer_map` VALUES (325, '2018-11-01', '荆州', 141);
INSERT INTO `dbi_customer_map` VALUES (326, '2018-11-01', '西宁', 459);
INSERT INTO `dbi_customer_map` VALUES (327, '2018-11-01', '克拉玛依', 630);
INSERT INTO `dbi_customer_map` VALUES (328, '2018-11-01', '瓦房店', 336);
INSERT INTO `dbi_customer_map` VALUES (329, '2018-12-01', '衡水', 78);
INSERT INTO `dbi_customer_map` VALUES (330, '2018-12-01', '锦州', 718);
INSERT INTO `dbi_customer_map` VALUES (331, '2018-12-01', '库尔勒', 951);
INSERT INTO `dbi_customer_map` VALUES (332, '2018-12-01', '潮州', 579);
INSERT INTO `dbi_customer_map` VALUES (333, '2018-12-01', '肇庆', 486);
INSERT INTO `dbi_customer_map` VALUES (334, '2018-12-01', '洛阳', 119);
INSERT INTO `dbi_customer_map` VALUES (335, '2018-12-01', '牡丹江', 151);
INSERT INTO `dbi_customer_map` VALUES (336, '2018-12-01', '中山', 215);
INSERT INTO `dbi_customer_map` VALUES (337, '2018-12-01', '大同', 157);
INSERT INTO `dbi_customer_map` VALUES (338, '2018-12-01', '天津', 111);
INSERT INTO `dbi_customer_map` VALUES (339, '2018-12-01', '海门', 953);
INSERT INTO `dbi_customer_map` VALUES (340, '2018-12-01', '荆州', 921);
INSERT INTO `dbi_customer_map` VALUES (341, '2018-12-01', '呼和浩特', 75);
INSERT INTO `dbi_customer_map` VALUES (342, '2018-12-01', '三亚', 360);
INSERT INTO `dbi_customer_map` VALUES (343, '2018-12-01', '阳泉', 781);
INSERT INTO `dbi_customer_map` VALUES (344, '2019-01-01', '青岛', 385);
INSERT INTO `dbi_customer_map` VALUES (345, '2019-01-01', '三亚', 451);
INSERT INTO `dbi_customer_map` VALUES (346, '2019-01-01', '洛阳', 1001);
INSERT INTO `dbi_customer_map` VALUES (347, '2019-01-01', '咸阳', 852);
INSERT INTO `dbi_customer_map` VALUES (348, '2019-01-01', '西宁', 757);
INSERT INTO `dbi_customer_map` VALUES (349, '2019-01-01', '长沙', 857);
INSERT INTO `dbi_customer_map` VALUES (350, '2019-01-01', '广州', 85);
INSERT INTO `dbi_customer_map` VALUES (351, '2019-01-01', '邢台', 665);
INSERT INTO `dbi_customer_map` VALUES (352, '2019-01-01', '张家港', 259);
INSERT INTO `dbi_customer_map` VALUES (353, '2019-01-01', '鞍山', 531);
INSERT INTO `dbi_customer_map` VALUES (354, '2019-01-01', '呼和浩特', 785);
INSERT INTO `dbi_customer_map` VALUES (355, '2019-01-01', '平顶山', 785);
INSERT INTO `dbi_customer_map` VALUES (356, '2019-01-01', '石嘴山', 212);
INSERT INTO `dbi_customer_map` VALUES (357, '2019-01-01', '丽水', 743);
INSERT INTO `dbi_customer_map` VALUES (358, '2019-01-01', '嘉兴', 117);

-- ----------------------------
-- Table structure for dbi_district
-- ----------------------------
DROP TABLE IF EXISTS `dbi_district`;
CREATE TABLE `dbi_district`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '区编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区名称',
  `mark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区备注',
  `del_flag` int(2) NULL DEFAULT NULL COMMENT '区删除标记',
  `city_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键-所在市名称',
  `province_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省名-外键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'DBI-区表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_district
-- ----------------------------
INSERT INTO `dbi_district` VALUES (1, '西陵', '123', 1, '宜昌', '湖北');
INSERT INTO `dbi_district` VALUES (2, '夷陵', '123', 1, '宜昌', '湖北');
INSERT INTO `dbi_district` VALUES (4, '1', '123', 1, '郑州', '河南');
INSERT INTO `dbi_district` VALUES (5, '洪山', '123', 1, '宜昌', '湖北');
INSERT INTO `dbi_district` VALUES (6, '洪山', '123', 1, '武汉', '湖北');
INSERT INTO `dbi_district` VALUES (10, '测试', '测试', 1, '武汉', '湖北');
INSERT INTO `dbi_district` VALUES (11, '测试', '测试', 1, '武汉', '湖北');
INSERT INTO `dbi_district` VALUES (12, '测试3', '23333', 1, '武汉', '湖北');
INSERT INTO `dbi_district` VALUES (13, '测试4', '444', 1, '武汉', '湖北');
INSERT INTO `dbi_district` VALUES (14, '测试测试', '22222', 1, '武汉', '湖北');
INSERT INTO `dbi_district` VALUES (15, '测试', '测试', 1, '武汉', '湖北');
INSERT INTO `dbi_district` VALUES (16, '测测测', '测测测', 1, '武汉', '湖北');

-- ----------------------------
-- Table structure for dbi_emp_role
-- ----------------------------
DROP TABLE IF EXISTS `dbi_emp_role`;
CREATE TABLE `dbi_emp_role`  (
  `emp_id` int(11) NOT NULL COMMENT '多对多-员工的id',
  `role_id` int(11) NOT NULL COMMENT '多对多-角色的id',
  PRIMARY KEY (`emp_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_emp_role
-- ----------------------------
INSERT INTO `dbi_emp_role` VALUES (1, 1);
INSERT INTO `dbi_emp_role` VALUES (1, 2);
INSERT INTO `dbi_emp_role` VALUES (1, 4);
INSERT INTO `dbi_emp_role` VALUES (2, 2);
INSERT INTO `dbi_emp_role` VALUES (3, 1);
INSERT INTO `dbi_emp_role` VALUES (3, 2);
INSERT INTO `dbi_emp_role` VALUES (3, 4);
INSERT INTO `dbi_emp_role` VALUES (4, 1);
INSERT INTO `dbi_emp_role` VALUES (5, 4);
INSERT INTO `dbi_emp_role` VALUES (6, 1);
INSERT INTO `dbi_emp_role` VALUES (7, 4);
INSERT INTO `dbi_emp_role` VALUES (8, 2);
INSERT INTO `dbi_emp_role` VALUES (9, 1);
INSERT INTO `dbi_emp_role` VALUES (10, 2);
INSERT INTO `dbi_emp_role` VALUES (11, 4);
INSERT INTO `dbi_emp_role` VALUES (12, 4);
INSERT INTO `dbi_emp_role` VALUES (15, 2);
INSERT INTO `dbi_emp_role` VALUES (20, 1);
INSERT INTO `dbi_emp_role` VALUES (21, 1);
INSERT INTO `dbi_emp_role` VALUES (22, 1);
INSERT INTO `dbi_emp_role` VALUES (23, 4);
INSERT INTO `dbi_emp_role` VALUES (24, 1);
INSERT INTO `dbi_emp_role` VALUES (25, 4);
INSERT INTO `dbi_emp_role` VALUES (26, 1);
INSERT INTO `dbi_emp_role` VALUES (26, 4);
INSERT INTO `dbi_emp_role` VALUES (27, 4);
INSERT INTO `dbi_emp_role` VALUES (49063, 2);
INSERT INTO `dbi_emp_role` VALUES (49063, 4);

-- ----------------------------
-- Table structure for dbi_expend
-- ----------------------------
DROP TABLE IF EXISTS `dbi_expend`;
CREATE TABLE `dbi_expend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `dept` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `money` double(20, 4) NULL DEFAULT NULL COMMENT '支出金额',
  `date` date NULL DEFAULT NULL COMMENT '查询日期',
  `company_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应公司的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8794 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'DBI-支出表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_expend
-- ----------------------------
INSERT INTO `dbi_expend` VALUES (1, '人事部', 190.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (2, '行政部', 210.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (3, '文化部', 180.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (4, '业绩部', 230.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (5, '档案部', 130.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (6, '人力资源部', 280.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (7, '维护管理部', 120.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (8, '后勤部', 250.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (9, '董事会', 400.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (10, '销售部', 700.0000, '2018-12-01', '1');
INSERT INTO `dbi_expend` VALUES (11, '人事部', 187.1500, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (12, '行政部', 206.8500, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (13, '文化部', 177.3000, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (14, '业绩部', 226.5500, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (15, '档案部', 128.0500, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (16, '人力资源部', 275.8000, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (17, '维护管理部', 118.2000, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (18, '后勤部', 246.2500, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (19, '董事会', 394.0000, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (20, '销售部', 689.5000, '2018-11-01', '1');
INSERT INTO `dbi_expend` VALUES (21, '人事部', 184.3427, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (22, '行政部', 203.7473, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (23, '文化部', 174.6405, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (24, '业绩部', 223.1518, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (25, '档案部', 126.1293, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (26, '人力资源部', 271.6630, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (27, '维护管理部', 116.4270, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (28, '后勤部', 242.5563, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (29, '董事会', 388.0900, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (30, '销售部', 679.1575, '2018-10-01', '3');
INSERT INTO `dbi_expend` VALUES (31, '人事部', 181.5776, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (32, '行政部', 200.6910, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (33, '文化部', 172.0209, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (34, '业绩部', 219.8045, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (35, '档案部', 124.2373, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (36, '人力资源部', 267.5881, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (37, '维护管理部', 114.6806, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (38, '后勤部', 238.9179, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (39, '董事会', 382.2686, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (40, '销售部', 668.9701, '2018-12-01', '2');
INSERT INTO `dbi_expend` VALUES (41, '人事部', 178.8539, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (42, '行政部', 197.6807, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (43, '文化部', 169.4406, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (44, '业绩部', 216.5074, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (45, '档案部', 122.3738, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (46, '人力资源部', 263.5742, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (47, '维护管理部', 112.9604, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (48, '后勤部', 235.3341, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (49, '董事会', 376.5346, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (50, '销售部', 658.9356, '2018-11-01', '2');
INSERT INTO `dbi_expend` VALUES (61, '人事部', 173.5286, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (62, '行政部', 191.7947, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (63, '文化部', 164.3955, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (64, '业绩部', 210.0609, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (65, '档案部', 118.7301, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (66, '人力资源部', 255.7263, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (67, '维护管理部', 109.5970, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (68, '后勤部', 228.3271, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (69, '董事会', 365.3233, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (70, '销售部', 639.3158, '2019-01-23', '2');
INSERT INTO `dbi_expend` VALUES (71, '人事部', 170.9256, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (72, '行政部', 188.9178, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (73, '文化部', 161.9296, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (74, '业绩部', 206.9100, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (75, '档案部', 116.9491, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (76, '人力资源部', 251.8904, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (77, '维护管理部', 107.9530, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (78, '后勤部', 224.9022, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (79, '董事会', 359.8435, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (80, '销售部', 629.7260, '2019-01-23', '3');
INSERT INTO `dbi_expend` VALUES (91, '人事部', 165.8363, '2019-01-23', NULL);
INSERT INTO `dbi_expend` VALUES (92, '行政部', 183.2928, '2018-03-01', NULL);
INSERT INTO `dbi_expend` VALUES (93, '文化部', 157.1081, '2018-03-01', NULL);
INSERT INTO `dbi_expend` VALUES (94, '业绩部', 200.7492, '2018-03-01', NULL);
INSERT INTO `dbi_expend` VALUES (95, '档案部', 113.4670, '2018-03-01', NULL);
INSERT INTO `dbi_expend` VALUES (96, '人力资源部', 244.3904, '2018-03-01', NULL);
INSERT INTO `dbi_expend` VALUES (97, '维护管理部', 104.7387, '2018-03-01', NULL);
INSERT INTO `dbi_expend` VALUES (98, '后勤部', 218.2057, '2018-03-01', NULL);
INSERT INTO `dbi_expend` VALUES (99, '董事会', 349.1291, '2018-03-01', NULL);
INSERT INTO `dbi_expend` VALUES (100, '销售部', 610.9759, '2018-03-01', NULL);
INSERT INTO `dbi_expend` VALUES (101, '人事部', 163.3488, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (102, '行政部', 180.5434, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (103, '文化部', 154.7515, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (104, '业绩部', 197.7380, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (105, '档案部', 111.7650, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (106, '人力资源部', 240.7245, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (107, '维护管理部', 103.1677, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (108, '后勤部', 214.9326, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (109, '董事会', 343.8922, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (110, '销售部', 601.8113, '2018-02-01', NULL);
INSERT INTO `dbi_expend` VALUES (8573, '人事部', 178.2358, '2018-04-26', NULL);
INSERT INTO `dbi_expend` VALUES (8574, '文化部', 2.8050, '2018-04-26', NULL);
INSERT INTO `dbi_expend` VALUES (8575, '档案部', 0.7670, '2018-04-26', NULL);
INSERT INTO `dbi_expend` VALUES (8576, '维护管理部', 0.7400, '2018-04-26', NULL);
INSERT INTO `dbi_expend` VALUES (8577, '行政部', 119.7900, '2018-04-26', NULL);
INSERT INTO `dbi_expend` VALUES (8592, '人事部', 178.2358, '2018-07-14', NULL);
INSERT INTO `dbi_expend` VALUES (8593, '文化部', 2.8050, '2018-07-14', NULL);
INSERT INTO `dbi_expend` VALUES (8594, '档案部', 0.7670, '2018-07-14', NULL);
INSERT INTO `dbi_expend` VALUES (8595, '维护管理部', 0.7400, '2018-07-14', NULL);
INSERT INTO `dbi_expend` VALUES (8596, '行政部', 119.7900, '2018-07-14', NULL);
INSERT INTO `dbi_expend` VALUES (8599, '人事部', 85421.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8600, '文化部', 15350.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8601, '维护管理部', 7250.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8602, '行政部', 26600.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8603, '人事部', 85421.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8604, '文化部', 15350.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8605, '维护管理部', 7250.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8606, '行政部', 26600.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8607, '人事部', 85421.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8608, '文化部', 15350.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8609, '维护管理部', 7250.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8610, '行政部', 26600.0000, '2019-01-22', '1');
INSERT INTO `dbi_expend` VALUES (8611, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8612, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8613, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8614, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8615, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8616, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8617, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8618, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8619, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8620, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8621, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8622, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8623, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8624, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8625, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8626, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8627, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8628, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8629, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8630, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8631, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8632, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8633, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8634, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8635, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8636, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8637, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8638, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8639, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8640, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8641, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8642, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8643, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8644, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8645, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8646, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8647, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8648, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8649, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8650, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8651, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8652, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8653, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8654, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8655, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8656, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8657, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8658, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8659, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8660, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8661, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8662, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8663, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8664, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8665, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8666, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8667, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8668, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8669, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8670, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8671, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8672, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8673, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8674, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8675, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8676, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8677, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8678, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8679, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8680, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8681, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8682, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8683, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8684, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8685, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8686, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8687, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8688, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8689, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8690, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8691, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8692, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8693, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8694, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8695, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8696, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8697, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8698, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8699, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8700, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8701, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8702, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8703, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8704, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8705, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8706, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8707, '人事部', 88735.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8708, '文化部', 16150.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8709, '维护管理部', 7400.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8710, '行政部', 27900.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8711, '人事部', 88265.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8712, '文化部', 16300.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8713, '维护管理部', 7500.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8714, '行政部', 28200.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8715, '人事部', 88265.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8716, '文化部', 16300.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8717, '维护管理部', 7500.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8718, '行政部', 28200.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8719, '业绩部', 10680786.0000, '2019-01-23', '11');
INSERT INTO `dbi_expend` VALUES (8720, '人事部', 11342037.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8721, '人力资源部', 3069128.0000, '2019-01-23', '7');
INSERT INTO `dbi_expend` VALUES (8722, '后勤部', 3095868.0000, '2019-01-23', '14');
INSERT INTO `dbi_expend` VALUES (8723, '文化部', 10931760.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8724, '档案部', 2911783.0000, '2019-01-23', '13');
INSERT INTO `dbi_expend` VALUES (8725, '维护管理部', 3041703.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8726, '行政部', 10677446.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8727, '业绩部', 10680786.0000, '2019-01-23', '11');
INSERT INTO `dbi_expend` VALUES (8728, '人事部', 11342037.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8729, '人力资源部', 3069128.0000, '2019-01-23', '7');
INSERT INTO `dbi_expend` VALUES (8730, '后勤部', 3095868.0000, '2019-01-23', '14');
INSERT INTO `dbi_expend` VALUES (8731, '文化部', 10931760.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8732, '档案部', 2911783.0000, '2019-01-23', '13');
INSERT INTO `dbi_expend` VALUES (8733, '维护管理部', 3041703.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8734, '行政部', 10677446.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8735, '业绩部', 10680786.0000, '2019-01-23', '11');
INSERT INTO `dbi_expend` VALUES (8736, '人事部', 11342037.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8737, '人力资源部', 3069128.0000, '2019-01-23', '7');
INSERT INTO `dbi_expend` VALUES (8738, '后勤部', 3095868.0000, '2019-01-23', '14');
INSERT INTO `dbi_expend` VALUES (8739, '文化部', 10931760.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8740, '档案部', 2911783.0000, '2019-01-23', '13');
INSERT INTO `dbi_expend` VALUES (8741, '维护管理部', 3041703.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8742, '行政部', 10677446.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8743, '业绩部', 10680786.0000, '2019-01-23', '11');
INSERT INTO `dbi_expend` VALUES (8744, '人事部', 11342037.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8745, '人力资源部', 3069128.0000, '2019-01-23', '7');
INSERT INTO `dbi_expend` VALUES (8746, '后勤部', 3095868.0000, '2019-01-23', '14');
INSERT INTO `dbi_expend` VALUES (8747, '文化部', 10931760.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8748, '档案部', 2911783.0000, '2019-01-23', '13');
INSERT INTO `dbi_expend` VALUES (8749, '维护管理部', 3041703.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8750, '行政部', 10677446.0000, '2019-01-23', '1');
INSERT INTO `dbi_expend` VALUES (8788, '董事会', 11930.0000, '2018-02-01', '1');
INSERT INTO `dbi_expend` VALUES (8789, '董事会', 6769.0000, '2018-10-01', '1');
INSERT INTO `dbi_expend` VALUES (8790, '业绩部', 695512.0000, '2018-01-01', '1');
INSERT INTO `dbi_expend` VALUES (8791, '人事部', 561531.0000, '2018-01-01', '1');
INSERT INTO `dbi_expend` VALUES (8792, '文化部', 725384.0000, '2018-01-01', '1');
INSERT INTO `dbi_expend` VALUES (8793, '行政部', 686520.0000, '2018-01-01', '1');

-- ----------------------------
-- Table structure for dbi_income
-- ----------------------------
DROP TABLE IF EXISTS `dbi_income`;
CREATE TABLE `dbi_income`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收入编号',
  `five_fifteen` int(11) NULL DEFAULT 0 COMMENT '大于5小等于15万项目个数',
  `fifteen_thirty` int(11) NULL DEFAULT 0 COMMENT '大于15小等于30万项目个数',
  `thirty_fifty` int(11) NULL DEFAULT 0 COMMENT '大于30小等于50万项目个数',
  `fifty_hundred` int(11) NULL DEFAULT 0 COMMENT '大于50小等于100万项目个数',
  `hundred_two` int(11) NULL DEFAULT 0 COMMENT '大于100小等于200万项目个数',
  `two_five` int(11) NULL DEFAULT 0 COMMENT '大于200小等于500万项目个数',
  `Five_above` int(11) NULL DEFAULT 0 COMMENT '超过500万项目个数',
  `date` date NULL DEFAULT NULL COMMENT '保存时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'DBI-收入表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_income
-- ----------------------------
INSERT INTO `dbi_income` VALUES (1, 6, 9, 5, 8, 1, 1, 0, '2018-12-01');
INSERT INTO `dbi_income` VALUES (2, 3, 8, 8, 9, 5, 3, 7, '2018-11-01');
INSERT INTO `dbi_income` VALUES (3, 8, 2, 9, 7, 1, 5, 9, '2018-10-01');
INSERT INTO `dbi_income` VALUES (4, 8, 8, 8, 6, 5, 4, 1, '2018-09-01');
INSERT INTO `dbi_income` VALUES (5, 6, 6, 1, 7, 0, 0, 0, '2018-08-01');
INSERT INTO `dbi_income` VALUES (7, 5, 9, 3, 7, 0, 0, 2, '2018-06-01');
INSERT INTO `dbi_income` VALUES (8, 7, 3, 5, 2, 9, 9, 2, '2018-05-01');
INSERT INTO `dbi_income` VALUES (10, 9, 9, 4, 4, 4, 2, 8, '2018-03-01');
INSERT INTO `dbi_income` VALUES (11, 2, 6, 8, 4, 5, 0, 9, '2018-02-01');
INSERT INTO `dbi_income` VALUES (12, 7, 9, 7, 5, 7, 5, 1, '2018-01-01');
INSERT INTO `dbi_income` VALUES (13, 9, 3, 1, 1, 8, 5, 0, '2017-12-01');
INSERT INTO `dbi_income` VALUES (14, 7, 3, 2, 0, 5, 5, 3, '2017-11-01');
INSERT INTO `dbi_income` VALUES (15, 6, 0, 6, 8, 4, 9, 3, '2017-10-01');
INSERT INTO `dbi_income` VALUES (16, 2, 1, 6, 3, 2, 3, 9, '2017-09-01');
INSERT INTO `dbi_income` VALUES (17, 5, 5, 7, 4, 3, 8, 2, '2017-08-01');
INSERT INTO `dbi_income` VALUES (18, 2, 0, 0, 3, 3, 0, 7, '2017-07-01');
INSERT INTO `dbi_income` VALUES (19, 9, 9, 4, 5, 1, 6, 8, '2017-06-01');
INSERT INTO `dbi_income` VALUES (20, 9, 3, 0, 7, 3, 8, 9, '2017-05-01');
INSERT INTO `dbi_income` VALUES (21, 0, 3, 9, 2, 8, 6, 2, '2017-04-01');

-- ----------------------------
-- Table structure for dbi_menu
-- ----------------------------
DROP TABLE IF EXISTS `dbi_menu`;
CREATE TABLE `dbi_menu`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '菜单的id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名字',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问该菜单的路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `system_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单所属系统编号',
  `parent_id` int(20) NULL DEFAULT NULL COMMENT '菜单的父菜单（自连接',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK24897F76799044`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_menu
-- ----------------------------
INSERT INTO `dbi_menu` VALUES (1, '企业管理', NULL, '&#xe857;', 2, NULL, 1);
INSERT INTO `dbi_menu` VALUES (2, '企业竞争', '/CompetitiveEnterpriseController/list', NULL, 2, 1, 1);
INSERT INTO `dbi_menu` VALUES (3, '团队建设', '', '&#xe64c;', 2, NULL, 1);
INSERT INTO `dbi_menu` VALUES (4, '工作沟通', '/msg/list', NULL, 2, 3, 1);
INSERT INTO `dbi_menu` VALUES (5, '团队管理', '/team/list', NULL, 2, 3, 1);
INSERT INTO `dbi_menu` VALUES (6, '日程管理', '/schedule/list', NULL, 2, 3, 1);
INSERT INTO `dbi_menu` VALUES (7, '工作微博', '/weiboController/list', NULL, 2, 3, 1);
INSERT INTO `dbi_menu` VALUES (8, '项目合同', '', '&#xe63c;', 2, NULL, 1);
INSERT INTO `dbi_menu` VALUES (9, '项目进度', '/projectProgressController/list', NULL, 2, 8, 1);
INSERT INTO `dbi_menu` VALUES (10, '机会管理', '/chanceController/list', NULL, 2, 8, 1);
INSERT INTO `dbi_menu` VALUES (11, '合同审批', '/contractController/list', NULL, 2, 8, 1);
INSERT INTO `dbi_menu` VALUES (12, '客户资源', '', '&#xe770;', 2, NULL, 1);
INSERT INTO `dbi_menu` VALUES (13, '我的客户', '/MyClientController/list', NULL, 2, 12, 1);
INSERT INTO `dbi_menu` VALUES (14, '客户管理', '/clientController/list', NULL, 2, 12, 1);
INSERT INTO `dbi_menu` VALUES (15, '客户服务', NULL, '&#xe650', 2, NULL, 1);
INSERT INTO `dbi_menu` VALUES (16, '客户关怀', '/customerCare/list', NULL, 2, 15, 1);
INSERT INTO `dbi_menu` VALUES (17, '客户回访', '/callBackController/list', NULL, 2, 15, 1);
INSERT INTO `dbi_menu` VALUES (18, '客户反馈', '/feedbackController/list', NULL, 2, 15, 1);

-- ----------------------------
-- Table structure for dbi_number
-- ----------------------------
DROP TABLE IF EXISTS `dbi_number`;
CREATE TABLE `dbi_number`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `dept` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `people` int(11) NULL DEFAULT NULL COMMENT '人数',
  `date` date NULL DEFAULT NULL COMMENT '查询日期',
  `company_id` int(10) NULL DEFAULT NULL COMMENT '对应公司的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9005 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'DBI-人数统计表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_number
-- ----------------------------
INSERT INTO `dbi_number` VALUES (16, '人事部', 1900, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (17, '行政部', 2121, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (18, '文化部', 1894, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (19, '业绩部', 2389, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (20, '档案部', 1349, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (21, '人力资源部', 2896, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (22, '维护管理部', 1236, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (23, '后勤部', 2562, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (24, '董事会', 460, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (25, '销售部', 4786, '2018-12-01', 1);
INSERT INTO `dbi_number` VALUES (26, '人事部', 1897, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (27, '行政部', 2117, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (28, '文化部', 1891, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (29, '业绩部', 2385, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (30, '档案部', 1346, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (31, '人力资源部', 2890, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (32, '维护管理部', 1234, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (33, '后勤部', 2557, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (34, '董事会', 459, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (35, '销售部', 4775, '2018-11-01', 1);
INSERT INTO `dbi_number` VALUES (36, '人事部', 1894, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (37, '行政部', 2113, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (38, '文化部', 1888, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (39, '业绩部', 2381, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (40, '档案部', 1343, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (41, '人力资源部', 2884, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (42, '维护管理部', 1232, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (43, '后勤部', 2552, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (44, '董事会', 458, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (45, '销售部', 4764, '2018-10-01', 3);
INSERT INTO `dbi_number` VALUES (46, '人事部', 1891, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (47, '行政部', 2109, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (48, '文化部', 1885, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (49, '业绩部', 2377, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (50, '档案部', 1340, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (51, '人力资源部', 2878, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (52, '维护管理部', 1230, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (53, '后勤部', 2547, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (54, '董事会', 457, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (55, '销售部', 4753, '2018-09-01', 2);
INSERT INTO `dbi_number` VALUES (56, '人事部', 1888, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (57, '行政部', 2105, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (58, '文化部', 1882, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (59, '业绩部', 2373, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (60, '档案部', 1337, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (61, '人力资源部', 2872, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (62, '维护管理部', 1228, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (63, '后勤部', 2542, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (64, '董事会', 456, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (65, '销售部', 4742, '2018-08-01', 2);
INSERT INTO `dbi_number` VALUES (76, '人事部', 1882, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (77, '行政部', 2097, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (78, '文化部', 1876, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (79, '业绩部', 2365, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (80, '档案部', 1331, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (81, '人力资源部', 2860, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (82, '维护管理部', 1224, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (83, '后勤部', 2532, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (84, '董事会', 454, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (85, '销售部', 4720, '2018-06-01', 3);
INSERT INTO `dbi_number` VALUES (86, '人事部', 1879, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (87, '行政部', 2093, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (88, '文化部', 1873, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (89, '业绩部', 2361, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (90, '档案部', 1329, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (91, '人力资源部', 2854, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (92, '维护管理部', 1222, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (93, '后勤部', 2527, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (94, '董事会', 453, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (95, '销售部', 4709, '2018-05-01', 2);
INSERT INTO `dbi_number` VALUES (106, '人事部', 1873, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (107, '行政部', 2085, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (108, '文化部', 1867, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (109, '业绩部', 2353, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (110, '档案部', 1325, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (111, '人力资源部', 2842, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (112, '维护管理部', 1218, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (113, '后勤部', 2517, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (114, '董事会', 451, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (115, '销售部', 4687, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (116, '人事部', 1870, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (117, '行政部', 2081, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (118, '文化部', 1864, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (119, '业绩部', 2349, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (120, '档案部', 1323, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (121, '人力资源部', 2836, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (122, '维护管理部', 1216, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (123, '后勤部', 2512, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (124, '董事会', 450, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (125, '销售部', 4676, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (126, '人事部', 1867, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (127, '行政部', 2077, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (128, '文化部', 1861, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (129, '业绩部', 2345, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (130, '档案部', 1321, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (131, '人力资源部', 2830, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (132, '维护管理部', 1214, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (133, '后勤部', 2507, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (134, '董事会', 449, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (135, '销售部', 4665, '2018-01-01', 2);
INSERT INTO `dbi_number` VALUES (8789, '人事部', 17, '2018-04-26', 1);
INSERT INTO `dbi_number` VALUES (8790, '后勤部', 3, '2018-04-26', 1);
INSERT INTO `dbi_number` VALUES (8791, '文化部', 3, '2018-04-26', 1);
INSERT INTO `dbi_number` VALUES (8792, '档案部', 1, '2018-04-26', 1);
INSERT INTO `dbi_number` VALUES (8793, '维护管理部', 1, '2018-04-26', 1);
INSERT INTO `dbi_number` VALUES (8794, '董事会', 1, '2018-04-26', 1);
INSERT INTO `dbi_number` VALUES (8795, '行政部', 4, '2018-04-26', 1);
INSERT INTO `dbi_number` VALUES (8803, '业绩部', 1, '2018-07-14', 1);
INSERT INTO `dbi_number` VALUES (8804, '人事部', 17, '2018-07-14', 1);
INSERT INTO `dbi_number` VALUES (8805, '后勤部', 3, '2018-07-14', 1);
INSERT INTO `dbi_number` VALUES (8806, '文化部', 3, '2018-07-14', 1);
INSERT INTO `dbi_number` VALUES (8807, '档案部', 1, '2018-07-14', 1);
INSERT INTO `dbi_number` VALUES (8808, '维护管理部', 1, '2018-07-14', 1);
INSERT INTO `dbi_number` VALUES (8809, '董事会', 1, '2018-07-14', 1);
INSERT INTO `dbi_number` VALUES (8810, '行政部', 4, '2018-07-14', 1);
INSERT INTO `dbi_number` VALUES (8905, '业绩部', 1, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8906, '人事部', 13, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8907, '后勤部', 3, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8908, '文化部', 2, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8909, '维护管理部', 1, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8910, '董事会', 1, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8911, '行政部', 4, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8912, '业绩部', 1, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8913, '人事部', 13, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8914, '后勤部', 3, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8915, '文化部', 2, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8916, '维护管理部', 1, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8917, '董事会', 1, '2019-01-22', 2);
INSERT INTO `dbi_number` VALUES (8918, '行政部', 4, '2019-01-22', 1);
INSERT INTO `dbi_number` VALUES (8919, '业绩部', 1, '2019-01-22', 1);
INSERT INTO `dbi_number` VALUES (8920, '人事部', 13, '2019-01-22', 1);
INSERT INTO `dbi_number` VALUES (8921, '后勤部', 3, '2019-01-22', 1);
INSERT INTO `dbi_number` VALUES (8922, '文化部', 2, '2019-01-22', 1);
INSERT INTO `dbi_number` VALUES (8923, '维护管理部', 1, '2019-01-22', 1);
INSERT INTO `dbi_number` VALUES (8924, '董事会', 1, '2019-01-22', 1);
INSERT INTO `dbi_number` VALUES (8925, '行政部', 4, '2019-01-22', 1);
INSERT INTO `dbi_number` VALUES (8926, '业绩部', 1, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8927, '人事部', 13, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8928, '后勤部', 3, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8929, '文化部', 2, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8930, '维护管理部', 1, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8931, '董事会', 1, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8932, '行政部', 4, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8933, '业绩部', 1, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8934, '人事部', 13, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8935, '后勤部', 3, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8936, '文化部', 2, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8937, '维护管理部', 1, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8938, '董事会', 1, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8939, '行政部', 4, '2019-01-23', 1);
INSERT INTO `dbi_number` VALUES (8947, '人力资源部', 2133, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (8948, '档案部', 2114, '2018-02-01', 2);
INSERT INTO `dbi_number` VALUES (8949, '业绩部', 7628, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (8950, '人事部', 7627, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (8951, '后勤部', 2160, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (8952, '文化部', 7602, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (8953, '维护管理部', 2119, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (8954, '董事会', 1, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (8955, '行政部', 7688, '2018-03-01', 2);
INSERT INTO `dbi_number` VALUES (8956, '业绩部', 7628, '2018-10-01', 1);
INSERT INTO `dbi_number` VALUES (8957, '人事部', 7627, '2018-10-01', 1);
INSERT INTO `dbi_number` VALUES (8958, '后勤部', 2160, '2018-10-01', 1);
INSERT INTO `dbi_number` VALUES (8959, '文化部', 7602, '2018-10-01', 1);
INSERT INTO `dbi_number` VALUES (8960, '维护管理部', 2119, '2018-10-01', 1);
INSERT INTO `dbi_number` VALUES (8961, '董事会', 1, '2018-10-01', 1);
INSERT INTO `dbi_number` VALUES (8962, '行政部', 7688, '2018-10-01', 1);
INSERT INTO `dbi_number` VALUES (8999, '业绩部', 506, '2018-01-01', 1);
INSERT INTO `dbi_number` VALUES (9000, '人事部', 497, '2018-01-01', 1);
INSERT INTO `dbi_number` VALUES (9001, '人力资源部', 2, '2018-01-01', 1);
INSERT INTO `dbi_number` VALUES (9002, '文化部', 515, '2018-01-01', 1);
INSERT INTO `dbi_number` VALUES (9003, '档案部', 2, '2018-01-01', 1);
INSERT INTO `dbi_number` VALUES (9004, '行政部', 492, '2018-01-01', 1);

-- ----------------------------
-- Table structure for dbi_office_map
-- ----------------------------
DROP TABLE IF EXISTS `dbi_office_map`;
CREATE TABLE `dbi_office_map`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办事处所在城市',
  `value` int(11) NULL DEFAULT NULL COMMENT '所在办事处人数',
  `year` date NULL DEFAULT NULL,
  `province` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'DBI-分公司地图表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_office_map
-- ----------------------------
INSERT INTO `dbi_office_map` VALUES (6, '杭州', 74, NULL, '浙江省');
INSERT INTO `dbi_office_map` VALUES (7, '重庆', 146, NULL, '重庆市');
INSERT INTO `dbi_office_map` VALUES (11, '长沙', 52, NULL, '湖南省');
INSERT INTO `dbi_office_map` VALUES (16, '成都', 104, NULL, '四川省');
INSERT INTO `dbi_office_map` VALUES (17, '拉萨', 85, NULL, '西藏自治区');
INSERT INTO `dbi_office_map` VALUES (28, '武汉', 138, NULL, '湖北省');

-- ----------------------------
-- Table structure for dbi_permission
-- ----------------------------
DROP TABLE IF EXISTS `dbi_permission`;
CREATE TABLE `dbi_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '该权限有权访问的路径',
  `sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '该权限有权访问菜单的id',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_id`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_permission
-- ----------------------------
INSERT INTO `dbi_permission` VALUES (1, '添加用户', '/employee/save', 'employee:save', NULL, 1);
INSERT INTO `dbi_permission` VALUES (2, '删除用户', '/employee/delete', 'employee:delete', NULL, 1);
INSERT INTO `dbi_permission` VALUES (3, '修改用户', '/employee/update', 'employee:update', NULL, 1);
INSERT INTO `dbi_permission` VALUES (4, '员工管理', '/employee/index', 'employee:index', 8, 1);
INSERT INTO `dbi_permission` VALUES (5, '用户列表', '/employee/p11', 'employee:page', NULL, 0);
INSERT INTO `dbi_permission` VALUES (10, '角色管理', '/role/index', 'role:index', 2, 1);
INSERT INTO `dbi_permission` VALUES (11, '菜单管理', '/menu/index', 'menu:index', 3, 1);
INSERT INTO `dbi_permission` VALUES (12, '权限管理', '/permission/index', 'permission:index', 4, 1);
INSERT INTO `dbi_permission` VALUES (13, '导入管理', '/import', 'import:*', 5, 1);
INSERT INTO `dbi_permission` VALUES (14, '部门管理', '/department/index', 'department:index', 7, 1);
INSERT INTO `dbi_permission` VALUES (15, '数据字典类型', '/systemDictionaryType/index', 'systemDictionaryType:index', 10, 1);
INSERT INTO `dbi_permission` VALUES (16, '数据字典明细', '/systemDictionaryDetail/index', 'systemDictionaryDetail:index', 11, 1);
INSERT INTO `dbi_permission` VALUES (17, '产品类型', '/productType/index', 'productType:index', 12, 1);
INSERT INTO `dbi_permission` VALUES (18, '产品管理', '/product/index', 'product:index', 13, 1);
INSERT INTO `dbi_permission` VALUES (19, '供应商管理', '/supplier/index', 'supplier:index', 14, 1);
INSERT INTO `dbi_permission` VALUES (20, '采购管理', '/purchaseBill/index', 'purchaseBill:index', 16, 1);
INSERT INTO `dbi_permission` VALUES (21, '采购报表', '/purchaseBillItem/index', 'purchaseBillItem:index', 17, 1);
INSERT INTO `dbi_permission` VALUES (22, '权限管理', '/permissionController/list', 'permission:list', NULL, 1);
INSERT INTO `dbi_permission` VALUES (23, '系统管理', '/systemController/list', 'system:list', NULL, 1);
INSERT INTO `dbi_permission` VALUES (24, '角色管理', '/roleController/list', 'role:list', NULL, 1);
INSERT INTO `dbi_permission` VALUES (25, '角色分配', '/assignRoleController/list', 'assginRole:list', NULL, 1);

-- ----------------------------
-- Table structure for dbi_profit
-- ----------------------------
DROP TABLE IF EXISTS `dbi_profit`;
CREATE TABLE `dbi_profit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NULL DEFAULT NULL,
  `rental` double(20, 4) NULL DEFAULT NULL COMMENT '公司收入总额(税前)',
  `grossMargin` double(20, 4) NULL DEFAULT NULL COMMENT '毛利润',
  `tax` double(20, 4) NULL DEFAULT NULL COMMENT '税收',
  `spending` double(20, 4) NULL DEFAULT NULL COMMENT '总支出',
  `company_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应公司的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2495 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'DBI-利润表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_profit
-- ----------------------------
INSERT INTO `dbi_profit` VALUES (973, '2018-12-01', 500.4101, 476.1115, 10.5086, 13.7900, '1');
INSERT INTO `dbi_profit` VALUES (974, '2018-11-01', 218.2071, 142.2535, 4.5823, 71.3713, '1');
INSERT INTO `dbi_profit` VALUES (975, '2018-10-01', 2103.4849, 1712.8043, 44.1732, 346.5074, '1');
INSERT INTO `dbi_profit` VALUES (976, '2018-09-01', 3651.7079, -1121.4014, 76.6859, 4696.4234, '1');
INSERT INTO `dbi_profit` VALUES (977, '2018-08-01', 2703.9160, 767.2565, 56.7822, 1879.8773, '1');
INSERT INTO `dbi_profit` VALUES (980, '2018-12-01', 1011.0544, 13145.0520, 21.2321, 1383.1239, '2');
INSERT INTO `dbi_profit` VALUES (982, '2018-11-01', 6479.8479, 6110.6733, 136.0768, 233.0977, '2');
INSERT INTO `dbi_profit` VALUES (983, '2018-10-01', 23.7313, -2091.4636, 0.4984, 2114.6966, '2');
INSERT INTO `dbi_profit` VALUES (984, '2018-09-01', 2085.5037, -1544.9805, 43.7956, 3586.6887, '2');
INSERT INTO `dbi_profit` VALUES (2485, '2018-08-01', 1500.0000, 1436.1199, 63.8800, 0.0000, '2');
INSERT INTO `dbi_profit` VALUES (2494, '2019-01-01', 31000.5000, NULL, 1500.0250, 2719097.0000, '1');

-- ----------------------------
-- Table structure for dbi_province
-- ----------------------------
DROP TABLE IF EXISTS `dbi_province`;
CREATE TABLE `dbi_province`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '省表主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省名称',
  `mark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省备注',
  `del_flag` int(2) NULL DEFAULT 0 COMMENT '删除标记',
  `lon` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市经度',
  `lat` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市维度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'DBI-省级表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_province
-- ----------------------------
INSERT INTO `dbi_province` VALUES (1, '北京市', 'BeiJing', 1, '0000000000', '00000000000');
INSERT INTO `dbi_province` VALUES (2, '天津市', 'TianJin', 1, '111', '111');
INSERT INTO `dbi_province` VALUES (3, '上海市', 'ShangHai', 1, '', '');
INSERT INTO `dbi_province` VALUES (4, '重庆市', 'ChongQing', 1, '', '');
INSERT INTO `dbi_province` VALUES (5, '河北省', 'HeBei', 1, '', '');
INSERT INTO `dbi_province` VALUES (6, '山西省', 'ShanXi', 1, '222', '222');
INSERT INTO `dbi_province` VALUES (7, '辽宁省', 'LiaoNing', 1, '', '');
INSERT INTO `dbi_province` VALUES (8, '吉林省', 'JiLing', 1, '', '');
INSERT INTO `dbi_province` VALUES (9, '黑龙江省', 'HeiLongJiang', 1, '', '');
INSERT INTO `dbi_province` VALUES (10, '江苏省', 'JiangSu', 1, '654', '564');
INSERT INTO `dbi_province` VALUES (11, '浙江省', 'ZheJiang', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (12, '安徽省', 'AnHui', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (13, '福建省', 'FuJian', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (14, '江西省', 'JiangXi', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (15, '山东省', 'ShanDong', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (16, '河南省', 'HeNan', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (17, '湖北省', 'HuBei', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (18, '湖南省', 'HuNan', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (19, '广东省', 'GuangDong', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (20, '海南省', 'HaiNan', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (21, '四川省', 'SiChuan', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (22, '贵州省', 'GuiZhou', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (23, '云南省', 'YunNan', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (24, '陕西省', 'ShanXi', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (25, '甘肃省', 'GanSu', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (26, '青海省', 'QingHai', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (27, '台湾省', 'TaiWan', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (28, '内蒙古自治区', 'NeiMengGu', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (29, '广西壮族自治区', 'GuangXi', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (30, '西藏自治区', 'XiZang', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (31, '宁夏回族自治区', 'NingXia', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (32, '新疆维吾尔族自治区', 'XinJiang', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (33, '香港', 'HongKong', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (34, '澳门', 'AM', 1, NULL, NULL);
INSERT INTO `dbi_province` VALUES (35, '牛省', 'N', 0, '45', '45');
INSERT INTO `dbi_province` VALUES (36, 'hjkl', '32', 0, '56', '8569');
INSERT INTO `dbi_province` VALUES (37, '233', '233', 0, '233', '233');
INSERT INTO `dbi_province` VALUES (38, '333', '233', 0, '2333', '34444');
INSERT INTO `dbi_province` VALUES (39, '测试1', '111', 0, '111', '111');
INSERT INTO `dbi_province` VALUES (40, '测试2', '222', 0, '222', '222');
INSERT INTO `dbi_province` VALUES (41, '测试3', '333', 0, '333', '333');
INSERT INTO `dbi_province` VALUES (42, '测试4', '444', 0, '444', '444');
INSERT INTO `dbi_province` VALUES (43, '测试5', '555', 0, '555', '555');
INSERT INTO `dbi_province` VALUES (44, '测试', '测试', 0, '测试', '测试');
INSERT INTO `dbi_province` VALUES (45, '测试', '22', 0, '33', '44');
INSERT INTO `dbi_province` VALUES (46, '测试2', '11', 0, '22', '33');
INSERT INTO `dbi_province` VALUES (47, '测试', '11', 0, '222', '11');
INSERT INTO `dbi_province` VALUES (48, '测试2', '222', 0, '22', '11');

-- ----------------------------
-- Table structure for dbi_role
-- ----------------------------
DROP TABLE IF EXISTS `dbi_role`;
CREATE TABLE `dbi_role`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '角色的id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色的名称',
  `sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色的编号',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_role
-- ----------------------------
INSERT INTO `dbi_role` VALUES (1, '超级管理员', 'admin', 1);
INSERT INTO `dbi_role` VALUES (2, '角色管理员', 'guest', 1);
INSERT INTO `dbi_role` VALUES (4, '人事部', 'renShiBu', 1);
INSERT INTO `dbi_role` VALUES (5, '1', '1', 0);
INSERT INTO `dbi_role` VALUES (6, 'hape', 'hape', 1);

-- ----------------------------
-- Table structure for dbi_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `dbi_role_menu`;
CREATE TABLE `dbi_role_menu`  (
  `role_id` int(20) NOT NULL COMMENT '多对多-角色的id',
  `menu_id` int(20) NOT NULL COMMENT '多对多-菜单的id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE,
  INDEX `FK1404278833B84B6F`(`menu_id`) USING BTREE,
  INDEX `FK140427884D26E00F`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_role_menu
-- ----------------------------
INSERT INTO `dbi_role_menu` VALUES (1, 1);
INSERT INTO `dbi_role_menu` VALUES (2, 1);
INSERT INTO `dbi_role_menu` VALUES (1, 2);
INSERT INTO `dbi_role_menu` VALUES (2, 2);
INSERT INTO `dbi_role_menu` VALUES (1, 3);
INSERT INTO `dbi_role_menu` VALUES (1, 4);
INSERT INTO `dbi_role_menu` VALUES (1, 5);
INSERT INTO `dbi_role_menu` VALUES (1, 6);
INSERT INTO `dbi_role_menu` VALUES (1, 7);
INSERT INTO `dbi_role_menu` VALUES (1, 8);
INSERT INTO `dbi_role_menu` VALUES (1, 9);
INSERT INTO `dbi_role_menu` VALUES (1, 10);
INSERT INTO `dbi_role_menu` VALUES (1, 11);
INSERT INTO `dbi_role_menu` VALUES (1, 12);
INSERT INTO `dbi_role_menu` VALUES (1, 13);
INSERT INTO `dbi_role_menu` VALUES (1, 14);
INSERT INTO `dbi_role_menu` VALUES (1, 15);
INSERT INTO `dbi_role_menu` VALUES (1, 16);
INSERT INTO `dbi_role_menu` VALUES (1, 17);
INSERT INTO `dbi_role_menu` VALUES (1, 18);

-- ----------------------------
-- Table structure for dbi_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `dbi_role_permission`;
CREATE TABLE `dbi_role_permission`  (
  `role_id` int(20) NOT NULL COMMENT '多对多-角色的id',
  `permission_id` bigint(20) NOT NULL COMMENT '多对多-权限的id',
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `FKAEE599B74D26E00F`(`role_id`) USING BTREE,
  INDEX `FKAEE599B7C854068F`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_role_permission
-- ----------------------------
INSERT INTO `dbi_role_permission` VALUES (1, 1);
INSERT INTO `dbi_role_permission` VALUES (1, 2);
INSERT INTO `dbi_role_permission` VALUES (1, 3);
INSERT INTO `dbi_role_permission` VALUES (1, 4);
INSERT INTO `dbi_role_permission` VALUES (1, 5);
INSERT INTO `dbi_role_permission` VALUES (1, 10);
INSERT INTO `dbi_role_permission` VALUES (1, 11);
INSERT INTO `dbi_role_permission` VALUES (1, 12);
INSERT INTO `dbi_role_permission` VALUES (1, 13);
INSERT INTO `dbi_role_permission` VALUES (1, 14);
INSERT INTO `dbi_role_permission` VALUES (1, 15);
INSERT INTO `dbi_role_permission` VALUES (1, 16);
INSERT INTO `dbi_role_permission` VALUES (1, 17);
INSERT INTO `dbi_role_permission` VALUES (1, 18);
INSERT INTO `dbi_role_permission` VALUES (1, 19);
INSERT INTO `dbi_role_permission` VALUES (1, 20);
INSERT INTO `dbi_role_permission` VALUES (1, 21);
INSERT INTO `dbi_role_permission` VALUES (1, 22);
INSERT INTO `dbi_role_permission` VALUES (1, 23);
INSERT INTO `dbi_role_permission` VALUES (1, 24);
INSERT INTO `dbi_role_permission` VALUES (1, 25);
INSERT INTO `dbi_role_permission` VALUES (2, 24);
INSERT INTO `dbi_role_permission` VALUES (2, 25);
INSERT INTO `dbi_role_permission` VALUES (4, 3);
INSERT INTO `dbi_role_permission` VALUES (4, 4);
INSERT INTO `dbi_role_permission` VALUES (4, 5);

-- ----------------------------
-- Table structure for dbi_system
-- ----------------------------
DROP TABLE IF EXISTS `dbi_system`;
CREATE TABLE `dbi_system`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '系统的id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统的名字',
  `sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统的编号',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_system
-- ----------------------------
INSERT INTO `dbi_system` VALUES (1, 'DBI', 'dbi', 1);
INSERT INTO `dbi_system` VALUES (2, 'CRM', 'crm', 1);
INSERT INTO `dbi_system` VALUES (3, 'EHR', 'ehr', 1);

-- ----------------------------
-- Table structure for dbi_test_date
-- ----------------------------
DROP TABLE IF EXISTS `dbi_test_date`;
CREATE TABLE `dbi_test_date`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `inductionTime` date NULL DEFAULT NULL COMMENT '入职日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_test_date
-- ----------------------------
INSERT INTO `dbi_test_date` VALUES (1, '1996-08-08', '2017-05-03');
INSERT INTO `dbi_test_date` VALUES (2, '1997-04-06', '2018-02-08');
INSERT INTO `dbi_test_date` VALUES (3, '1994-06-17', '2016-10-14');
INSERT INTO `dbi_test_date` VALUES (4, '1992-11-11', '2016-07-14');
INSERT INTO `dbi_test_date` VALUES (5, '1991-11-11', '2016-07-23');
INSERT INTO `dbi_test_date` VALUES (6, '1989-04-14', '2013-02-14');
INSERT INTO `dbi_test_date` VALUES (7, '1981-04-14', '2009-04-13');
INSERT INTO `dbi_test_date` VALUES (8, '1984-04-14', '2007-04-14');
INSERT INTO `dbi_test_date` VALUES (9, '1975-12-01', '2000-02-01');
INSERT INTO `dbi_test_date` VALUES (10, '1993-10-01', '2014-01-14');
INSERT INTO `dbi_test_date` VALUES (11, '1993-03-18', '2014-12-11');
INSERT INTO `dbi_test_date` VALUES (12, '1990-06-28', '2009-12-04');
INSERT INTO `dbi_test_date` VALUES (13, '1995-08-17', '2016-03-10');
INSERT INTO `dbi_test_date` VALUES (14, '1988-02-14', '2008-08-01');
INSERT INTO `dbi_test_date` VALUES (15, '1984-02-01', '2005-06-14');
INSERT INTO `dbi_test_date` VALUES (16, '1972-01-14', '2000-02-10');
INSERT INTO `dbi_test_date` VALUES (17, '1973-04-14', '1998-10-01');
INSERT INTO `dbi_test_date` VALUES (18, '1968-04-14', '1989-03-01');
INSERT INTO `dbi_test_date` VALUES (19, '1966-11-24', '1988-09-21');

-- ----------------------------
-- Table structure for dbi_test_name
-- ----------------------------
DROP TABLE IF EXISTS `dbi_test_name`;
CREATE TABLE `dbi_test_name`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_test_name
-- ----------------------------
INSERT INTO `dbi_test_name` VALUES (1, '妙', '婧', '女');
INSERT INTO `dbi_test_name` VALUES (2, '鹏', '涛', '男');
INSERT INTO `dbi_test_name` VALUES (3, '旭', '炎', '男');
INSERT INTO `dbi_test_name` VALUES (4, '翠', '岚', '女');
INSERT INTO `dbi_test_name` VALUES (5, '骏', '琛', '男');
INSERT INTO `dbi_test_name` VALUES (6, '浩', '歌', '男');
INSERT INTO `dbi_test_name` VALUES (7, '瀚', '海', '男');
INSERT INTO `dbi_test_name` VALUES (8, '昊', '天', '男');
INSERT INTO `dbi_test_name` VALUES (9, '鹤', '轩', '男');
INSERT INTO `dbi_test_name` VALUES (10, '曜', '坤', '男');
INSERT INTO `dbi_test_name` VALUES (11, '睿', '思', '男');
INSERT INTO `dbi_test_name` VALUES (12, '姗', '姗', '女');
INSERT INTO `dbi_test_name` VALUES (13, '慧', '月', '女');
INSERT INTO `dbi_test_name` VALUES (14, '娜', '娜', '女');
INSERT INTO `dbi_test_name` VALUES (15, '婉', '柔', '女');
INSERT INTO `dbi_test_name` VALUES (16, '烨', '熠', '男');
INSERT INTO `dbi_test_name` VALUES (17, '翰', '林', '男');
INSERT INTO `dbi_test_name` VALUES (18, '晓', '晨', '男');
INSERT INTO `dbi_test_name` VALUES (19, '彭', '越', '男');
INSERT INTO `dbi_test_name` VALUES (20, '浩', '邈', '男');
INSERT INTO `dbi_test_name` VALUES (21, '嘉', '实', '男');
INSERT INTO `dbi_test_name` VALUES (22, '雯', '丽', '女');
INSERT INTO `dbi_test_name` VALUES (23, '萱', '彤', '女');
INSERT INTO `dbi_test_name` VALUES (24, '蓉', '蓉', '女');

-- ----------------------------
-- Table structure for dbi_test_surname
-- ----------------------------
DROP TABLE IF EXISTS `dbi_test_surname`;
CREATE TABLE `dbi_test_surname`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓',
  `is` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbi_test_surname
-- ----------------------------
INSERT INTO `dbi_test_surname` VALUES (1, '赵', NULL);
INSERT INTO `dbi_test_surname` VALUES (2, '钱', NULL);
INSERT INTO `dbi_test_surname` VALUES (3, '孙', NULL);
INSERT INTO `dbi_test_surname` VALUES (4, '李', NULL);
INSERT INTO `dbi_test_surname` VALUES (5, '周', NULL);
INSERT INTO `dbi_test_surname` VALUES (6, '吴', NULL);
INSERT INTO `dbi_test_surname` VALUES (7, '郑', NULL);
INSERT INTO `dbi_test_surname` VALUES (8, '王', NULL);
INSERT INTO `dbi_test_surname` VALUES (9, '冯', NULL);
INSERT INTO `dbi_test_surname` VALUES (10, '陈', NULL);
INSERT INTO `dbi_test_surname` VALUES (11, '蒋', NULL);
INSERT INTO `dbi_test_surname` VALUES (12, '沈', NULL);
INSERT INTO `dbi_test_surname` VALUES (13, '韩', NULL);
INSERT INTO `dbi_test_surname` VALUES (14, '杨', NULL);
INSERT INTO `dbi_test_surname` VALUES (15, '朱', NULL);
INSERT INTO `dbi_test_surname` VALUES (16, '秦', NULL);
INSERT INTO `dbi_test_surname` VALUES (17, '许', NULL);
INSERT INTO `dbi_test_surname` VALUES (18, '尤', NULL);
INSERT INTO `dbi_test_surname` VALUES (19, '何', NULL);
INSERT INTO `dbi_test_surname` VALUES (20, '吕', NULL);
INSERT INTO `dbi_test_surname` VALUES (21, '施', NULL);
INSERT INTO `dbi_test_surname` VALUES (22, '张', NULL);
INSERT INTO `dbi_test_surname` VALUES (23, '孔', NULL);
INSERT INTO `dbi_test_surname` VALUES (24, '曹', NULL);
INSERT INTO `dbi_test_surname` VALUES (25, '严', NULL);
INSERT INTO `dbi_test_surname` VALUES (26, '金', NULL);
INSERT INTO `dbi_test_surname` VALUES (27, '姜', NULL);
INSERT INTO `dbi_test_surname` VALUES (28, '陶', NULL);
INSERT INTO `dbi_test_surname` VALUES (29, '邹', NULL);
INSERT INTO `dbi_test_surname` VALUES (30, '鲁', NULL);
INSERT INTO `dbi_test_surname` VALUES (31, '俞', NULL);
INSERT INTO `dbi_test_surname` VALUES (32, '苗', NULL);
INSERT INTO `dbi_test_surname` VALUES (33, '方', NULL);
INSERT INTO `dbi_test_surname` VALUES (34, '章', NULL);
INSERT INTO `dbi_test_surname` VALUES (35, '薛', NULL);
INSERT INTO `dbi_test_surname` VALUES (36, '顾', NULL);
INSERT INTO `dbi_test_surname` VALUES (37, '袁', NULL);
INSERT INTO `dbi_test_surname` VALUES (38, '康', NULL);
INSERT INTO `dbi_test_surname` VALUES (39, '樊', NULL);
INSERT INTO `dbi_test_surname` VALUES (40, '刘', NULL);
INSERT INTO `dbi_test_surname` VALUES (41, '孙', NULL);
INSERT INTO `dbi_test_surname` VALUES (42, '牛', NULL);
INSERT INTO `dbi_test_surname` VALUES (43, '熊', NULL);
INSERT INTO `dbi_test_surname` VALUES (44, '杜', NULL);

-- ----------------------------
-- Table structure for ehr_activity
-- ----------------------------
DROP TABLE IF EXISTS `ehr_activity`;
CREATE TABLE `ehr_activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动主题',
  `activityAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动地址',
  `introduce` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动简介',
  `activityTheDetail` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动详情',
  `initateTime` datetime NULL DEFAULT NULL COMMENT '活动时间',
  `spending` int(11) NULL DEFAULT NULL COMMENT '活动消费',
  `state` int(2) NULL DEFAULT NULL COMMENT '状态',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '组织人',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '团建活动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_activity
-- ----------------------------
INSERT INTO `ehr_activity` VALUES (1, '超越梦想再创辉煌', '湖北宜昌桃花源大酒店', '公司年会', '公司超越梦想再创辉煌主题晚会', '2008-12-20 00:00:00', 180000, 1, 9, 0);
INSERT INTO `ehr_activity` VALUES (2, '激情闪耀共创辉煌', '湖北武汉汉庭大酒店', '公司年会', '激情闪耀共创辉煌主题晚会', '2011-12-29 00:00:00', 210000, 1, 8, 0);
INSERT INTO `ehr_activity` VALUES (3, '继往开来再创佳绩', '北京京城一号大酒店', '公司年会', '继往开来再创佳绩主题晚会', '2010-12-29 20:00:00', 240000, 1, 9, 0);
INSERT INTO `ehr_activity` VALUES (4, '继往开来辉煌依旧', '湖南长沙天庆大酒店', '公司年会', '继往开来辉煌依旧主题晚会', '2005-12-02 00:00:00', 260000, 1, 9, 0);
INSERT INTO `ehr_activity` VALUES (5, '全心全力见心见行', '浙江温州黄鹤大酒店', '公司年会', '全心全力见心见行主题晚会', '2012-12-29 20:00:00', 280000, 1, 9, 0);
INSERT INTO `ehr_activity` VALUES (6, '同心同德起帆远航', '重庆金冠大酒店', '公司年会', '同心同德起帆远航主题晚会', '2014-02-14 20:00:00', 290000, 1, 1, 0);
INSERT INTO `ehr_activity` VALUES (7, '同舟共济分享共赢', '湖北武汉金盏酒店', '公司年会', '同舟共济分享共赢主题晚会', '2014-12-29 20:00:00', 310000, 1, 1, 0);
INSERT INTO `ehr_activity` VALUES (19, '为蔷薇', '请问', ' 请问', '请问', '2019-01-29 16:00:00', 11111, 0, 1, NULL);

-- ----------------------------
-- Table structure for ehr_applicant
-- ----------------------------
DROP TABLE IF EXISTS `ehr_applicant`;
CREATE TABLE `ehr_applicant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '箱邮',
  `age` int(2) NULL DEFAULT NULL COMMENT '年龄',
  `currentAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现住址',
  `applicantTime` date NULL DEFAULT NULL COMMENT '应聘时间',
  `specialty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '技术特长',
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试官评价面',
  `mark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应聘者管理表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_applicant
-- ----------------------------
INSERT INTO `ehr_applicant` VALUES (1, '李宇龙', 0, '13578945612', '991408278', '1072571403@qq.com', 26, '湖北宜昌', '2013-02-13', '善与人交流，专业技能强', '外表精神，沟通能力强，学习能力强，工作经验丰富，团队合作精神对企业的认可强', '优秀', 1);
INSERT INTO `ehr_applicant` VALUES (2, '李晓晨', 0, '17765248964', '1369191990', '1072571403@qq.com', 24, '湖北武汉', '2013-06-27', '专业技术强', '外表精神，沟通能力一般，学习能力一般，工作经验丰富，团队合作精神对企业的认可一般', '良好', 1);
INSERT INTO `ehr_applicant` VALUES (3, '曾庆', 1, '13972379641', '1833575641', '1072571403@qq.com', 31, '四川成都', '2018-03-02', '专业能力强', '衣着整洁，沟通能力弱，学习能力强，缺少工作经验，团队合作精神对企业的认可一般', '优秀', 1);
INSERT INTO `ehr_applicant` VALUES (4, '曾新城', 1, '13465238462', '264489216', '264489216@qq.com', 24, '北京', '2014-03-14', '善与人交流', '衣着整洁，沟通能力强，学习能力一般，工作经验少，团队合作精神对企业的认可一般', '优秀', 1);
INSERT INTO `ehr_applicant` VALUES (5, '彭庆喜', 1, '16596348524', '784163258', '784163258@qq.com', 22, '上海', '2009-08-24', '善与人交流', '外表精神，沟通能力强，学习能力弱，工作经验丰富，团队合作精神对企业的认可一般', '良好', 1);
INSERT INTO `ehr_applicant` VALUES (6, '王雪', 0, '15436852464', '1236478654', '1236478654@qq.com', 27, '湖南长沙', '2011-11-03', '为人乐观，积极向上', '外表精神，沟通能力一般，学习能力一般，工作经验少，团队合作精神对企业的认可一般', '良好', 1);
INSERT INTO `ehr_applicant` VALUES (7, '朱文倩', 0, '16826123415', '336548515', '336548515@qq.com', 35, '四川汶川', '2015-09-28', '为人乐观，积极向上', '衣着整洁，沟通能力弱，学习能力一般，工作经验少，团队合作精神对企业的认可弱', '良好', 1);
INSERT INTO `ehr_applicant` VALUES (8, '胡皓', 1, '12265845324', '965412258', '965412258@qq.com', 22, '四川绵竹', '2011-03-16', '专业技能强', '衣着整洁，沟通能力一般，学习能力强，工作经验丰富，团队合作精神对企业的认可一般', '良好', 1);
INSERT INTO `ehr_applicant` VALUES (9, '任天钦', 1, '13654852695', '1022122151', '1022122151@qq.com', 21, '湖北宜昌', '2008-12-30', '专业技能强', '外表精神，沟通能力一般，学习能力强，工作经验丰富，团队合作精神对企业的认可强', '优秀', 1);
INSERT INTO `ehr_applicant` VALUES (10, '李鑫磊', 1, '14798569874', '444651579', '444651579@qq.com', 26, '湖北武汉', '2016-06-16', '善与人交流', '外表精神，沟通能力强，学习能力一般，工作经验少，团队合作精神对企业的认可一般', '优秀', 1);
INSERT INTO `ehr_applicant` VALUES (11, '刘畅', 0, '16855446852', '334615978', '334615978@qq.com', 30, '湖南长沙', '2011-01-16', '善与人交流', '衣着整洁，沟通能力强，学习能力弱，工作经验丰富，团队合作精神对企业的认可一般', '良好', 1);
INSERT INTO `ehr_applicant` VALUES (12, '阮雪菲', 0, '15986423684', '20315697451', '20315697451@qq.com', 29, '四川雅安', '2013-08-16', '善与人交流，专业技能强', '外表精神，沟通能力强，学习能力强，工作经验丰富，团队合作精神对企业的认可强', '优秀', 1);
INSERT INTO `ehr_applicant` VALUES (13, '罗松', 1, '13654896325', '852946547', '852946547@qq.com', 27, '重庆', '2013-06-23', '为人乐观，积极向上', '外表精神，沟通能力一般，学习能力一般，工作经验丰富，团队合作精神对企业的认可强', '良好', 0);
INSERT INTO `ehr_applicant` VALUES (14, '林轩', 1, '16584563257', '2246066842', '2246066842@qq.com', 26, '广东东菀', '2016-07-13', '善与人交流，专业技能强', '衣着整洁，沟通能力强，学习能力强，工作经验少，团队合作精神对企业的认可一般', '优秀', 1);
INSERT INTO `ehr_applicant` VALUES (15, '韩立', 1, '14636587462', '3154654158', '3154654158@qq.com', 28, '广东珠海', '2018-06-14', '善与人交流', '外表精神，沟通能力强，学习能力弱，工作经验丰富，团队合作精神对企业的认可强', '优秀', 1);
INSERT INTO `ehr_applicant` VALUES (16, '成傲天', 1, '16585255246', '456821539', '456821539@qq.com', 26, '广州深圳', '2014-11-30', '专业技能强', '衣着整洁，沟通能力一般，学习能力强，工作经验丰富，团队合作精神对企业的认可强', '良好', 0);
INSERT INTO `ehr_applicant` VALUES (17, '赵昊', 1, '16699665524', '695214582', '695214582@qq.com', 25, '浙江杭州', '2016-10-09', '专业技能强', '衣着整洁，沟通能力弱，学习能力强，工作经验丰富，团队合作精神对企业的认可弱', '优秀', 0);
INSERT INTO `ehr_applicant` VALUES (18, '彭玉贤', 0, '15842364984', '798532158', '798532158@qq.com', 32, '浙江温州', '2010-10-05', '为人乐观，积极向上', '外表精神，沟通能力弱，学习能力一般，工作经验丰富，团队合作精神对企业的认可一般', '优秀', 0);
INSERT INTO `ehr_applicant` VALUES (20, '葛大力', 1, '16888888888', '3458492134', '3458492134@qq.com', 20, '黑龙江大庆', '2017-05-15', '专业技能强', '衣着整洁，沟通能力弱，学习能力强，工作经验丰富，团队合作精神对企业的认可一般', '良好', 0);

-- ----------------------------
-- Table structure for ehr_articlewages
-- ----------------------------
DROP TABLE IF EXISTS `ehr_articlewages`;
CREATE TABLE `ehr_articlewages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '员工id',
  `empName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应员工',
  `shouldSend` int(11) NULL DEFAULT NULL COMMENT '应发工资',
  `bonus` int(11) NULL DEFAULT NULL COMMENT '奖金',
  `fine` int(11) NULL DEFAULT NULL COMMENT '罚款',
  `insured` int(11) NULL DEFAULT NULL COMMENT '投保',
  `time` datetime NULL DEFAULT NULL COMMENT '发放时间',
  `realHair` int(11) NULL DEFAULT NULL COMMENT '实发工资',
  `logicToDelete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 872 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工资条表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_articlewages
-- ----------------------------
INSERT INTO `ehr_articlewages` VALUES (859, 1, '李一航', 4500, 500, 200, 90, '2018-01-01 21:48:49', 4710, 1);
INSERT INTO `ehr_articlewages` VALUES (860, 2, '郭盛文', 6500, 500, 200, 150, '2018-01-01 21:48:49', 6650, 1);
INSERT INTO `ehr_articlewages` VALUES (861, 3, '罗曹圆', 6800, 500, 200, 350, '2018-01-01 21:48:49', 6750, 1);
INSERT INTO `ehr_articlewages` VALUES (862, 4, '李晓晨', 6800, 300, 550, 450, '2018-01-01 21:48:49', 6100, 2);
INSERT INTO `ehr_articlewages` VALUES (863, 5, '梁勇', 6800, 300, 300, 250, '2018-01-01 21:48:49', 6550, 2);
INSERT INTO `ehr_articlewages` VALUES (864, 6, '卢运飞', 6800, 300, 550, 250, '2018-01-01 21:48:49', 6300, 2);
INSERT INTO `ehr_articlewages` VALUES (865, 7, '谭金华', 6500, 300, 200, 350, '2018-01-01 21:48:49', 6250, 2);
INSERT INTO `ehr_articlewages` VALUES (866, 8, '李新豪', 7355, 0, 200, 388, '2018-01-01 21:48:49', 6767, 2);
INSERT INTO `ehr_articlewages` VALUES (867, 9, '李向佳', 6300, 0, 200, 250, '2018-01-01 21:48:49', 5850, 3);
INSERT INTO `ehr_articlewages` VALUES (868, 10, '李春', 8000, 800, 200, 250, '2018-01-01 21:48:49', 8350, 3);
INSERT INTO `ehr_articlewages` VALUES (869, 11, '李南飞', 7800, 500, 300, 350, '2018-01-01 21:48:49', 7650, 3);
INSERT INTO `ehr_articlewages` VALUES (870, 12, '罗宏宇', 7800, 0, 130, 350, '2018-01-01 21:48:49', 7320, 3);
INSERT INTO `ehr_articlewages` VALUES (871, 13, '彭世柏', 8355, 0, 200, 388, '2018-01-01 21:48:49', 7767, 3);

-- ----------------------------
-- Table structure for ehr_attendance
-- ----------------------------
DROP TABLE IF EXISTS `ehr_attendance`;
CREATE TABLE `ehr_attendance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clockInTime` datetime NULL DEFAULT NULL,
  `clockInIocation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag` int(11) NULL DEFAULT NULL,
  `emp_id` int(11) NULL DEFAULT NULL,
  `logictoDelete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1393 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考勤表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_attendance
-- ----------------------------
INSERT INTO `ehr_attendance` VALUES (1331, '2018-04-23 08:30:00', '旷工', 3, 1, 1);
INSERT INTO `ehr_attendance` VALUES (1335, '2018-04-23 08:30:00', '旷工', 3, 5, 1);
INSERT INTO `ehr_attendance` VALUES (1336, '2018-04-23 08:30:00', '旷工', 3, 6, 1);
INSERT INTO `ehr_attendance` VALUES (1337, '2018-04-23 08:30:00', '旷工', 3, 7, 1);
INSERT INTO `ehr_attendance` VALUES (1338, '2018-04-23 08:30:00', '旷工', 3, 8, 1);
INSERT INTO `ehr_attendance` VALUES (1339, '2018-04-23 08:30:00', '旷工', 3, 9, 1);
INSERT INTO `ehr_attendance` VALUES (1340, '2018-04-23 08:30:00', '旷工', 3, 10, 1);
INSERT INTO `ehr_attendance` VALUES (1341, '2018-04-23 08:30:00', '旷工', 3, 11, 1);
INSERT INTO `ehr_attendance` VALUES (1342, '2018-04-23 08:30:00', '旷工', 3, 12, 1);
INSERT INTO `ehr_attendance` VALUES (1389, '2019-06-30 01:50:00', '湖北省武汉市东西湖区五环大道43号', 2, 1, 1);
INSERT INTO `ehr_attendance` VALUES (1390, '2019-06-29 23:50:00', '湖北省武汉市东西湖区五环大道43号', 1, 1, 1);
INSERT INTO `ehr_attendance` VALUES (1391, '2019-06-30 06:50:00', '湖北省武汉市东西湖区五环大道43号', 3, 1, 1);
INSERT INTO `ehr_attendance` VALUES (1392, '2019-06-30 10:50:00', '湖北省武汉市东西湖区五环大道43号', 1, 1, 1);

-- ----------------------------
-- Table structure for ehr_channel
-- ----------------------------
DROP TABLE IF EXISTS `ehr_channel`;
CREATE TABLE `ehr_channel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '渠道名称或地址',
  `mark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `addTime` date NULL DEFAULT NULL COMMENT '渠道上传时间',
  `logicToDelete` int(11) NULL DEFAULT 1 COMMENT '逻辑删除字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '渠道管理表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_channel
-- ----------------------------
INSERT INTO `ehr_channel` VALUES (1, '猎聘网', '长期合作', '2018-03-15', 0);
INSERT INTO `ehr_channel` VALUES (2, '智联招聘网', '长期合作', '2018-03-14', 0);
INSERT INTO `ehr_channel` VALUES (3, '人才网111', '长期合作111', '2018-03-22', 0);
INSERT INTO `ehr_channel` VALUES (4, '51Job', '长期合作', '2018-03-12', 1);
INSERT INTO `ehr_channel` VALUES (5, '前程无忧', '长期合作', '2018-03-05', 1);
INSERT INTO `ehr_channel` VALUES (6, '58同城', '长期合作', '2018-02-27', 1);
INSERT INTO `ehr_channel` VALUES (7, '赶集网', '合作', '2018-02-25', 1);
INSERT INTO `ehr_channel` VALUES (8, '中华英才网', '合作', '2018-03-29', 1);
INSERT INTO `ehr_channel` VALUES (9, '百姓招聘网', '合作', '2018-03-08', 0);
INSERT INTO `ehr_channel` VALUES (10, '智通人才网', '合作', '2018-02-22', 0);
INSERT INTO `ehr_channel` VALUES (11, '2', '1', '2018-04-01', 0);
INSERT INTO `ehr_channel` VALUES (12, '111', '11', '2019-01-23', 1);

-- ----------------------------
-- Table structure for ehr_company
-- ----------------------------
DROP TABLE IF EXISTS `ehr_company`;
CREATE TABLE `ehr_company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司所在地',
  `mark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除',
  `createTime` datetime NULL DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_company
-- ----------------------------
INSERT INTO `ehr_company` VALUES (1, '隐世集团', '武汉光谷软件园', '武汉500强公司其中之一2', 1, '2018-04-11 17:05:02');
INSERT INTO `ehr_company` VALUES (2, '武汉创新有限公司', '武汉光谷软件园', '武汉第一家进入500强的公司', 1, '2018-04-26 17:05:06');
INSERT INTO `ehr_company` VALUES (3, '武汉德馨有限公司', '武汉光谷软件园', '武汉一家实力公司', 1, '2018-04-27 17:05:09');
INSERT INTO `ehr_company` VALUES (4, '武汉天意有限公司', '武汉洪山区', '一家实力中上，门槛低的公司', 1, '2018-04-17 17:05:13');
INSERT INTO `ehr_company` VALUES (5, '武汉哲天有限公司', '武汉洪山区', '一家小公司，实力并不出众', 1, NULL);
INSERT INTO `ehr_company` VALUES (6, '宜昌金江银座股份有限公司', '宜昌伍家区', '位于宜昌的一个大集团', 1, NULL);
INSERT INTO `ehr_company` VALUES (7, '宜昌瑞祥有限公司', '宜昌伍家区', '宜昌制药业巨头', 1, NULL);
INSERT INTO `ehr_company` VALUES (11, '宝武钢铁有限公司', '上海市浦东新区', '中国钢铁制造业巨头', 0, NULL);
INSERT INTO `ehr_company` VALUES (12, '恒大地产集团', '广州天河区', '中国房产以及开发资质第一的公司', 0, NULL);
INSERT INTO `ehr_company` VALUES (13, '碧桂园控股有限公司', '广州佛山区', '中国目前最大的专业住宅开发区', 0, NULL);
INSERT INTO `ehr_company` VALUES (14, '中国保利集团', '湖北武汉', '武汉500强公司其中之一', 0, NULL);
INSERT INTO `ehr_company` VALUES (24, 'ashi ', 'qeqwe', 'qweq', NULL, NULL);
INSERT INTO `ehr_company` VALUES (25, 'qweq', 'qwe', 'qwe', NULL, NULL);

-- ----------------------------
-- Table structure for ehr_compensation
-- ----------------------------
DROP TABLE IF EXISTS `ehr_compensation`;
CREATE TABLE `ehr_compensation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `basicSalary` int(11) NULL DEFAULT NULL COMMENT '基本工资',
  `subsidies` int(11) NULL DEFAULT NULL COMMENT '补贴',
  `socialSecurity_id` int(11) NULL DEFAULT NULL COMMENT '社保率',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '对应员工',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '薪资表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_compensation
-- ----------------------------
INSERT INTO `ehr_compensation` VALUES (46, 3000, 500, 1, 1, 1);
INSERT INTO `ehr_compensation` VALUES (47, 5000, 500, 1, 2, 1);
INSERT INTO `ehr_compensation` VALUES (48, 5000, 1000, 2, 3, 1);
INSERT INTO `ehr_compensation` VALUES (49, 5000, 800, 3, 4, 1);
INSERT INTO `ehr_compensation` VALUES (50, 3000, 800, 3, 5, 1);
INSERT INTO `ehr_compensation` VALUES (51, 5000, 800, 3, 6, 1);
INSERT INTO `ehr_compensation` VALUES (52, 5000, 800, 4, 7, 1);
INSERT INTO `ehr_compensation` VALUES (53, 5000, 800, 2, 8, 1);
INSERT INTO `ehr_compensation` VALUES (54, 5000, 800, 2, 9, 1);
INSERT INTO `ehr_compensation` VALUES (55, 5000, 800, 4, 10, 1);
INSERT INTO `ehr_compensation` VALUES (56, 5000, 800, 3, 11, 1);
INSERT INTO `ehr_compensation` VALUES (57, 5000, 500, 3, 12, 1);

-- ----------------------------
-- Table structure for ehr_departure
-- ----------------------------
DROP TABLE IF EXISTS `ehr_departure`;
CREATE TABLE `ehr_departure`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `instructions` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '离职说明',
  `departureTime` date NULL DEFAULT NULL COMMENT '离职时间',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '离职员工',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '离职表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_departure
-- ----------------------------
INSERT INTO `ehr_departure` VALUES (17, '不上班', '2018-04-06', 4, 0);
INSERT INTO `ehr_departure` VALUES (18, '公司不做事', '2018-04-08', 5, 0);
INSERT INTO `ehr_departure` VALUES (19, '效率低', '2018-04-10', 6, 0);
INSERT INTO `ehr_departure` VALUES (20, '玩手机', '2018-04-16', 18, 0);
INSERT INTO `ehr_departure` VALUES (30, '11111', '2019-06-29', 3, NULL);
INSERT INTO `ehr_departure` VALUES (31, '222', '2019-06-17', 12, NULL);
INSERT INTO `ehr_departure` VALUES (32, '2222', '2019-06-29', 1, NULL);
INSERT INTO `ehr_departure` VALUES (33, '2', '2019-06-29', 2, NULL);
INSERT INTO `ehr_departure` VALUES (34, '7', '2019-06-02', 7, NULL);
INSERT INTO `ehr_departure` VALUES (35, '8', '2019-06-29', 8, NULL);
INSERT INTO `ehr_departure` VALUES (36, '10', '2019-06-29', 10, NULL);

-- ----------------------------
-- Table structure for ehr_dept
-- ----------------------------
DROP TABLE IF EXISTS `ehr_dept`;
CREATE TABLE `ehr_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `mark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `company_id` int(11) NULL DEFAULT NULL COMMENT '所属公司',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除',
  `avatar` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'crm_部门头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_dept
-- ----------------------------
INSERT INTO `ehr_dept` VALUES (1, '人事部', '负责管理公司的人员变动', 1, 1, '/other/img/2018/02/26/08c71f65-4303-49e0-b2fc-4d585b5963f0.jpg');
INSERT INTO `ehr_dept` VALUES (2, '行政部', '研究公司发展计划', 1, 1, '/other/img/2018/02/26/08c71f65-4303-49e0-b2fc-4d585b5963f0.jpg');
INSERT INTO `ehr_dept` VALUES (3, '文化部', '组织制定公司整体形象', 1, 1, '/other/img/2018/02/26/08c71f65-4303-49e0-b2fc-4d585b5963f0.jpg');
INSERT INTO `ehr_dept` VALUES (4, '业绩部', '协助管理层制定员工综合考评', 1, 1, '/other/img/2018/02/26/08c71f65-4303-49e0-b2fc-4d585b5963f0.jpg');
INSERT INTO `ehr_dept` VALUES (5, '档案部', '制定公司档案制度', 1, 1, '/other/img/2018/02/26/08c71f65-4303-49e0-b2fc-4d585b5963f0.jpg');
INSERT INTO `ehr_dept` VALUES (6, '人力资源部', '公司重要文件起草，对外联络工作', 1, 1, '/other/img/2018/02/26/08c71f65-4303-49e0-b2fc-4d585b5963f0.jpg');
INSERT INTO `ehr_dept` VALUES (7, '维护管理部', '车辆管理与保险事宜', 1, 1, '/other/img/2018/02/26/08c71f65-4303-49e0-b2fc-4d585b5963f0.jpg');
INSERT INTO `ehr_dept` VALUES (8, '后勤部', '采购日常用品，优化办公环境与保洁', 1, 0, '/other/img/2018/02/26/08c71f65-4303-49e0-b2fc-4d585b5963f0.jpg');
INSERT INTO `ehr_dept` VALUES (9, '董事会', '负责公司主要工作方向，制定计划', 1, 0, '/other/img/2018/02/26/08c71f65-4303-49e0-b2fc-4d585b5963f0.jpg');
INSERT INTO `ehr_dept` VALUES (10, '11', '10', 1, 1, NULL);
INSERT INTO `ehr_dept` VALUES (11, '22', '22', 1, 1, NULL);
INSERT INTO `ehr_dept` VALUES (94, 'qqwe', 'qwe', 4, NULL, NULL);

-- ----------------------------
-- Table structure for ehr_emp
-- ----------------------------
DROP TABLE IF EXISTS `ehr_emp`;
CREATE TABLE `ehr_emp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '工号',
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '企业微信id',
  `sign` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'crm_签名',
  `avatar` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'crm_头像',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `img` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件照',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `QQ` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `age` int(2) NULL DEFAULT NULL COMMENT '年龄',
  `currentAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现住址',
  `inductionTime` date NULL DEFAULT NULL COMMENT '入职时间',
  `state` int(2) NULL DEFAULT NULL COMMENT '状态//五种情况：在职(1)，出差(2)，离职(3)，休假(4)，请假(5)',
  `specialty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '特长',
  `mark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `isLogin` int(11) NULL DEFAULT NULL COMMENT '是否已经登录系统 1.已经登录 0未登录',
  `dept_id` int(11) NULL DEFAULT NULL COMMENT '部门',
  `paygrades_id` int(11) NULL DEFAULT NULL COMMENT '薪资等级',
  `position_id` int(11) NULL DEFAULT NULL COMMENT '职位',
  `logicToDelete` int(2) NULL DEFAULT NULL COMMENT '逻辑删除（默认为1，删除后为0）',
  `status` int(11) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '投票者投票状态(1.该人已投票某人，不能再次投票，0可以投票)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 196559 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_emp
-- ----------------------------
INSERT INTO `ehr_emp` VALUES (11, 'LeeYe', NULL, NULL, '蔡伟', '234', NULL, NULL, '男', '10302020202', '2273711570', '1394003508@qq.com', 23, '杭州', NULL, NULL, NULL, NULL, NULL, 6, NULL, 5, NULL, NULL);
INSERT INTO `ehr_emp` VALUES (12, 'JiaYiAn', NULL, '/other/img/2018/02/26/5faefad0-a3b2-4472-9afa-f328c04d5c87.jpg', '贾义安', '123', '/other/img/4.png', '1995-03-16', '男', '', '1538357598', '', 23, '杭州', '2016-05-24', 1, 'Spring_mvc', '999', 0, 3, 1, 6, 0, 00000000001);
INSERT INTO `ehr_emp` VALUES (13, '20180421192742', NULL, '/other/img/2018/02/26/5faefad0-a3b2-4472-9afa-f328c04d5c87.jpg', '李龙', '123', '/other/img/4.png', '1996-04-21', '男', '', '386789351', '', 22, '武汉', '2018-04-09', 1, '特长', '端茶送水', NULL, 4, 2, 14, 1, 00000000000);
INSERT INTO `ehr_emp` VALUES (196558, 'qwewq', NULL, NULL, 'qwe', '123', NULL, NULL, '男', '123123123', '123123123', '3123123', 11, '112312312', NULL, NULL, NULL, NULL, NULL, 2, NULL, 4, NULL, NULL);

-- ----------------------------
-- Table structure for ehr_empdate
-- ----------------------------
DROP TABLE IF EXISTS `ehr_empdate`;
CREATE TABLE `ehr_empdate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工id',
  `empName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打卡分组（如：上班日）',
  `checkin_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打卡类型（如：上下班）',
  `exception_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常类型',
  `checkin_time` bigint(20) NULL DEFAULT NULL COMMENT '打卡时间',
  `location_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `location_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打卡地点',
  `wifiname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_empdate
-- ----------------------------
INSERT INTO `ehr_empdate` VALUES (1, 'FuTianDi', NULL, '上班', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `ehr_empdate` VALUES (2, 'FuTianDi', NULL, '上班', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `ehr_empdate` VALUES (3, 'FuTianDi', NULL, '上班', '上班打卡', '时间异常', 1547865203, '隐世集团人力资源EHR', '湖北省武汉市洪山区华师园北路华师园北路16号', '');
INSERT INTO `ehr_empdate` VALUES (4, 'FuTianDi', NULL, '上班', '下班打卡', '', 1547888608, '隐世集团人力资源EHR', '湖北省武汉市洪山区华师园北路华师园北路16号', '');
INSERT INTO `ehr_empdate` VALUES (5, 'FuTianDi', NULL, '上班', '上班打卡', '时间异常', 1547865203, '隐世集团人力资源EHR', '湖北省武汉市洪山区华师园北路华师园北路16号', '');
INSERT INTO `ehr_empdate` VALUES (6, 'FuTianDi', NULL, '上班', '下班打卡', '', 1547888608, '隐世集团人力资源EHR', '湖北省武汉市洪山区华师园北路华师园北路16号', '');
INSERT INTO `ehr_empdate` VALUES (7, 'FuTianDi', NULL, '上班', '上班打卡', '时间异常', 1547865203, '隐世集团人力资源EHR', '湖北省武汉市洪山区华师园北路华师园北路16号', '');
INSERT INTO `ehr_empdate` VALUES (8, 'FuTianDi', NULL, '上班', '下班打卡', '', 1547888608, '隐世集团人力资源EHR', '湖北省武汉市洪山区华师园北路华师园北路16号', '');
INSERT INTO `ehr_empdate` VALUES (9, 'FuTianDi', '付天地', '上班', '上班打卡', '时间异常', 1547865203, '隐世集团人力资源EHR', '湖北省武汉市洪山区华师园北路华师园北路16号', '');
INSERT INTO `ehr_empdate` VALUES (10, 'FuTianDi', '付天地', '上班', '下班打卡', '', 1547888608, '隐世集团人力资源EHR', '湖北省武汉市洪山区华师园北路华师园北路16号', '');
INSERT INTO `ehr_empdate` VALUES (11, 'FuTianDi', NULL, '上班', '上班打卡', '未打卡', 1548032400, '', '', '');
INSERT INTO `ehr_empdate` VALUES (12, 'FuTianDi', NULL, '上班', '下班打卡', '未打卡', 1548061200, '', '', '');
INSERT INTO `ehr_empdate` VALUES (13, 'FuTianDi', '付天地', '上班', '上班打卡', '未打卡', 1548032400, '', '', '');
INSERT INTO `ehr_empdate` VALUES (14, 'FuTianDi', '付天地', '上班', '下班打卡', '未打卡', 1548061200, '', '', '');
INSERT INTO `ehr_empdate` VALUES (15, 'FuTianDi', '付天地', '上班', '上班打卡', '未打卡', 1547946000, '', '', '');
INSERT INTO `ehr_empdate` VALUES (16, 'FuTianDi', '付天地', '上班', '下班打卡', '未打卡', 1547974800, '', '', '');
INSERT INTO `ehr_empdate` VALUES (17, NULL, '隐无为', '上班', '上班打卡', '时间异常', 1561859400000, NULL, NULL, NULL);
INSERT INTO `ehr_empdate` VALUES (18, NULL, '隐无为', '上班', '上班打卡', '正常', 1561852200000, NULL, NULL, NULL);
INSERT INTO `ehr_empdate` VALUES (19, NULL, '隐无为', '上班', '下班打卡', '时间异常', 1561877400000, NULL, NULL, NULL);
INSERT INTO `ehr_empdate` VALUES (20, NULL, '隐无为', '上班', '下班打卡', '正常', 1561891800000, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ehr_holiday
-- ----------------------------
DROP TABLE IF EXISTS `ehr_holiday`;
CREATE TABLE `ehr_holiday`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节日名称',
  `time` date NULL DEFAULT NULL COMMENT '时间',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '假删除数据',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节日祝福语',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节假日表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_holiday
-- ----------------------------
INSERT INTO `ehr_holiday` VALUES (1, '元旦', '2018-01-01', 0, '哈哈');
INSERT INTO `ehr_holiday` VALUES (2, '春节', '2018-02-15', 0, '嘻嘻');
INSERT INTO `ehr_holiday` VALUES (3, '清明节', '2018-04-05', 0, '呵呵');
INSERT INTO `ehr_holiday` VALUES (4, '劳动节', '2018-04-29', 0, '嘿嘿');
INSERT INTO `ehr_holiday` VALUES (5, '端午节', '2018-06-18', 0, '哦哦');
INSERT INTO `ehr_holiday` VALUES (6, '中秋节', '2018-09-24', 0, '嗯嗯');
INSERT INTO `ehr_holiday` VALUES (7, '国庆节', '2018-10-01', 0, '奥奥');
INSERT INTO `ehr_holiday` VALUES (8, '程序猿节', '2018-10-24', 0, 'ok');
INSERT INTO `ehr_holiday` VALUES (9, '光棍节', '2018-11-11', 0, 'paoda');
INSERT INTO `ehr_holiday` VALUES (10, '相亲节', '2019-01-26', 0, '嘻嘻嘻');
INSERT INTO `ehr_holiday` VALUES (11, '光棍节', '2019-01-25', 1, '11');

-- ----------------------------
-- Table structure for ehr_paygrades
-- ----------------------------
DROP TABLE IF EXISTS `ehr_paygrades`;
CREATE TABLE `ehr_paygrades`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级名称',
  `salary` int(11) NULL DEFAULT NULL COMMENT '对应工资',
  `mark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '薪资等级表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_paygrades
-- ----------------------------
INSERT INTO `ehr_paygrades` VALUES (1, '1', 1000, '普通员工', 1);
INSERT INTO `ehr_paygrades` VALUES (2, '2', 2000, '高级员工', 1);
INSERT INTO `ehr_paygrades` VALUES (3, '3', 4000, '主任', 1);
INSERT INTO `ehr_paygrades` VALUES (4, '4', 6000, '经理', 1);
INSERT INTO `ehr_paygrades` VALUES (5, '9', 13213, 'tret', 1);

-- ----------------------------
-- Table structure for ehr_position
-- ----------------------------
DROP TABLE IF EXISTS `ehr_position`;
CREATE TABLE `ehr_position`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `mark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dept_id` int(11) NULL DEFAULT NULL COMMENT '对应部门',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '职位表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_position
-- ----------------------------
INSERT INTO `ehr_position` VALUES (1, '董事长', '负责公司工作方向，制定工作制度', 9, 1);
INSERT INTO `ehr_position` VALUES (2, '总经理', '负责召集总经理办公会议，听取工作汇报', 9, 1);
INSERT INTO `ehr_position` VALUES (3, '副总经理', '主要负责帮助总经理工作', 9, 1);
INSERT INTO `ehr_position` VALUES (4, '主任', '主持办公室全面工作，处理日常行政事件', 2, 1);
INSERT INTO `ehr_position` VALUES (5, '文员', '负责处理各部门文件的打印发送工作', 5, 1);
INSERT INTO `ehr_position` VALUES (6, '主管', '管理人员的动向与制定计划', 1, 1);
INSERT INTO `ehr_position` VALUES (7, '采购员', '负责采购公司需要的物品', 8, 1);
INSERT INTO `ehr_position` VALUES (8, '保洁员', '负责清洁公司，提升办公环境', 8, 1);
INSERT INTO `ehr_position` VALUES (9, '销售员', '推销公司产品', 4, 1);
INSERT INTO `ehr_position` VALUES (10, '市场助理', '研究市场动向，制定销售计划', 4, 1);
INSERT INTO `ehr_position` VALUES (11, '会计', '负责计算公司利润与支出，人员的工资', 1, 0);
INSERT INTO `ehr_position` VALUES (12, '出纳', '负责公司工作方向，制定工作制度', 1, 0);
INSERT INTO `ehr_position` VALUES (13, '程序员', '维护公司软件代码，后期软件维护与软件实施', 7, 0);
INSERT INTO `ehr_position` VALUES (14, '厨师', '负责公司饮食餐饮，与应酬餐的制作', 8, 0);
INSERT INTO `ehr_position` VALUES (15, '普通员工', '刚刚入职', 1, 0);

-- ----------------------------
-- Table structure for ehr_recruitmentdemand
-- ----------------------------
DROP TABLE IF EXISTS `ehr_recruitmentdemand`;
CREATE TABLE `ehr_recruitmentdemand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `skillsRequired` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技能要求',
  `hiring` int(11) NULL DEFAULT NULL COMMENT '招聘人数',
  `wageBudget` int(11) NULL DEFAULT NULL COMMENT '薪资预算',
  `initiateTime` date NULL DEFAULT NULL COMMENT '发起时间',
  `state` int(3) NULL DEFAULT NULL COMMENT '状态',
  `mark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '发布人',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘需求表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_recruitmentdemand
-- ----------------------------
INSERT INTO `ehr_recruitmentdemand` VALUES (1, '会做广式卤鸭翅1111', 51, 19001, '1999-09-08', 1, 'dq111', 1, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (2, '会做蒸花鸭', 12, 1800, '1999-09-09', 2, 'qqq', 1, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (3, '会做糖醋排骨', 10, 2000, '1999-09-09', 2, 'qqq', 1, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (4, '会做鱼香肉丝', 11, 2500, '1999-09-11', 2, 'aaa', 1, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (5, '会做水煮鱼', 15, 2300, '1999-09-13', 2, 'qad', 5, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (6, '会做宫保鸡丁', 16, 2200, '1999-09-15', 2, 'qdaq', 4, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (7, '会做麻婆豆腐', 8, 1500, '1999-09-15', 2, 'qqasdq', 3, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (8, '会做红烧肉', 7, 1800, '1999-09-14', 2, 'qasq', 1, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (9, '会做夫妻肺片', 8, 1900, '1999-09-17', 2, 'asd', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (10, '会做回锅肉', 6, 1800, '1999-09-16', 2, 'gre', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (11, '会做棒棒鸡', 4, 1650, '1999-09-18', 2, 'jy', 4, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (12, '会做醋熘鸡', 2, 1750, '1999-09-12', 2, 'jt', 2, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (13, '会做圆笼粉蒸肉', 6, 1880, '1999-09-11', 2, 't', 3, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (14, '会做东坡肉', 8, 1990, '1999-09-15', 2, 'iui', 3, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (15, '会做瓤莲藕', 4, 1980, '1999-09-14', 2, 'jy', 5, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (16, '会做鸡豆花', 7, 1800, '1999-09-16', 2, 'jt', 4, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (17, '会做泡菜鱼', 8, 1700, '1999-09-14', 2, 'jt', 3, 0);
INSERT INTO `ehr_recruitmentdemand` VALUES (18, '会做烤花揽桂鱼', 4, 1950, '1999-09-18', 2, 't0yj', 3, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (19, '会做冬菇烧蹄筋', 4, 1870, '1999-09-22', 2, 'rt', 24, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (20, '会做奶汤鲜核桃仁', 5, 1980, '1999-09-20', 2, 'reer', 5, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (32, '123', 123, 123, '2018-04-18', 2, '123', 1, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (33, '关怀', 3, 3444, '2018-04-21', 2, '二', 1, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (34, '换个', 4, 345, '2018-04-21', 1, '56', 1, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (35, 'java', 10, 50000, '2018-04-23', 2, '招java初级开发程序员', 21, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (36, 'java', 5, 10000, '2018-07-14', 1, 'gg', 1, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (37, '1111', 111, 111, '1920-10-01', 1, '1111', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (38, '111', 11, 123, '1992-10-01', 2, '111', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (39, '·111', 1231, 123432, '2019-01-24', 2, '12312', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (40, '111', 111, 111, '2019-01-23', 1, '11111111111', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (41, '1', 21, 123423, '2019-01-15', 2, '12321', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (42, '11', 21, 123123, '2019-01-22', 1, '123213', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (43, '123', 123, 123123, '2019-01-29', 2, '12321', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (44, '21', 123, 123, '2019-01-23', 2, '12312', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (45, '123', 1232, 12321, '2019-01-22', 1, '12312', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (46, '12', 123, 123, '2019-01-23', 2, '12312', 2, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (47, '1', 213, 12312, '2019-01-16', 2, '213', 1, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (48, '666', 66, 6666, '2019-01-26', 2, '666', 1, 1);
INSERT INTO `ehr_recruitmentdemand` VALUES (49, '1', 1, 1, '2019-01-23', 2, '1', 1, 1);

-- ----------------------------
-- Table structure for ehr_releases
-- ----------------------------
DROP TABLE IF EXISTS `ehr_releases`;
CREATE TABLE `ehr_releases`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `skillsRequired` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技能要求',
  `hiring` int(11) NULL DEFAULT NULL COMMENT '招聘人数',
  `wageBudget` int(11) NULL DEFAULT NULL COMMENT '薪资预算',
  `initiateTime` datetime NULL DEFAULT NULL COMMENT '发起时间',
  `state` int(2) NULL DEFAULT NULL COMMENT '状态',
  `mark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '发布人',
  `channel_id` int(11) NULL DEFAULT NULL COMMENT '渠道',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘信息发布表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_releases
-- ----------------------------
INSERT INTO `ehr_releases` VALUES (1, '会做广式卤鸭翅', 5, 1900, '1999-09-08 00:00:00', 2, 'dq', 3, 1, 0);
INSERT INTO `ehr_releases` VALUES (3, '会做糖醋排骨', 10, 2000, '1999-09-09 00:00:00', 2, 'qqq', 2, 3, 1);
INSERT INTO `ehr_releases` VALUES (4, '会做鱼香肉丝', 11, 2500, '1999-09-11 00:00:00', 2, 'aaa', 7, 3, 1);
INSERT INTO `ehr_releases` VALUES (5, '会做水煮鱼', 15, 2300, '1999-09-13 00:00:00', 2, 'qad', 5, 1, 1);
INSERT INTO `ehr_releases` VALUES (6, '会做宫保鸡丁', 16, 2200, '1999-09-15 00:00:00', 2, 'qdaq', 4, 2, 1);
INSERT INTO `ehr_releases` VALUES (7, '会做麻婆豆腐', 8, 1500, '1999-09-15 00:00:00', 2, 'qqasdq', 3, 3, 1);
INSERT INTO `ehr_releases` VALUES (8, '会做红烧肉', 7, 1800, '1999-09-14 00:00:00', 2, 'qasq', 1, 4, 1);
INSERT INTO `ehr_releases` VALUES (9, '会做夫妻肺片', 8, 1900, '1999-09-17 00:00:00', 2, 'asd', 2, 5, 1);
INSERT INTO `ehr_releases` VALUES (10, '会做回锅肉', 6, 1800, '1999-09-16 00:00:00', 2, 'gre', 2, 1, 1);
INSERT INTO `ehr_releases` VALUES (11, '会做棒棒鸡', 4, 1650, '1999-09-18 00:00:00', 2, 'jy', 4, 1, 0);
INSERT INTO `ehr_releases` VALUES (12, '会做醋熘鸡', 2, 1750, '1999-09-12 00:00:00', 2, 'jt', 2, 2, 1);
INSERT INTO `ehr_releases` VALUES (13, '会做圆笼粉蒸肉', 6, 1880, '1999-09-11 00:00:00', 2, 't', 3, 3, 1);
INSERT INTO `ehr_releases` VALUES (14, '会做东坡肉', 8, 1990, '1999-09-15 00:00:00', 2, 'iui', 3, 4, 1);
INSERT INTO `ehr_releases` VALUES (15, '会做瓤莲藕', 4, 1980, '1999-09-14 00:00:00', 2, 'jy', 5, 5, 1);
INSERT INTO `ehr_releases` VALUES (16, '会做鸡豆花', 7, 1800, '1999-09-16 00:00:00', 2, 'jt', 4, 6, 1);
INSERT INTO `ehr_releases` VALUES (17, '会做泡菜鱼', 8, 1700, '1999-09-14 00:00:00', 2, 'jt', 3, 1, 1);
INSERT INTO `ehr_releases` VALUES (18, '会做烤花揽桂鱼', 4, 1950, '1999-09-18 00:00:00', 2, 't0yj', 3, 3, 1);
INSERT INTO `ehr_releases` VALUES (19, '会做冬菇烧蹄筋', 4, 1870, '1999-09-22 00:00:00', 2, 'rt', 4, 2, 1);
INSERT INTO `ehr_releases` VALUES (20, '会做奶汤鲜核桃仁', 5, 1980, '1999-09-20 00:00:00', 2, 'reer', 5, 2, 1);
INSERT INTO `ehr_releases` VALUES (32, '会做宫保鸡丁1111', 16, 2200, '2018-04-11 00:00:00', 2, 'qdaq', 1, 1, 1);
INSERT INTO `ehr_releases` VALUES (33, '会做红烧肉23123', 7, 1800, '2018-04-11 00:00:00', 2, 'qasq', 1, 7, 1);
INSERT INTO `ehr_releases` VALUES (34, '会做回锅肉', 6, 1800, '2018-04-11 00:00:00', 2, 'gre', 1, 1, 1);
INSERT INTO `ehr_releases` VALUES (35, '会做棒棒鸡213412312312312', 4, 1650, '2018-04-11 00:00:00', 2, 'jy', 1, 6, 1);
INSERT INTO `ehr_releases` VALUES (36, '会做圆笼粉蒸肉123213', 6, 1880, '2018-04-11 00:00:00', 2, 't', 1, 7, 1);
INSERT INTO `ehr_releases` VALUES (37, '会做瓤莲藕qwewq', 4, 1980, '2018-04-11 00:00:00', 2, 'jy', 1, 8, 1);
INSERT INTO `ehr_releases` VALUES (38, '11111会做鸡豆花', 7, 1800, '2018-04-12 00:00:00', 2, 'jt', 1, 7, 0);
INSERT INTO `ehr_releases` VALUES (39, '会做泡菜鱼11', 8, 1700, '2018-04-12 00:00:00', 2, 'jt', 1, 7, 1);
INSERT INTO `ehr_releases` VALUES (40, '会做烤花揽桂鱼', 123, 1950, '2018-04-13 00:00:00', 2, 't0yj', 1, 1, 1);
INSERT INTO `ehr_releases` VALUES (41, '456', 123, 1232, '2018-04-17 00:00:00', NULL, '123', 1, 1, 0);
INSERT INTO `ehr_releases` VALUES (42, '123', 1231, 123, '2018-04-18 00:00:00', 2, '123', 1, 2, 0);
INSERT INTO `ehr_releases` VALUES (43, 'qwe', 123, 123, '2018-04-18 00:00:00', 2, '123', 1, 1, 0);
INSERT INTO `ehr_releases` VALUES (44, '4', 4, 3, '2018-04-18 00:00:00', 2, 'rr', 1, 1, 0);
INSERT INTO `ehr_releases` VALUES (45, '444', 444, 444, '2018-04-18 00:00:00', 2, '444', 1, 8, 0);
INSERT INTO `ehr_releases` VALUES (46, '会做冬菇烧蹄筋22', 4, 1870, '2018-04-18 00:00:00', NULL, 'rt', 1, 4, 0);
INSERT INTO `ehr_releases` VALUES (47, '123', 123, 123, '2018-04-18 00:00:00', 2, '123切勿q', 1, 4, 0);
INSERT INTO `ehr_releases` VALUES (48, '23', 123, 123, '2018-04-18 00:00:00', 2, '213q', 1, 3, 0);
INSERT INTO `ehr_releases` VALUES (49, 'qwe', 123, 123, '2018-04-18 00:00:00', 2, '123', 1, 7, 0);
INSERT INTO `ehr_releases` VALUES (50, '会做奶汤鲜核桃仁', 5, 1980, '2018-04-18 00:00:00', NULL, 'reerqwqeqwe', 1, 3, 1);
INSERT INTO `ehr_releases` VALUES (51, '关怀', 3, 3444, '2018-04-21 00:00:00', NULL, '二', 1, 2, 1);
INSERT INTO `ehr_releases` VALUES (53, '11', 111, 111, '2019-01-16 00:00:00', NULL, '111', 2, 3, 0);
INSERT INTO `ehr_releases` VALUES (54, 'C#', 88, 3600, '2019-01-26 00:00:00', NULL, 'C系架构', 1, 3, 0);
INSERT INTO `ehr_releases` VALUES (55, 'C++', 36, 4000, '2019-01-25 00:00:00', NULL, 'c系架构', 9, 2, 0);
INSERT INTO `ehr_releases` VALUES (56, '22', 22, 22, '2019-01-24 00:00:00', NULL, '22', 2, 2, 0);
INSERT INTO `ehr_releases` VALUES (57, '会做月饼的', 2, 3600, '2019-01-26 00:00:00', NULL, '33', 3, 1, 1);

-- ----------------------------
-- Table structure for ehr_rewardpunish
-- ----------------------------
DROP TABLE IF EXISTS `ehr_rewardpunish`;
CREATE TABLE `ehr_rewardpunish`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `situation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '情况说明',
  `money` int(11) NULL DEFAULT NULL COMMENT '金额',
  `judge` int(2) NULL DEFAULT NULL COMMENT '判断',
  `time` date NULL DEFAULT NULL COMMENT '奖罚时间',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '对应员工',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5596 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '奖罚表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_rewardpunish
-- ----------------------------
INSERT INTO `ehr_rewardpunish` VALUES (2, '绩效奖励', 500, 1, '2018-04-11', 6, 1);
INSERT INTO `ehr_rewardpunish` VALUES (3, '绩效奖励', 500, 1, '2018-04-03', 1, 1);
INSERT INTO `ehr_rewardpunish` VALUES (4, '绩效奖励', 500, 1, '2018-04-03', 2, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5, '绩效奖励', 500, 1, '2018-04-20', 3, 1);
INSERT INTO `ehr_rewardpunish` VALUES (6, '绩效奖励', 500, 1, '2018-04-18', 4, 1);
INSERT INTO `ehr_rewardpunish` VALUES (7, '全勤奖励', 300, 1, '2018-04-26', 5, 1);
INSERT INTO `ehr_rewardpunish` VALUES (8, '全勤奖励', 300, 1, '2018-04-17', 3, 1);
INSERT INTO `ehr_rewardpunish` VALUES (9, '全勤奖励', 300, 1, '2018-04-30', 8, 1);
INSERT INTO `ehr_rewardpunish` VALUES (10, '全勤奖励', 300, 1, '2018-04-05', 9, 1);
INSERT INTO `ehr_rewardpunish` VALUES (11, '全勤奖励', 300, 1, '2018-04-12', 10, 1);
INSERT INTO `ehr_rewardpunish` VALUES (12, '全勤奖励', 300, 1, '2018-04-09', 11, 1);
INSERT INTO `ehr_rewardpunish` VALUES (13, '全勤奖励', 300, 1, '2018-04-04', 12, 1);
INSERT INTO `ehr_rewardpunish` VALUES (14, '全勤奖励', 300, 1, '2018-04-29', 7, 1);
INSERT INTO `ehr_rewardpunish` VALUES (15, '迟到惩罚', 50, 0, '2018-04-08', 8, 1);
INSERT INTO `ehr_rewardpunish` VALUES (16, '迟到惩罚', 50, 0, '2018-04-22', 8, 1);
INSERT INTO `ehr_rewardpunish` VALUES (17, '迟到惩罚', 50, 0, '2018-04-14', 6, 1);
INSERT INTO `ehr_rewardpunish` VALUES (18, '迟到惩罚', 50, 0, '2018-04-07', 6, 1);
INSERT INTO `ehr_rewardpunish` VALUES (19, '工作时间抽烟喝酒打游戏', 350, 0, '2018-04-06', 9, 1);
INSERT INTO `ehr_rewardpunish` VALUES (20, '工作时间抽烟喝酒打游戏', 350, 0, '2018-04-13', 10, 1);
INSERT INTO `ehr_rewardpunish` VALUES (21, '工作时间抽烟喝酒打游戏', 350, 0, '2018-04-23', 7, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5534, '旷工罚款', 100, 0, '2018-04-23', 1, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5535, '旷工罚款', 100, 0, '2018-04-24', 1, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5536, '旷工罚款', 100, 0, '2018-04-23', 2, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5537, '旷工罚款', 100, 0, '2018-04-24', 2, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5538, '旷工罚款', 100, 0, '2018-04-23', 3, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5539, '旷工罚款', 100, 0, '2018-04-24', 3, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5540, '旷工罚款', 100, 0, '2018-04-23', 4, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5541, '旷工罚款', 100, 0, '2018-04-24', 4, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5542, '旷工罚款', 100, 0, '2018-04-23', 5, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5543, '旷工罚款', 100, 0, '2018-04-24', 5, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5544, '旷工罚款', 100, 0, '2018-04-23', 6, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5545, '旷工罚款', 100, 0, '2018-04-24', 6, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5546, '旷工罚款', 100, 0, '2018-04-23', 7, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5547, '旷工罚款', 100, 0, '2018-04-24', 7, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5548, '旷工罚款', 100, 0, '2018-04-23', 8, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5549, '旷工罚款', 100, 0, '2018-04-24', 8, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5550, '旷工罚款', 100, 0, '2018-04-23', 9, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5551, '旷工罚款', 100, 0, '2018-04-24', 9, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5552, '旷工罚款', 100, 0, '2018-04-23', 10, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5553, '旷工罚款', 100, 0, '2018-04-24', 10, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5554, '旷工罚款', 100, 0, '2018-04-23', 11, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5555, '旷工罚款', 100, 0, '2018-04-24', 11, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5556, '旷工罚款', 100, 0, '2018-04-23', 12, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5557, '旷工罚款', 100, 0, '2018-04-24', 12, 1);
INSERT INTO `ehr_rewardpunish` VALUES (5595, '123123', 123, 123, '2019-06-12', 1, NULL);

-- ----------------------------
-- Table structure for ehr_rule
-- ----------------------------
DROP TABLE IF EXISTS `ehr_rule`;
CREATE TABLE `ehr_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `rulesName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `clockInNum` int(11) NULL DEFAULT NULL COMMENT '打卡次数',
  `amStartTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上午上班打卡时间',
  `amEndTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上午下班打卡时间',
  `pmStartTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下午上班打卡时间',
  `pmEndTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下午下班打卡时间',
  `clockInIocation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打卡位置',
  `instructions` int(2) NULL DEFAULT NULL COMMENT '说明',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '规则发布人',
  `logictoDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考勤规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_rule
-- ----------------------------
INSERT INTO `ehr_rule` VALUES (1, '夏天打卡规则', 4, '08:00', '12:00', '14:00', '18:00', '湖北省武汉市洪山区花山镇大长山路联投青年城', 30, 1, NULL);
INSERT INTO `ehr_rule` VALUES (2, '冬天打卡规则', 4, '09:30', '13:30', '15:00', '18:30', '湖北省武汉市洪山区花山镇大长山路联投青年城', 30, 2, 1);
INSERT INTO `ehr_rule` VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ehr_rule` VALUES (7, '微软微软', 12, '12', '12', '12', '12', '12', 12, 12, NULL);
INSERT INTO `ehr_rule` VALUES (8, '请问请问', 2, '2', '2', '2', '2', '2', 2, 1, NULL);
INSERT INTO `ehr_rule` VALUES (9, '请问阿瑟东', 2, '2', '1', '1', '1', '1阿萨', 1, 1, NULL);

-- ----------------------------
-- Table structure for ehr_socialsecurity
-- ----------------------------
DROP TABLE IF EXISTS `ehr_socialsecurity`;
CREATE TABLE `ehr_socialsecurity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `purchaseRate` int(2) NULL DEFAULT NULL COMMENT '社保购买率//例：3,代表将员工本月应发工资的3%来投保,公司帮忙缴纳另外的3%',
  `logicToDelete` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '社保表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_socialsecurity
-- ----------------------------
INSERT INTO `ehr_socialsecurity` VALUES (1, 3, 1);
INSERT INTO `ehr_socialsecurity` VALUES (2, 5, 1);
INSERT INTO `ehr_socialsecurity` VALUES (3, 7, 1);
INSERT INTO `ehr_socialsecurity` VALUES (4, 9, 1);
INSERT INTO `ehr_socialsecurity` VALUES (5, 10, 1);
INSERT INTO `ehr_socialsecurity` VALUES (21, 13, 1);
INSERT INTO `ehr_socialsecurity` VALUES (22, 13, 1);
INSERT INTO `ehr_socialsecurity` VALUES (23, 6, 0);

-- ----------------------------
-- Table structure for ehr_talentpool
-- ----------------------------
DROP TABLE IF EXISTS `ehr_talentpool`;
CREATE TABLE `ehr_talentpool`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `QQ` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `age` int(2) NULL DEFAULT NULL COMMENT '年龄',
  `currentAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现住址',
  `specialty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技术特长',
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '圈内评价',
  `asTheCompany` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现所在公司',
  `mark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `logicToDelete` int(2) NULL DEFAULT 1 COMMENT '逻辑删除字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '人才库储备表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ehr_talentpool
-- ----------------------------
INSERT INTO `ehr_talentpool` VALUES (1, '张无忌', 1, '13578966542', '624366789', '1072571403@qq.com', 25, '湖北省武汉市', 'DBA', '沉稳扎实', '诺基亚', '12', 1);
INSERT INTO `ehr_talentpool` VALUES (2, '叶秋', 1, '13674593616', '694623668', '1072571403@qq.com', 28, '江苏省南京市', 'OP', '开朗', '佳能', '66', 1);
INSERT INTO `ehr_talentpool` VALUES (3, '李倩', 0, '15968246735', '135464857', '135464857@sina.com', 30, '四川省成都市', 'JS/JQ', '虚心', '惠普', NULL, 1);
INSERT INTO `ehr_talentpool` VALUES (4, '许云', 1, '13654385169', '268534167', '268534167@163.com', 29, '广东省广州市', 'Java/php/python', '踏实好学', '三星电子', NULL, 1);
INSERT INTO `ehr_talentpool` VALUES (5, '罗成', 1, '17636912648', '462600139', '462600139@126.com', 31, '广东省深圳市', 'Hadoop', '认真努力', '腾讯', NULL, 1);
INSERT INTO `ehr_talentpool` VALUES (6, '吴青云', 1, '13566884369', '753416845', '1185095653@qq.com', 26, '浙江省杭州市', 'QA', '有耐心', '中国电子科技集团公司', '', 1);
INSERT INTO `ehr_talentpool` VALUES (7, '秦雪', 0, '15946263741', '846283319', '846283319@163.com', 29, '湖北省武汉市', 'UI', '有毅力', '华为', NULL, 1);
INSERT INTO `ehr_talentpool` VALUES (8, '刘静', 0, '15923674298', '364942851', '364942851@aliyun.com', 32, '江苏省南京市', 'JS/JQ', '开朗活泼', '西门子', NULL, 1);
INSERT INTO `ehr_talentpool` VALUES (9, '阿坤', 1, '13649276186', '355487611', '1764441920@qq.com', 30, '上海市', 'DBA', '踏实好学', '华为', '', 0);
INSERT INTO `ehr_talentpool` VALUES (10, '罗夜', 1, '16768734544', '468764131', '468764131sina.com', 29, '广东省广州市', 'Lucene/Solr/elasticSearch', '沉稳扎实', '京东集团', NULL, 0);
INSERT INTO `ehr_talentpool` VALUES (19, '杨雪琴', 0, '13871319503', '975249917', '975249917@qq.com', 18, '挂号费滚滚红尘', 'java', '', '源码时代', '', NULL);
INSERT INTO `ehr_talentpool` VALUES (20, '老莫', 1, '12366554982', '123456', '1005507581@qq.com', 20, '武汉', '66', '666', '阿里巴巴', '666', NULL);
INSERT INTO `ehr_talentpool` VALUES (21, '余文开', 1, '12365227892', '123456', '1181661722@qq.com', 20, '武汉', '66', '666', '腾讯', '666', NULL);
INSERT INTO `ehr_talentpool` VALUES (22, '王永超', 1, '18372284821', '123132123', '1394003508@qq.com', 11, '11', '11', '11', '1', '11', NULL);

SET FOREIGN_KEY_CHECKS = 1;
