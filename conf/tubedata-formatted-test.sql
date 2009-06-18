-- phpMyAdmin SQL Dump
-- version 2.10.0.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 28, 2008 at 07:19 AM
-- Server version: 5.0.45
-- PHP Version: 4.4.4

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `realtim_tubedata`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `branches`
-- 

DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches` (`id` int(6) unsigned NOT NULL auto_increment, `name` varchar(50) NOT NULL default '', `line` varchar(50) NOT NULL default '', PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `branches`
-- 

INSERT INTO `branches` VALUES (9, 'bank', 'northern');
INSERT INTO `branches` VALUES (8, 'high barnet', 'northern');
INSERT INTO `branches` VALUES (7, 'charing cross', 'northern');
INSERT INTO `branches` VALUES (10, 'test cross', 'northern');
INSERT INTO `branches` VALUES (11, 'test northern', 'northern');
INSERT INTO `branches` VALUES (12, 'victoria', 'victoria');
INSERT INTO `branches` VALUES (13, 'jubilee', 'jubilee');
INSERT INTO `branches` VALUES (14, 'bakerloo', 'bakerloo');
INSERT INTO `branches` VALUES (15, 'metropolitan', 'metropolitan');

-- --------------------------------------------------------

-- 
-- Table structure for table `branch_stops`
-- 

DROP TABLE IF EXISTS `branch_stops`;
CREATE TABLE `branch_stops` (
  `id` int(6) unsigned NOT NULL auto_increment,
  `station_id` varchar(50) NOT NULL default '',
  `order_no` int(2) NOT NULL default '0',
  `branch_id` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1221 ;

-- 
-- Dumping data for table `branch_stops`
-- 

INSERT INTO `branch_stops` VALUES (1220, '728', 146, '14');
INSERT INTO `branch_stops` VALUES (1219, '800', 145, '14');
INSERT INTO `branch_stops` VALUES (1218, '933', 144, '14');
INSERT INTO `branch_stops` VALUES (1217, '731', 143, '14');
INSERT INTO `branch_stops` VALUES (1216, '693', 142, '14');
INSERT INTO `branch_stops` VALUES (1215, '849', 141, '14');
INSERT INTO `branch_stops` VALUES (1214, '844', 140, '14');
INSERT INTO `branch_stops` VALUES (1213, '864', 139, '14');
INSERT INTO `branch_stops` VALUES (1212, '650', 138, '14');
INSERT INTO `branch_stops` VALUES (1211, '815', 137, '14');
INSERT INTO `branch_stops` VALUES (1210, '727', 136, '14');
INSERT INTO `branch_stops` VALUES (1209, '845', 135, '14');
INSERT INTO `branch_stops` VALUES (1208, '932', 134, '14');
INSERT INTO `branch_stops` VALUES (1207, '811', 133, '14');
INSERT INTO `branch_stops` VALUES (1206, '795', 132, '14');
INSERT INTO `branch_stops` VALUES (1205, '858', 131, '14');
INSERT INTO `branch_stops` VALUES (1204, '787', 130, '14');
INSERT INTO `branch_stops` VALUES (1203, '633', 129, '14');
INSERT INTO `branch_stops` VALUES (1202, '762', 128, '14');
INSERT INTO `branch_stops` VALUES (1201, '903', 127, '14');
INSERT INTO `branch_stops` VALUES (1200, '935', 126, '14');
INSERT INTO `branch_stops` VALUES (1199, '832', 125, '14');
INSERT INTO `branch_stops` VALUES (1198, '888', 124, '14');
INSERT INTO `branch_stops` VALUES (1197, '792', 123, '14');
INSERT INTO `branch_stops` VALUES (1196, '763', 122, '14');
INSERT INTO `branch_stops` VALUES (1195, '904', 121, '13');
INSERT INTO `branch_stops` VALUES (1194, '940', 120, '13');
INSERT INTO `branch_stops` VALUES (1193, '686', 119, '13');
INSERT INTO `branch_stops` VALUES (1192, '830', 118, '13');
INSERT INTO `branch_stops` VALUES (1191, '685', 117, '13');
INSERT INTO `branch_stops` VALUES (1190, '684', 116, '13');
INSERT INTO `branch_stops` VALUES (1189, '662', 115, '13');
INSERT INTO `branch_stops` VALUES (1188, '809', 114, '13');
INSERT INTO `branch_stops` VALUES (1187, '895', 113, '13');
INSERT INTO `branch_stops` VALUES (1186, '933', 112, '13');
INSERT INTO `branch_stops` VALUES (1185, '629', 111, '13');
INSERT INTO `branch_stops` VALUES (1184, '751', 110, '13');
INSERT INTO `branch_stops` VALUES (1183, '667', 109, '13');
INSERT INTO `branch_stops` VALUES (1182, '650', 108, '13');
INSERT INTO `branch_stops` VALUES (1181, '897', 107, '13');
INSERT INTO `branch_stops` VALUES (1180, '908', 106, '13');
INSERT INTO `branch_stops` VALUES (1179, '738', 105, '13');
INSERT INTO `branch_stops` VALUES (1178, '941', 104, '13');
INSERT INTO `branch_stops` VALUES (1177, '794', 103, '13');
INSERT INTO `branch_stops` VALUES (1176, '632', 102, '13');
INSERT INTO `branch_stops` VALUES (1175, '716', 101, '13');
INSERT INTO `branch_stops` VALUES (1174, '824', 100, '13');
INSERT INTO `branch_stops` VALUES (1173, '936', 99, '13');
INSERT INTO `branch_stops` VALUES (1172, '797', 98, '13');
INSERT INTO `branch_stops` VALUES (1171, '859', 97, '13');
INSERT INTO `branch_stops` VALUES (1170, '689', 96, '13');
INSERT INTO `branch_stops` VALUES (1169, '900', 95, '13');
INSERT INTO `branch_stops` VALUES (1168, '674', 94, '12');
INSERT INTO `branch_stops` VALUES (1167, '902', 93, '12');
INSERT INTO `branch_stops` VALUES (1166, '926', 92, '12');
INSERT INTO `branch_stops` VALUES (1165, '850', 91, '12');
INSERT INTO `branch_stops` VALUES (1164, '927', 90, '12');
INSERT INTO `branch_stops` VALUES (1163, '751', 89, '12');
INSERT INTO `branch_stops` VALUES (1162, '844', 88, '12');
INSERT INTO `branch_stops` VALUES (1161, '931', 87, '12');
INSERT INTO `branch_stops` VALUES (1160, '733', 86, '12');
INSERT INTO `branch_stops` VALUES (1159, '796', 85, '12');
INSERT INTO `branch_stops` VALUES (1158, '772', 84, '12');
INSERT INTO `branch_stops` VALUES (1157, '740', 83, '12');
INSERT INTO `branch_stops` VALUES (1156, '876', 82, '12');
INSERT INTO `branch_stops` VALUES (1155, '914', 81, '12');
INSERT INTO `branch_stops` VALUES (1154, '665', 80, '12');
INSERT INTO `branch_stops` VALUES (1153, '928', 79, '12');
INSERT INTO `branch_stops` VALUES (1152, '821', 78, '11');
INSERT INTO `branch_stops` VALUES (1151, '891', 77, '11');
INSERT INTO `branch_stops` VALUES (1150, '703', 76, '11');
INSERT INTO `branch_stops` VALUES (1149, '912', 75, '11');
INSERT INTO `branch_stops` VALUES (1148, '911', 74, '11');
INSERT INTO `branch_stops` VALUES (1147, '651', 73, '11');
INSERT INTO `branch_stops` VALUES (1146, '700', 72, '11');
INSERT INTO `branch_stops` VALUES (1145, '698', 71, '11');
INSERT INTO `branch_stops` VALUES (1144, '699', 70, '11');
INSERT INTO `branch_stops` VALUES (1143, '902', 69, '11');
INSERT INTO `branch_stops` VALUES (1142, '843', 68, '11');
INSERT INTO `branch_stops` VALUES (1141, '786', 67, '11');
INSERT INTO `branch_stops` VALUES (1140, '933', 66, '11');
INSERT INTO `branch_stops` VALUES (1139, '731', 65, '11');
INSERT INTO `branch_stops` VALUES (1138, '693', 64, '11');
INSERT INTO `branch_stops` VALUES (1137, '803', 63, '11');
INSERT INTO `branch_stops` VALUES (1136, '913', 62, '11');
INSERT INTO `branch_stops` VALUES (1135, '821', 61, '10');
INSERT INTO `branch_stops` VALUES (1134, '891', 60, '10');
INSERT INTO `branch_stops` VALUES (1133, '703', 59, '10');
INSERT INTO `branch_stops` VALUES (1132, '912', 58, '10');
INSERT INTO `branch_stops` VALUES (1131, '911', 57, '10');
INSERT INTO `branch_stops` VALUES (1130, '651', 56, '10');
INSERT INTO `branch_stops` VALUES (1129, '700', 55, '10');
INSERT INTO `branch_stops` VALUES (1128, '698', 54, '10');
INSERT INTO `branch_stops` VALUES (1127, '699', 53, '10');
INSERT INTO `branch_stops` VALUES (1126, '786', 52, '9');
INSERT INTO `branch_stops` VALUES (1125, '728', 51, '9');
INSERT INTO `branch_stops` VALUES (1124, '668', 50, '9');
INSERT INTO `branch_stops` VALUES (1123, '809', 49, '9');
INSERT INTO `branch_stops` VALUES (1122, '652', 48, '9');
INSERT INTO `branch_stops` VALUES (1121, '820', 47, '9');
INSERT INTO `branch_stops` VALUES (1120, '841', 46, '9');
INSERT INTO `branch_stops` VALUES (1119, '646', 45, '9');
INSERT INTO `branch_stops` VALUES (1118, '796', 44, '9');
INSERT INTO `branch_stops` VALUES (1117, '733', 43, '9');
INSERT INTO `branch_stops` VALUES (1116, '683', 42, '9');
INSERT INTO `branch_stops` VALUES (1115, '683', 41, '8');
INSERT INTO `branch_stops` VALUES (1114, '790', 40, '8');
INSERT INTO `branch_stops` VALUES (1113, '918', 39, '8');
INSERT INTO `branch_stops` VALUES (1112, '647', 38, '8');
INSERT INTO `branch_stops` VALUES (1111, '773', 37, '8');
INSERT INTO `branch_stops` VALUES (1110, '721', 36, '8');
INSERT INTO `branch_stops` VALUES (1109, '737', 35, '8');
INSERT INTO `branch_stops` VALUES (1108, '939', 34, '8');
INSERT INTO `branch_stops` VALUES (1107, '638', 33, '8');
INSERT INTO `branch_stops` VALUES (1106, '915', 32, '8');
INSERT INTO `branch_stops` VALUES (1105, '770', 31, '8');
INSERT INTO `branch_stops` VALUES (1104, '821', 30, '7');
INSERT INTO `branch_stops` VALUES (1103, '891', 29, '7');
INSERT INTO `branch_stops` VALUES (1102, '703', 28, '7');
INSERT INTO `branch_stops` VALUES (1101, '912', 27, '7');
INSERT INTO `branch_stops` VALUES (1100, '911', 26, '7');
INSERT INTO `branch_stops` VALUES (1099, '651', 25, '7');
INSERT INTO `branch_stops` VALUES (1098, '700', 24, '7');
INSERT INTO `branch_stops` VALUES (1097, '698', 23, '7');
INSERT INTO `branch_stops` VALUES (1096, '699', 22, '7');
INSERT INTO `branch_stops` VALUES (1095, '902', 21, '7');
INSERT INTO `branch_stops` VALUES (1094, '843', 20, '7');
INSERT INTO `branch_stops` VALUES (1093, '786', 19, '7');
INSERT INTO `branch_stops` VALUES (1092, '933', 18, '7');
INSERT INTO `branch_stops` VALUES (1091, '731', 17, '7');
INSERT INTO `branch_stops` VALUES (1090, '693', 16, '7');
INSERT INTO `branch_stops` VALUES (1089, '803', 15, '7');
INSERT INTO `branch_stops` VALUES (1088, '913', 14, '7');
INSERT INTO `branch_stops` VALUES (1087, '747', 13, '7');
INSERT INTO `branch_stops` VALUES (1086, '931', 12, '7');
INSERT INTO `branch_stops` VALUES (1085, '733', 11, '7');
INSERT INTO `branch_stops` VALUES (1084, '822', 10, '7');
INSERT INTO `branch_stops` VALUES (1083, '683', 9, '7');
INSERT INTO `branch_stops` VALUES (1082, '691', 8, '7');
INSERT INTO `branch_stops` VALUES (1081, '661', 7, '7');
INSERT INTO `branch_stops` VALUES (1080, '759', 6, '7');
INSERT INTO `branch_stops` VALUES (1079, '745', 5, '7');
INSERT INTO `branch_stops` VALUES (1078, '673', 4, '7');
INSERT INTO `branch_stops` VALUES (1077, '768', 3, '7');
INSERT INTO `branch_stops` VALUES (1076, '702', 2, '7');
INSERT INTO `branch_stops` VALUES (1075, '679', 1, '7');
INSERT INTO `branch_stops` VALUES (1074, '726', 0, '7');

-- --------------------------------------------------------

-- 
-- Table structure for table `send_items`
-- 

DROP TABLE IF EXISTS `send_items`;
CREATE TABLE `send_items` (
  `user` varchar(40) NOT NULL,
  `item` varchar(42) NOT NULL,
  PRIMARY KEY  (`user`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='send to ipod touch users and items';

-- 
-- Dumping data for table `send_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `send_users`
-- 

DROP TABLE IF EXISTS `send_users`;
CREATE TABLE `send_users` (
  `email` varchar(42) NOT NULL,
  `password` varchar(42) NOT NULL,
  `key` varchar(42) NOT NULL,
  `id` int(5) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `send_users`
-- 

INSERT INTO `send_users` VALUES ('c.kubicek@gmail.com', 'password', 'e59ff97941044f85df5297e1c302d260', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `stations`
-- 

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `line` varchar(50) NOT NULL default '',
  `x` varchar(25) NOT NULL default '',
  `y` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=958 ;

-- 
-- Dumping data for table `stations`
-- 

INSERT INTO `stations` VALUES (684, 'Canada Water', '', '-0.049213530491907236', '51.496819569083115');
INSERT INTO `stations` VALUES (685, 'Canary Wharf', '', '-0.02006614230897259', '51.50442534095534');
INSERT INTO `stations` VALUES (686, 'Canning Town', '', '0.00913033655631026', '51.512922447000435');
INSERT INTO `stations` VALUES (687, 'Cannon Street', '', '-0.09040668920972889', '51.510988111013724');
INSERT INTO `stations` VALUES (688, 'Canonbury', '', '-0.09174693017515938', '51.54788362780304');
INSERT INTO `stations` VALUES (689, 'Canons Park', '', '-0.294374497920998', '51.60676314807889');
INSERT INTO `stations` VALUES (690, 'Chalfont & Latimer', '', '-0.5596629984640097', '51.666973895096355');
INSERT INTO `stations` VALUES (691, 'Chalk Farm', '', '-0.15251042560165337', '51.54346026274685');
INSERT INTO `stations` VALUES (692, 'Chancery Lane', '', '-0.11031126715460818', '51.51760605665892');
INSERT INTO `stations` VALUES (693, 'Charing Cross', '', '-0.12231642985980562', '51.50610723927896');
INSERT INTO `stations` VALUES (694, 'Chesham', '', '-0.610578580373237', '51.70445792020427');
INSERT INTO `stations` VALUES (695, 'Chigwell', '', '0.07584626205170708', '51.61698720076681');
INSERT INTO `stations` VALUES (696, 'Chiswick Park', '', '-0.26689291668934817', '51.49394356836843');
INSERT INTO `stations` VALUES (697, 'Chorleywood', '', '-0.5167058347163742', '51.65384904470197');
INSERT INTO `stations` VALUES (698, 'Clapham Common', '', '-0.1371110334532604', '51.461375226703524');
INSERT INTO `stations` VALUES (699, 'Clapham North', '', '-0.1283678300817135', '51.463934044082215');
INSERT INTO `stations` VALUES (700, 'Clapham South', '', '-0.14758316691946552', '51.451648198320164');
INSERT INTO `stations` VALUES (701, 'Cockfosters', '', '-0.14816437257557344', '51.65041351347815');
INSERT INTO `stations` VALUES (702, 'Colindale', '', '-0.2486320331875017', '51.59439818791392');
INSERT INTO `stations` VALUES (703, 'Colliers Wood', '', '-0.17627635994525884', '51.41792239493648');
INSERT INTO `stations` VALUES (704, 'Covent Garden', '', '-0.12349811664222637', '51.512421658089636');
INSERT INTO `stations` VALUES (705, 'Crossharbour & London Arena', '', '-0.013256743304616549', '51.49531644450039');
INSERT INTO `stations` VALUES (706, 'Croxley', '', '-0.44032927070513095', '51.64656427269432');
INSERT INTO `stations` VALUES (707, 'Custom House', '', '0.026254448419057334', '51.509030301345724');
INSERT INTO `stations` VALUES (708, 'Cutty Sark', '', '-0.009563860466851525', '51.48086382716998');
INSERT INTO `stations` VALUES (709, 'Cyprus', '', '0.06509787536199296', '51.50745326551076');
INSERT INTO `stations` VALUES (710, 'Dagenham East', '', '0.16480908649324758', '51.543429169795935');
INSERT INTO `stations` VALUES (711, 'Dagenham Heathway', '', '0.1473883375928878', '51.54105125703526');
INSERT INTO `stations` VALUES (712, 'Dalston Kingsland', '', '-0.07444898352254821', '51.547600953074934');
INSERT INTO `stations` VALUES (713, 'Debden', '', '0.08434088348277381', '51.64471701367661');
INSERT INTO `stations` VALUES (714, 'Deptford Bridge', '', '-0.021389733790320033', '51.47386901982895');
INSERT INTO `stations` VALUES (715, 'Devons Road', '', '-0.01644425146349894', '51.5214521549922');
INSERT INTO `stations` VALUES (716, 'Dollis Hill', '', '-0.23875584300235328', '51.55108226187212');
INSERT INTO `stations` VALUES (717, 'Ealing Broadway', '', '-0.30071654432315714', '51.51422405845407');
INSERT INTO `stations` VALUES (718, 'Ealing Common', '', '-0.2879196451383519', '51.509541248146235');
INSERT INTO `stations` VALUES (719, 'Earl''s Court', '', '-0.1935646352140436', '51.49013875898245');
INSERT INTO `stations` VALUES (720, 'East Acton', '', '-0.24731165008743564', '51.5161361263761');
INSERT INTO `stations` VALUES (721, 'East Finchley', '', '-0.16374573101066248', '51.586805252379435');
INSERT INTO `stations` VALUES (722, 'East Ham', '', '0.05351136047640593', '51.53823557579569');
INSERT INTO `stations` VALUES (723, 'East India', '', '-0.0011486637515434525', '51.50860124920085');
INSERT INTO `stations` VALUES (724, 'East Putney', '', '-0.21066897701426113', '51.45802433306018');
INSERT INTO `stations` VALUES (725, 'Eastcote', '', '-0.3965659659299638', '51.57582829135067');
INSERT INTO `stations` VALUES (726, 'Edgware', '', '-0.2739265515827954', '51.612759500713814');
INSERT INTO `stations` VALUES (727, 'Edgware Road', '', '-0.16645872259960898', '51.51939667776983');
INSERT INTO `stations` VALUES (728, 'Elephant & Castle', '', '-0.0997219954555799', '51.494950930139325');
INSERT INTO `stations` VALUES (729, 'Elm Park', '', '0.19965580872096972', '51.5481771644975');
INSERT INTO `stations` VALUES (730, 'Elverson Road', '', '-0.015906302363791095', '51.46748071172763');
INSERT INTO `stations` VALUES (731, 'Embankment', '', '-0.12087621670808957', '51.506084169141225');
INSERT INTO `stations` VALUES (732, 'Epping', '', '0.11404299904806241', '51.69275161137081');
INSERT INTO `stations` VALUES (733, 'Euston', '', '-0.13295618866225375', '51.52786165455812');
INSERT INTO `stations` VALUES (734, 'Euston Square', '', '-0.13454406413786715', '51.524289504812366');
INSERT INTO `stations` VALUES (735, 'Fairlop', '', '0.0921767476545188', '51.595112311298784');
INSERT INTO `stations` VALUES (736, 'Farringdon', '', '-0.10447437353788491', '51.519310576476116');
INSERT INTO `stations` VALUES (737, 'Finchley Central', '', '-0.19065920302345754', '51.59981405415956');
INSERT INTO `stations` VALUES (738, 'Finchley Road', '', '-0.17979008313175068', '51.54658477869664');
INSERT INTO `stations` VALUES (739, 'Finchley Road & Frognal', '', '-0.18256569939622547', '51.549325851067046');
INSERT INTO `stations` VALUES (740, 'Finsbury Park', '', '-0.10552724299353776', '51.56339599809349');
INSERT INTO `stations` VALUES (741, 'Fulham Broadway', '', '-0.19399088876874257', '51.4793530893911');
INSERT INTO `stations` VALUES (742, 'Gallions Reach', '', '0.07233910579531913', '51.50822489242148');
INSERT INTO `stations` VALUES (743, 'Gants Hill', '', '0.06675059450740908', '51.57577675142486');
INSERT INTO `stations` VALUES (744, 'Gloucester Road', '', '-0.1819034972429121', '51.493555935628684');
INSERT INTO `stations` VALUES (745, 'Golders Green', '', '-0.19324391235724395', '51.571075022581766');
INSERT INTO `stations` VALUES (746, 'Goldhawk Road', '', '-0.22629598857696862', '51.500531286773864');
INSERT INTO `stations` VALUES (747, 'Goodge Street', '', '-0.1332870729628562', '51.51977273121197');
INSERT INTO `stations` VALUES (748, 'Gospel Oak', '', '-0.15063162670511288', '51.5542228451189');
INSERT INTO `stations` VALUES (749, 'Grange Hill', '', '0.09296193298946101', '51.61218636724319');
INSERT INTO `stations` VALUES (750, 'Great Portland Street', '', '-0.1432620157180838', '51.52262913884327');
INSERT INTO `stations` VALUES (751, 'Green Park', '', '-0.14251617140062806', '51.50552958854373');
INSERT INTO `stations` VALUES (752, 'Greenford', '', '-0.3458397706247479', '51.54184909049604');
INSERT INTO `stations` VALUES (753, 'Greenwich', '', '-0.014038031930261739', '51.477342206283254');
INSERT INTO `stations` VALUES (754, 'Gunnersbury', '', '-0.2756683074514051', '51.49047556924784');
INSERT INTO `stations` VALUES (755, 'Hackney Central', '', '-0.05430675254090038', '51.54636922004465');
INSERT INTO `stations` VALUES (756, 'Hackney Wick', '', '-0.024192967246063957', '51.542268384297785');
INSERT INTO `stations` VALUES (757, 'Hainault', '', '0.09395032398276557', '51.602275653266716');
INSERT INTO `stations` VALUES (758, 'Hammersmith', '', '-0.22373029856891472', '51.49239831770287');
INSERT INTO `stations` VALUES (759, 'Hampstead', '', '-0.17798941486352943', '51.555550280361246');
INSERT INTO `stations` VALUES (760, 'Hampstead Heath', '', '-0.16504928414792416', '51.554449246163664');
INSERT INTO `stations` VALUES (761, 'Hanger Lane', '', '-0.2929421377974127', '51.529399887405354');
INSERT INTO `stations` VALUES (762, 'Harlesden', '', '-0.2566752211367614', '51.53516183620729');
INSERT INTO `stations` VALUES (763, 'Harrow & Wealdstone', '', '-0.3339428086990154', '51.5911436906125');
INSERT INTO `stations` VALUES (764, 'Harrow-on-the-Hill', '', '-0.3358457765620544', '51.57858015776556');
INSERT INTO `stations` VALUES (765, 'Hatton Cross', '', '-0.4220322341547698', '51.46555663459269');
INSERT INTO `stations` VALUES (766, 'Heathrow Terminals 1', '', '-0.45210292724826395', '51.47045415724583');
INSERT INTO `stations` VALUES (767, 'Heathrow Terminal 4', '', '-0.44533404792029724', '51.45777397592602');
INSERT INTO `stations` VALUES (768, 'Hendon Central', '', '-0.22599785530692493', '51.58236686207079');
INSERT INTO `stations` VALUES (769, 'Heron Quays', '', '-0.020144065185997168', '51.50262791539187');
INSERT INTO `stations` VALUES (770, 'High Barnet', '', '-0.19443478021389068', '51.65023487997356');
INSERT INTO `stations` VALUES (771, 'High Street Kensington', '', '-0.1917691708953485', '51.49910460224297');
INSERT INTO `stations` VALUES (772, 'Highbury & Islington', '', '-0.10339119659281543', '51.5453744104714');
INSERT INTO `stations` VALUES (773, 'Highgate', '', '-0.14539214837171116', '51.57662381385878');
INSERT INTO `stations` VALUES (774, 'Hillingdon', '', '-0.4507389344948532', '51.55317383103578');
INSERT INTO `stations` VALUES (775, 'Holborn', '', '-0.11899173744179774', '51.51684624949416');
INSERT INTO `stations` VALUES (776, 'Holland Park', '', '-0.2044470396648855', '51.506494211377046');
INSERT INTO `stations` VALUES (777, 'Holloway Road', '', '-0.11177934890925802', '51.55180521070984');
INSERT INTO `stations` VALUES (778, 'Homerton', '', '-0.041333983822385616', '51.54615331822798');
INSERT INTO `stations` VALUES (779, 'Hornchurch', '', '0.21865428358108877', '51.55321569594314');
INSERT INTO `stations` VALUES (780, 'Hounslow Central', '', '-0.365713339259642', '51.47018109517748');
INSERT INTO `stations` VALUES (781, 'Hounslow East', '', '-0.35554151477472506', '51.47273687520109');
INSERT INTO `stations` VALUES (782, 'Hounslow West', '', '-0.3843604766082054', '51.47223821565412');
INSERT INTO `stations` VALUES (783, 'Hyde Park Corner', '', '-0.15277947109616125', '51.501194935576905');
INSERT INTO `stations` VALUES (784, 'Ickenham', '', '-0.4403685939253635', '51.56113028653863');
INSERT INTO `stations` VALUES (785, 'Island Gardens', '', '-0.00928985139963811', '51.487154796933545');
INSERT INTO `stations` VALUES (786, 'Kennington', '', '-0.10437714782714427', '51.48693202151761');
INSERT INTO `stations` VALUES (787, 'Kensal Green', '', '-0.2237371856790208', '51.52927161193763');
INSERT INTO `stations` VALUES (788, 'Kensal Rise', '', '-0.22922225218739184', '51.53654928919846');
INSERT INTO `stations` VALUES (789, 'Kensington (Olympia)', '', '-0.20912037354731894', '51.4975721847734');
INSERT INTO `stations` VALUES (790, 'Kentish Town', '', '-0.1392810476934105', '51.54954660911795');
INSERT INTO `stations` VALUES (791, 'Kentish Town West', '', '-0.14519370031577164', '51.546042847198024');
INSERT INTO `stations` VALUES (792, 'Kenton', '', '-0.3155488470115881', '51.58098853125976');
INSERT INTO `stations` VALUES (793, 'Kew Gardens', '', '-0.283407746409488', '51.47619963136196');
INSERT INTO `stations` VALUES (794, 'Kilburn', '', '-0.20433189600799248', '51.546063676260204');
INSERT INTO `stations` VALUES (795, 'Kilburn Park', '', '-0.1932625034168228', '51.53420221824119');
INSERT INTO `stations` VALUES (796, 'King''s Cross St. Pancras', '', '-0.12275894733267313', '51.530396948130495');
INSERT INTO `stations` VALUES (797, 'Kingsbury', '', '-0.2779024818285111', '51.58403940576988');
INSERT INTO `stations` VALUES (798, 'Knightsbridge', '', '-0.16149236376144455', '51.49953315755828');
INSERT INTO `stations` VALUES (799, 'Ladbroke Grove', '', '-0.2098206323776222', '51.516469188744395');
INSERT INTO `stations` VALUES (800, 'Lambeth North', '', '-0.10968938305851424', '51.497810127459694');
INSERT INTO `stations` VALUES (801, 'Lancaster Gate', '', '-0.17546200797231293', '51.51054358067681');
INSERT INTO `stations` VALUES (802, 'Latimer Road', '', '-0.21716411387238893', '51.51298366742406');
INSERT INTO `stations` VALUES (803, 'Leicester Square', '', '-0.1278930727310078', '51.510693188019395');
INSERT INTO `stations` VALUES (804, 'Lewisham', '', '-0.011706815007981633', '51.464711426142266');
INSERT INTO `stations` VALUES (805, 'Leyton', '', '-0.004827481734915134', '51.55633043728707');
INSERT INTO `stations` VALUES (806, 'Leytonstone', '', '0.008662596955620713', '51.56779198216698');
INSERT INTO `stations` VALUES (807, 'Limehouse', '', '-0.038478451271451976', '51.51192973308699');
INSERT INTO `stations` VALUES (808, 'Liverpool Street', '', '-0.0815380898820015', '51.51623952981234');
INSERT INTO `stations` VALUES (809, 'London Bridge', '', '-0.0877894786379847', '51.504649929216434');
INSERT INTO `stations` VALUES (810, 'Loughton', '', '0.05669311529746573', '51.64070785598985');
INSERT INTO `stations` VALUES (811, 'Maida Vale', '', '-0.18483014108859733', '51.528675942103355');
INSERT INTO `stations` VALUES (812, 'Manor House', '', '-0.09517025948977142', '51.56952376660699');
INSERT INTO `stations` VALUES (813, 'Mansion House', '', '-0.09328737601648697', '51.51103498492888');
INSERT INTO `stations` VALUES (814, 'Marble Arch', '', '-0.15950906580459664', '51.512992353002815');
INSERT INTO `stations` VALUES (815, 'Marylebone', '', '-0.1620643437828649', '51.52112659691739');
INSERT INTO `stations` VALUES (816, 'Mile End', '', '-0.03217481464410376', '51.52441526269963');
INSERT INTO `stations` VALUES (817, 'Mill Hill East', '', '-0.20913843984461158', '51.60729217645318');
INSERT INTO `stations` VALUES (818, 'Monument', '', '-0.08612334612329745', '51.51001892062107');
INSERT INTO `stations` VALUES (819, 'Moor Park', '', '-0.43228003519779024', '51.62847094152273');
INSERT INTO `stations` VALUES (820, 'Moorgate', '', '-0.08870298288929475', '51.51725588224769');
INSERT INTO `stations` VALUES (821, 'Morden', '', '-0.19416396369664754', '51.40201087522883');
INSERT INTO `stations` VALUES (822, 'Mornington Crescent', '', '-0.13849984534815524', '51.533345889181625');
INSERT INTO `stations` VALUES (823, 'Mudchute', '', '-0.013452141352225796', '51.49082289091774');
INSERT INTO `stations` VALUES (824, 'Neasden', '', '-0.2502207287228406', '51.55305250132064');
INSERT INTO `stations` VALUES (825, 'New Cross', '', '-0.029985723302395195', '51.47491316252782');
INSERT INTO `stations` VALUES (826, 'New Cross Gate', '', '-0.03865923786209226', '51.47415922454905');
INSERT INTO `stations` VALUES (827, 'Newbury Park', '', '0.09122729549567268', '51.574443639250774');
INSERT INTO `stations` VALUES (828, 'North Acton', '', '-0.2585967389008664', '51.522599621537736');
INSERT INTO `stations` VALUES (829, 'North Ealing', '', '-0.2879196451383519', '51.509541248146235');
INSERT INTO `stations` VALUES (830, 'North Greenwich', '', '0.004217633751273494', '51.499515915808324');
INSERT INTO `stations` VALUES (831, 'North Harrow', '', '-0.36162012478970856', '51.58433878476989');
INSERT INTO `stations` VALUES (832, 'North Wembley', '', '-0.3032673948376943', '51.561925680072065');
INSERT INTO `stations` VALUES (833, 'North Woolwich', '', '0.06325173713821242', '51.49849195374628');
INSERT INTO `stations` VALUES (834, 'Northfields', '', '-0.3128060976098319', '51.49910987040637');
INSERT INTO `stations` VALUES (835, 'Northolt', '', '-0.367269629680893', '51.54754527124511');
INSERT INTO `stations` VALUES (836, 'Northwick Park', '', '-0.31712441713392453', '51.577413831345865');
INSERT INTO `stations` VALUES (837, 'Northwood', '', '-0.4242681881781978', '51.60947816535088');
INSERT INTO `stations` VALUES (838, 'Northwood Hills', '', '-0.40873320921820894', '51.599376135998114');
INSERT INTO `stations` VALUES (839, 'Notting Hill Gate', '', '-0.19573429611625517', '51.508159181581625');
INSERT INTO `stations` VALUES (840, 'Oakwood', '', '-0.13097475694546196', '51.64654377172798');
INSERT INTO `stations` VALUES (841, 'Old Street', '', '-0.08836422922894646', '51.52534460123317');
INSERT INTO `stations` VALUES (842, 'Osterley', '', '-0.35093171875155477', '51.48076616411142');
INSERT INTO `stations` VALUES (843, 'Oval', '', '-0.11327448941998129', '51.48078000041125');
INSERT INTO `stations` VALUES (844, 'Oxford Circus', '', '-0.1407100214624204', '51.51449452009524');
INSERT INTO `stations` VALUES (845, 'Paddington', '', '-0.1752824130573708', '51.51503754234166');
INSERT INTO `stations` VALUES (846, 'Park Royal', '', '-0.2829898778778415', '51.52565727333283');
INSERT INTO `stations` VALUES (847, 'Parsons Green', '', '-0.19996096975383976', '51.47404878059396');
INSERT INTO `stations` VALUES (848, 'Perivale', '', '-0.32297401975515255', '51.536128440904285');
INSERT INTO `stations` VALUES (849, 'Piccadilly Circus', '', '-0.13520503146869206', '51.50811162093433');
INSERT INTO `stations` VALUES (850, 'Pimlico', '', '-0.13309599744631934', '51.48919154694965');
INSERT INTO `stations` VALUES (851, 'Pinner', '', '-0.380121806085959', '51.59179018685882');
INSERT INTO `stations` VALUES (852, 'Plaistow', '', '0.0171261330252769', '51.53077263522905');
INSERT INTO `stations` VALUES (853, 'Poplar', '', '-0.017068928210796006', '51.50707280595473');
INSERT INTO `stations` VALUES (854, 'Preston Road', '', '-0.2942446632148484', '51.57168748641614');
INSERT INTO `stations` VALUES (855, 'Prince Regent', '', '0.0348954843227192', '51.508880665553896');
INSERT INTO `stations` VALUES (856, 'Pudding Mill Lane', '', '-0.013054370921285962', '51.5330865579902');
INSERT INTO `stations` VALUES (857, 'Putney Bridge', '', '-0.20887827858749333', '51.46699052968433');
INSERT INTO `stations` VALUES (858, 'Queen''s Park', '', '-0.20482719277143513', '51.5334804386698');
INSERT INTO `stations` VALUES (859, 'Queensbury', '', '-0.28477795921492044', '51.59313339078305');
INSERT INTO `stations` VALUES (860, 'Queensway', '', '-0.18702093197709743', '51.509823497734935');
INSERT INTO `stations` VALUES (861, 'Ravenscourt Park', '', '-0.23521454769641806', '51.49347107364054');
INSERT INTO `stations` VALUES (862, 'Rayners Lane', '', '-0.37063110275463884', '51.574571714397464');
INSERT INTO `stations` VALUES (863, 'Redbridge', '', '0.04651849917074459', '51.575232043623764');
INSERT INTO `stations` VALUES (864, 'Regent''s Park', '', '-0.14614352433305713', '51.52267472208303');
INSERT INTO `stations` VALUES (865, 'Richmond', '', '-0.29977602530858816', '51.46204864141992');
INSERT INTO `stations` VALUES (866, 'Rickmansworth', '', '-0.4738341083626508', '51.63891083621416');
INSERT INTO `stations` VALUES (867, 'Roding Valley', '', '0.04400691084431045', '51.615747309016996');
INSERT INTO `stations` VALUES (868, 'Rotherhithe', '', '-0.05193994613494154', '51.50046236807566');
INSERT INTO `stations` VALUES (869, 'Royal Albert', '', '0.046376472922255094', '51.507781486179944');
INSERT INTO `stations` VALUES (870, 'Royal Oak', '', '-0.18814032297458586', '51.517934944389836');
INSERT INTO `stations` VALUES (871, 'Royal Victoria', '', '0.019013789641727955', '51.50825582131786');
INSERT INTO `stations` VALUES (872, 'Ruislip', '', '-0.4198352644371099', '51.57074804452908');
INSERT INTO `stations` VALUES (873, 'Ruislip Gardens', '', '-0.4086721408325937', '51.55980535248464');
INSERT INTO `stations` VALUES (874, 'Ruislip Manor', '', '-0.4111177118160099', '51.57242896018081');
INSERT INTO `stations` VALUES (875, 'Russell Square', '', '-0.12453239504805899', '51.52233112344082');
INSERT INTO `stations` VALUES (876, 'Seven Sisters', '', '-0.07300537640962712', '51.58175277320078');
INSERT INTO `stations` VALUES (877, 'Shadwell', '', '-0.054398765386131115', '51.510396221243916');
INSERT INTO `stations` VALUES (878, 'Shepherd''s Bush', '', '-0.226121458311256', '51.50502538150399');
INSERT INTO `stations` VALUES (879, 'Shepherd''s Bush (Central)', '', '-0.2186751365661621', '51.50456210431835');
INSERT INTO `stations` VALUES (880, 'Shoreditch', '', '-0.06974813055882155', '51.52234160168881');
INSERT INTO `stations` VALUES (881, 'Silvertown', '', '0.046094597069374646', '51.50149075418209');
INSERT INTO `stations` VALUES (882, 'Sloane Square', '', '-0.15461896465277095', '51.4913309849062');
INSERT INTO `stations` VALUES (883, 'Snaresbrook', '', '0.022159501170544632', '51.5792518806312');
INSERT INTO `stations` VALUES (884, 'South Acton', '', '-0.26960259738974984', '51.49848030251712');
INSERT INTO `stations` VALUES (885, 'South Ealing', '', '-0.30701222844367726', '51.49992570497599');
INSERT INTO `stations` VALUES (886, 'South Harrow', '', '-0.3508257316286021', '51.56350313437425');
INSERT INTO `stations` VALUES (887, 'South Kensington', '', '-0.17182447426901373', '51.49339922165455');
INSERT INTO `stations` VALUES (888, 'South Kenton', '', '-0.3073266992244995', '51.5691789502213');
INSERT INTO `stations` VALUES (889, 'South Quay', '', '-0.018821002373596313', '51.49990745483881');
INSERT INTO `stations` VALUES (890, 'South Ruislip', '', '-0.3987035878668001', '51.556072439442296');
INSERT INTO `stations` VALUES (891, 'South Wimbledon', '', '-0.19079327811169472', '51.41454997169695');
INSERT INTO `stations` VALUES (892, 'South Woodford', '', '0.02844945148188724', '51.59083505803949');
INSERT INTO `stations` VALUES (893, 'Southfields', '', '-0.2054427259604248', '51.44445409503642');
INSERT INTO `stations` VALUES (894, 'Southgate', '', '-0.1272704195519133', '51.63119597070532');
INSERT INTO `stations` VALUES (895, 'Southwark', '', '-0.10514587171895835', '51.50313295778313');
INSERT INTO `stations` VALUES (896, 'St. James''s Park', '', '-0.1327287031153238', '51.49817928474001');
INSERT INTO `stations` VALUES (897, 'St. John''s Wood', '', '-0.17308647295069482', '51.53388970109809');
INSERT INTO `stations` VALUES (898, 'St. Paul''s', '', '-0.09594318373781804', '51.516474297991046');
INSERT INTO `stations` VALUES (899, 'Stamford Brook', '', '-0.2452939350443579', '51.49362234056799');
INSERT INTO `stations` VALUES (900, 'Stanmore', '', '-0.3025998256985955', '51.618573595392334');
INSERT INTO `stations` VALUES (901, 'Stepney Green', '', '-0.04529531066756806', '51.52103721941476');
INSERT INTO `stations` VALUES (902, 'Stockwell', '', '-0.12228016999043657', '51.47193095937269');
INSERT INTO `stations` VALUES (903, 'Stonebridge Park', '', '-0.2751055909675387', '51.543528334771594');
INSERT INTO `stations` VALUES (904, 'Stratford', '', '-0.0026528288014305854', '51.54010482881039');
INSERT INTO `stations` VALUES (905, 'Sudbury Hill', '', '-0.3352242379018699', '51.556088183132196');
INSERT INTO `stations` VALUES (906, 'Sudbury Town', '', '-0.31526950261694964', '51.54950801642583');
INSERT INTO `stations` VALUES (907, 'Surrey Quays', '', '-0.046525970778371825', '51.4922779804748');
INSERT INTO `stations` VALUES (908, 'Swiss Cottage', '', '-0.17416788496939095', '51.54290001764768');
INSERT INTO `stations` VALUES (909, 'Temple', '', '-0.1134895354839621', '51.51046236134635');
INSERT INTO `stations` VALUES (910, 'Theydon Bois', '', '0.10436698086731952', '51.671340696814205');
INSERT INTO `stations` VALUES (911, 'Tooting Bec', '', '-0.15834010401347612', '51.43472981353174');
INSERT INTO `stations` VALUES (912, 'Tooting Broadway', '', '-0.16732787145007202', '51.42587706872216');
INSERT INTO `stations` VALUES (913, 'Tottenham Court Road', '', '-0.13055300526849062', '51.51613175879326');
INSERT INTO `stations` VALUES (914, 'Tottenham Hale', '', '-0.05831161861854236', '51.587806021487175');
INSERT INTO `stations` VALUES (915, 'Totteridge & Whetstone', '', '-0.1779258124312763', '51.62929516483202');
INSERT INTO `stations` VALUES (916, 'Tower Gateway', '', '-0.07460095034760438', '51.50983029968169');
INSERT INTO `stations` VALUES (917, 'Tower Hill', '', '-0.07607911166499051', '51.50895519734289');
INSERT INTO `stations` VALUES (918, 'Tufnell Park', '', '-0.13758246222847634', '51.55581510389661');
INSERT INTO `stations` VALUES (919, 'Turnham Green', '', '-0.2539334796874854', '51.49375130879487');
INSERT INTO `stations` VALUES (920, 'Turnpike Lane', '', '-0.10155729499166559', '51.58941300168234');
INSERT INTO `stations` VALUES (921, 'Upminster', '', '0.2506305999960426', '51.55800287848795');
INSERT INTO `stations` VALUES (922, 'Upminster Bridge', '', '0.2376127639094', '51.55735253961072');
INSERT INTO `stations` VALUES (923, 'Upney', '', '0.10254814645769941', '51.5382661363169');
INSERT INTO `stations` VALUES (924, 'Upton Park', '', '0.03601772618094833', '51.53404369009812');
INSERT INTO `stations` VALUES (925, 'Uxbridge', '', '-0.47693445375293037', '51.546322300496854');
INSERT INTO `stations` VALUES (926, 'Vauxhall', '', '-0.12172630804428243', '51.485412516629566');
INSERT INTO `stations` VALUES (927, 'Victoria', '', '-0.14443108567955848', '51.49386827087787');
INSERT INTO `stations` VALUES (928, 'Walthamstow Central', '', '-0.01815031828658801', '51.581738412326736');
INSERT INTO `stations` VALUES (929, 'Wanstead', '', '0.029171291985487284', '51.57463398773586');
INSERT INTO `stations` VALUES (930, 'Wapping', '', '-0.054705071963381924', '51.50320637473412');
INSERT INTO `stations` VALUES (931, 'Warren Street', '', '-0.13746234322554243', '51.52343653175133');
INSERT INTO `stations` VALUES (932, 'Warwick Avenue', '', '-0.18360382092139854', '51.5232608663799');
INSERT INTO `stations` VALUES (933, 'Waterloo', '', '-0.11238357206050469', '51.502350330873');
INSERT INTO `stations` VALUES (934, 'Watford', '', '-0.41686656580640774', '51.65614262694848');
INSERT INTO `stations` VALUES (935, 'Wembley Central', '', '-0.29498455083023084', '51.55191295117609');
INSERT INTO `stations` VALUES (936, 'Wembley Park', '', '-0.280159799051429', '51.562488560001064');
INSERT INTO `stations` VALUES (937, 'West Acton', '', '-0.28041275513005337', '51.51752547201256');
INSERT INTO `stations` VALUES (938, 'West Brompton', '', '-0.19374227306484018', '51.48564473270901');
INSERT INTO `stations` VALUES (939, 'West Finchley', '', '-0.18741478863739983', '51.608757361121604');
INSERT INTO `stations` VALUES (940, 'West Ham', '', '0.006881852093757745', '51.52735089685871');
INSERT INTO `stations` VALUES (941, 'West Hampstead', '', '-0.1899165734119853', '51.54584212700063');
INSERT INTO `stations` VALUES (942, 'West Harrow', '', '-0.35315793963753833', '51.57882439970359');
INSERT INTO `stations` VALUES (943, 'West India Quay', '', '-0.019988211355998813', '51.50622276588244');
INSERT INTO `stations` VALUES (944, 'West Kensington', '', '-0.20511814746685145', '51.48941683650061');
INSERT INTO `stations` VALUES (683, 'Camden Town', '', '-0.1411622995186106', '51.538784225323035');
INSERT INTO `stations` VALUES (682, 'Camden Road', '', '-0.13816972443040848', '51.54143481775853');
INSERT INTO `stations` VALUES (676, 'Brondesbury', '', '-0.20151970894744117', '51.54422190734583');
INSERT INTO `stations` VALUES (677, 'Brondesbury Park', '', '-0.2089036262167602', '51.53983816604657');
INSERT INTO `stations` VALUES (678, 'Buckhurst Hill', '', '0.04733896441313544', '51.62558222652698');
INSERT INTO `stations` VALUES (679, 'Burnt Oak', '', '-0.26278877313272025', '51.60180324126749');
INSERT INTO `stations` VALUES (680, 'Caledonian Road', '', '-0.11773147617606959', '51.54740410314443');
INSERT INTO `stations` VALUES (681, 'Caledonian Road & Barnsbury', '', '-0.11359284087325927', '51.54284085196745');
INSERT INTO `stations` VALUES (675, 'Bromley-by-Bow', '', '-0.012004996309510093', '51.524075093152256');
INSERT INTO `stations` VALUES (674, 'Brixton', '', '-0.11113839118360826', '51.462758321670535');
INSERT INTO `stations` VALUES (673, 'Brent Cross', '', '-0.21326038205123482', '51.57587823838149');
INSERT INTO `stations` VALUES (672, 'Bow Road', '', '-0.02489346945327997', '51.52609159559794');
INSERT INTO `stations` VALUES (671, 'Bow Church', '', '-0.020532207858075736', '51.526917433486794');
INSERT INTO `stations` VALUES (670, 'Bounds Green', '', '-0.12397615909269474', '51.60596177772326');
INSERT INTO `stations` VALUES (669, 'Boston Manor', '', '-0.32449213093404167', '51.494780737250586');
INSERT INTO `stations` VALUES (668, 'Borough', '', '-0.09373761925247598', '51.500249966172134');
INSERT INTO `stations` VALUES (667, 'Bond Street', '', '-0.1479489743863156', '51.51370971128991');
INSERT INTO `stations` VALUES (666, 'Blackwall', '', '-0.005547750661575395', '51.506877410454074');
INSERT INTO `stations` VALUES (665, 'Blackhorse Road', '', '-0.03963352653260295', '51.58569674348752');
INSERT INTO `stations` VALUES (664, 'Blackfriars', '', '-0.11186335839483558', '51.514932981829');
INSERT INTO `stations` VALUES (663, 'Bethnal Green', '', '-0.05514991411046148', '51.52659724029554');
INSERT INTO `stations` VALUES (662, 'Bermondsey', '', '-0.062172350158376535', '51.49703445526383');
INSERT INTO `stations` VALUES (661, 'Belsize Park', '', '-0.1637885084200872', '51.54993278359263');
INSERT INTO `stations` VALUES (660, 'Becontree', '', '0.12857025150576182', '51.53959551975677');
INSERT INTO `stations` VALUES (659, 'Beckton Park', '', '0.056457272114168094', '51.507605123054276');
INSERT INTO `stations` VALUES (658, 'Beckton', '', '0.06250183986770312', '51.51379461734533');
INSERT INTO `stations` VALUES (657, 'Bayswater', '', '-0.1869495563596027', '51.51162109461737');
INSERT INTO `stations` VALUES (656, 'Barons Court', '', '-0.21375671007921848', '51.489548756353095');
INSERT INTO `stations` VALUES (655, 'Barkingside', '', '0.08883746175016657', '51.58527870308355');
INSERT INTO `stations` VALUES (654, 'Barking', '', '0.08237348640942278', '51.53862606830142');
INSERT INTO `stations` VALUES (653, 'Barbican', '', '-0.09727131913647503', '51.51919393261217');
INSERT INTO `stations` VALUES (652, 'Bank', '', '-0.08745071594037705', '51.51273866130698');
INSERT INTO `stations` VALUES (651, 'Balham', '', '-0.15082341546665967', '51.44270573172805');
INSERT INTO `stations` VALUES (650, 'Baker Street', '', '-0.15626517182617894', '51.52193492507074');
INSERT INTO `stations` VALUES (649, 'Arsenal', '', '-0.1057887226624963', '51.55710475152352');
INSERT INTO `stations` VALUES (648, 'Arnos Grove', '', '-0.1322306012130133', '51.615986203787536');
INSERT INTO `stations` VALUES (647, 'Archway', '', '-0.13433101972225706', '51.564756933384565');
INSERT INTO `stations` VALUES (646, 'Angel', '', '-0.10539267723743864', '51.53191641970237');
INSERT INTO `stations` VALUES (645, 'Amersham', '', '-0.6057582699908927', '51.67292590122881');
INSERT INTO `stations` VALUES (644, 'Alperton', '', '-0.29833775004733365', '51.53937097197851');
INSERT INTO `stations` VALUES (643, 'All Saints', '', '-0.01263112928055621', '51.50969578921101');
INSERT INTO `stations` VALUES (642, 'Aldgate East', '', '-0.07153057339616219', '51.51427666307439');
INSERT INTO `stations` VALUES (641, 'Aldgate', '', '-0.07588974851699176', '51.51344890487385');
INSERT INTO `stations` VALUES (640, 'Acton Town', '', '-0.27958171853821395', '51.501325159389324');
INSERT INTO `stations` VALUES (639, 'Acton Central', '', '-0.2620601922898317', '51.507362190750676');
INSERT INTO `stations` VALUES (620, 'West Finchley', '', '-0.18741478863739983', '51.608757361121604');
INSERT INTO `stations` VALUES (621, 'West Ham', '', '0.006881852093757745', '51.52735089685871');
INSERT INTO `stations` VALUES (622, 'West Hampstead', '', '-0.1899165734119853', '51.54584212700063');
INSERT INTO `stations` VALUES (623, 'West Harrow', '', '-0.35315793963753833', '51.57882439970359');
INSERT INTO `stations` VALUES (624, 'West India Quay', '', '-0.019988211355998813', '51.50622276588244');
INSERT INTO `stations` VALUES (625, 'West Kensington', '', '-0.20511814746685145', '51.48941683650061');
INSERT INTO `stations` VALUES (626, 'West Ruislip', '', '-0.4357952369291849', '51.56826393835236');
INSERT INTO `stations` VALUES (627, 'Westbourne Park', '', '-0.2010353196345201', '51.51993214718123');
INSERT INTO `stations` VALUES (628, 'Westferry', '', '-0.02567103902581906', '51.50811732551564');
INSERT INTO `stations` VALUES (629, 'Westminster', '', '-0.1239781659673938', '51.50073768589371');
INSERT INTO `stations` VALUES (630, 'White City', '', '-0.22299612064977503', '51.51127348952614');
INSERT INTO `stations` VALUES (631, 'Whitechapel', '', '-0.059816222983268566', '51.51858025869957');
INSERT INTO `stations` VALUES (632, 'Willesden Green', '', '-0.22156042027770084', '51.5481248184289');
INSERT INTO `stations` VALUES (633, 'Willesden Junction', '', '-0.24384254580019124', '51.53137304668498');
INSERT INTO `stations` VALUES (634, 'Wimbledon', '', '-0.20495598935495832', '51.42016394742221');
INSERT INTO `stations` VALUES (635, 'Wimbledon Park', '', '-0.19867549704571416', '51.433557982464954');
INSERT INTO `stations` VALUES (636, 'Wood Green', '', '-0.10847274895366035', '51.59671946198453');
INSERT INTO `stations` VALUES (637, 'Woodford', '', '0.03490342242437058', '51.60601251019075');
INSERT INTO `stations` VALUES (638, 'Woodside Park', '', '-0.18420493612312638', '51.61680177229409');
INSERT INTO `stations` VALUES (945, 'West Ruislip', '', '-0.4357952369291849', '51.56826393835236');
INSERT INTO `stations` VALUES (946, 'Westbourne Park', '', '-0.2010353196345201', '51.51993214718123');
INSERT INTO `stations` VALUES (947, 'Westferry', '', '-0.02567103902581906', '51.50811732551564');
INSERT INTO `stations` VALUES (948, 'Westminster', '', '-0.1239781659673938', '51.50073768589371');
INSERT INTO `stations` VALUES (949, 'White City', '', '-0.22299612064977503', '51.51127348952614');
INSERT INTO `stations` VALUES (950, 'Whitechapel', '', '-0.059816222983268566', '51.51858025869957');
INSERT INTO `stations` VALUES (951, 'Willesden Green', '', '-0.22156042027770084', '51.5481248184289');
INSERT INTO `stations` VALUES (952, 'Willesden Junction', '', '-0.24384254580019124', '51.53137304668498');
INSERT INTO `stations` VALUES (953, 'Wimbledon', '', '-0.20495598935495832', '51.42016394742221');
INSERT INTO `stations` VALUES (954, 'Wimbledon Park', '', '-0.19867549704571416', '51.433557982464954');
INSERT INTO `stations` VALUES (955, 'Wood Green', '', '-0.10847274895366035', '51.59671946198453');
INSERT INTO `stations` VALUES (956, 'Woodford', '', '0.03490342242437058', '51.60601251019075');
INSERT INTO `stations` VALUES (957, 'Woodside Park', '', '-0.18420493612312638', '51.61680177229409');

-- --------------------------------------------------------

-- 
-- Table structure for table `stations_test`
-- 

DROP TABLE IF EXISTS `stations_test`;
CREATE TABLE `stations_test` (
  `id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `line` varchar(50) NOT NULL default '',
  `x` varchar(25) NOT NULL default '',
  `y` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `stations_test`
-- 

INSERT INTO `stations_test` VALUES (1, 'Clapham Common', 'Northern', '-0.1371110334532604', '51.461375226703531');

-- --------------------------------------------------------

-- 
-- Table structure for table `tfl_station_codes`
-- 

DROP TABLE IF EXISTS `tfl_station_codes`;
CREATE TABLE `tfl_station_codes` (
  `id` int(6) unsigned NOT NULL auto_increment,
  `station_id` varchar(50) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  `line` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=235 ;

-- 
-- Dumping data for table `tfl_station_codes`
-- 

INSERT INTO `tfl_station_codes` VALUES (202, '632', 'WLG', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (201, '629', 'WMS', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (200, '941', 'WHD', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (199, '940', 'WHM', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (198, '936', 'WPK', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (197, '908', 'SWC', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (196, '904', 'SFD', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (195, '900', 'STA', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (194, '897', 'SJW', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (193, '895', 'SWK', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (192, '859', 'QBY', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (191, '830', 'NGW', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (190, '824', 'NEA', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (189, '797', 'KBY', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (188, '794', 'KIL', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (187, '738', 'FRD', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (186, '716', 'DHL', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (185, '689', 'CAP', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (184, '686', 'CPK', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (183, '685', 'CWF', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (182, '684', 'CWR', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (181, '667', 'BDS', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (180, '662', 'BER', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (179, '650', 'BAK', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (178, '928', 'WAL', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (177, '927', 'VIC', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (176, '926', 'VUX', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (175, '914', 'TTH', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (174, '876', 'SVS', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (173, '850', 'PIM', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (172, '844', 'OXC', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (171, '772', 'HBY', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (170, '751', 'GPK', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (169, '740', 'FPK', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (168, '674', 'BRX', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (167, '665', 'BHR', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (166, '638', 'WSP', 'northern');
INSERT INTO `tfl_station_codes` VALUES (165, '939', 'WFY', 'northern');
INSERT INTO `tfl_station_codes` VALUES (164, '933', 'WLO', 'northern');
INSERT INTO `tfl_station_codes` VALUES (163, '931', 'WST', 'northern');
INSERT INTO `tfl_station_codes` VALUES (162, '918', 'TPK', 'northern');
INSERT INTO `tfl_station_codes` VALUES (161, '915', 'TOT', 'northern');
INSERT INTO `tfl_station_codes` VALUES (160, '913', 'TCR', 'northern');
INSERT INTO `tfl_station_codes` VALUES (159, '912', 'TBY', 'northern');
INSERT INTO `tfl_station_codes` VALUES (158, '911', 'TBE', 'northern');
INSERT INTO `tfl_station_codes` VALUES (157, '902', 'STK', 'northern');
INSERT INTO `tfl_station_codes` VALUES (156, '891', 'SWM', 'northern');
INSERT INTO `tfl_station_codes` VALUES (155, '843', 'OVL', 'northern');
INSERT INTO `tfl_station_codes` VALUES (154, '841', 'OLD', 'northern');
INSERT INTO `tfl_station_codes` VALUES (153, '822', 'MCR', 'northern');
INSERT INTO `tfl_station_codes` VALUES (152, '821', 'MOR', 'northern');
INSERT INTO `tfl_station_codes` VALUES (151, '820', 'MGT', 'northern');
INSERT INTO `tfl_station_codes` VALUES (150, '817', 'MHE', 'northern');
INSERT INTO `tfl_station_codes` VALUES (149, '809', 'LON', 'northern');
INSERT INTO `tfl_station_codes` VALUES (148, '803', 'LSQ', 'northern');
INSERT INTO `tfl_station_codes` VALUES (147, '796', 'KXX', 'northern');
INSERT INTO `tfl_station_codes` VALUES (146, '790', 'KTN', 'northern');
INSERT INTO `tfl_station_codes` VALUES (145, '786', 'KEN', 'northern');
INSERT INTO `tfl_station_codes` VALUES (144, '773', 'HIG', 'northern');
INSERT INTO `tfl_station_codes` VALUES (143, '770', 'HBT', 'northern');
INSERT INTO `tfl_station_codes` VALUES (142, '768', 'HND', 'northern');
INSERT INTO `tfl_station_codes` VALUES (141, '759', 'HMP', 'northern');
INSERT INTO `tfl_station_codes` VALUES (140, '747', 'GST', 'northern');
INSERT INTO `tfl_station_codes` VALUES (139, '745', 'GGR', 'northern');
INSERT INTO `tfl_station_codes` VALUES (138, '737', 'FYC', 'northern');
INSERT INTO `tfl_station_codes` VALUES (137, '733', 'EUS', 'northern');
INSERT INTO `tfl_station_codes` VALUES (136, '731', 'EMB', 'northern');
INSERT INTO `tfl_station_codes` VALUES (135, '728', 'ELE', 'northern');
INSERT INTO `tfl_station_codes` VALUES (134, '726', 'EDG', 'northern');
INSERT INTO `tfl_station_codes` VALUES (133, '721', 'EFY', 'northern');
INSERT INTO `tfl_station_codes` VALUES (132, '703', 'CLW', 'northern');
INSERT INTO `tfl_station_codes` VALUES (131, '702', 'COL', 'northern');
INSERT INTO `tfl_station_codes` VALUES (130, '700', 'CPS', 'northern');
INSERT INTO `tfl_station_codes` VALUES (129, '699', 'CPN', 'northern');
INSERT INTO `tfl_station_codes` VALUES (128, '698', 'CPC', 'northern');
INSERT INTO `tfl_station_codes` VALUES (127, '693', 'CHX', 'northern');
INSERT INTO `tfl_station_codes` VALUES (126, '691', 'CHF', 'northern');
INSERT INTO `tfl_station_codes` VALUES (125, '683', 'CTN', 'northern');
INSERT INTO `tfl_station_codes` VALUES (124, '679', 'BUR', 'northern');
INSERT INTO `tfl_station_codes` VALUES (123, '673', 'BTX', 'northern');
INSERT INTO `tfl_station_codes` VALUES (122, '668', 'BOR', 'northern');
INSERT INTO `tfl_station_codes` VALUES (121, '661', 'BPK', 'northern');
INSERT INTO `tfl_station_codes` VALUES (120, '652', 'BNK', 'northern');
INSERT INTO `tfl_station_codes` VALUES (119, '651', 'BAL', 'northern');
INSERT INTO `tfl_station_codes` VALUES (118, '647', 'ARC', 'northern');
INSERT INTO `tfl_station_codes` VALUES (117, '646', 'ANG', 'northern');
INSERT INTO `tfl_station_codes` VALUES (203, '733', 'EUS', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (204, '796', 'KXX', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (205, '902', 'STK', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (206, '931', 'WST', 'victoria');
INSERT INTO `tfl_station_codes` VALUES (207, '751', 'GPK', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (208, '809', 'LON', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (209, '933', 'WLO', 'jubilee');
INSERT INTO `tfl_station_codes` VALUES (210, '650', 'BST', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (211, '693', 'CHX', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (212, '727', 'ERB', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (213, '728', 'ELE', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (214, '731', 'EMB', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (215, '762', 'HSD', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (216, '763', 'HAW', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (217, '787', 'KGN', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (218, '792', 'KNT', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (219, '795', 'KPK', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (220, '800', 'LAM', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (221, '811', 'MDV', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (222, '815', 'MYB', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (223, '832', 'NWM', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (224, '844', 'OXC', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (225, '845', 'PAD', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (226, '849', 'PIC', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (227, '858', 'QPK', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (228, '864', 'RPK', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (229, '888', 'SKT', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (230, '903', 'SPK', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (231, '932', 'WAR', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (232, '933', 'WLO', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (233, '935', 'WEM', 'bakerloo');
INSERT INTO `tfl_station_codes` VALUES (234, '633', 'WJN', 'bakerloo');

