-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: registrator_db
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE IF NOT EXISTS `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;



--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'35в','Львів','Галицький','20','79026','Львівська','Пастернака',1),(2,'17','Хмельницький','Семенівський','17а','29000','Хмельницька','Героїв Майдану',2),(3,'30к','Стрий','Стрийський','0','353567','Львівська','Героїв Майдану',3),(4,'45','Львів','Залізничний','78','79026','Львівська','Стрийська',4),(5,'34','Київ','Троєщина','90','4456767','Київська','Бандери',5),(6,'43','Львів','Троєщина','43','34345','Киівська','Стрийська',6);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (5,49.91754184754319,24.21084593050182,1,2),(6,49.9024188855169,26.249633822590113,2,2),(7,49.158718087297515,26.2177737057209,3,2),(8,49.14506496754859,24.739013705402613,4,2),(9,49.022741040596344,24.524780306965113,1,3),(10,49.030305067856254,24.943359391763806,2,3),(11,48.806139908078684,24.964233431965113,3,3),(12,48.77356871983263,24.414917025715113,4,3),(14,49.824805785820764,24.02088761329651,1,4),(15,49.818589914319574,24.020270705223083,2,4),(16,49.81786998450602,24.024454951286316,3,4),(17,49.81819533872909,24.02509868144989,4,4),(18,49.81843069999485,24.025238156318665,5,4),(19,49.821317243571634,24.02835488319397,6,4),(20,49.82167718417192,24.028934240341187,7,4),(21,49.82184330969968,24.029427766799927,8,4),(22,49.822037122094414,24.02947336435318,9,4),(23,49.82368449610263,24.0322145819664,10,4),(24,49.82492345051901,24.030900299549103,11,4),(25,49.8252626001068,24.030782282352448,12,4),(26,49.825636354041386,24.030868113040924,13,4),(27,49.825882061073294,24.0310075879097,14,4),(28,49.82606547536814,24.031307995319366,15,4),(29,49.82619351889761,24.03167814016342,16,4),(30,49.82677490147095,24.031409919261932,17,4),(31,49.826819889116884,24.031608402729034,18,4),(32,49.826972154685045,24.03150513768196,19,4),(33,49.82717113737555,24.031507819890976,20,4),(34,49.82737531006801,24.03141662478447,21,4),(35,49.82754660683161,24.03126373887062,22,4),(36,49.82767637670322,24.031086713075638,23,4),(37,49.82776288975754,24.03091236948967,24,4),(38,49.82756737003446,24.03062805533409,25,4),(39,49.82745144203784,24.030416160821915,26,4),(40,49.82736492842647,24.03019353747368,27,4),(41,49.82731128990973,24.02993604540825,28,4),(42,49.82727495410652,24.029675871133804,29,4),(43,49.82723342744088,24.02901068329811,30,4),(44,49.827191900739564,24.0288282930851,31,4),(45,49.827127880338544,24.02867004275322,32,4),(46,49.82704482671908,24.028530567884445,33,4),(47,49.826027408307546,24.02722030878067,34,4),(48,49.825837072555174,24.026812613010406,35,4),(49,49.82576093804454,24.026539027690887,36,4),(50,49.82556367989134,24.025589525699615,37,4),(51,49.825477162903766,24.025385677814484,38,4),(52,49.824978822042695,24.024755358695984,39,4),(53,49.82492691124109,24.024548828601837,40,4),(54,49.82490960762818,24.024291336536407,41,4),(55,49.824961518448355,24.023910462856293,42,4),(56,49.825340465747956,24.02217909693718,43,4),(57,49.82533700505547,24.02177944779396,44,4),(58,49.82526952150219,24.02143746614456,45,4),(59,49.82516916117195,24.021179974079132,46,4),(60,49.82504111493106,24.02098685503006,47,4),(61,49.82490268618129,24.020890295505524,48,4),(62,49.830536416279834,24.019433856010437,1,5),(63,49.82987895088713,24.01940166950226,2,5),(64,49.82986510941439,24.02013123035431,3,5),(65,49.82824562976009,24.020013213157654,4,5),(66,49.828017237241085,24.019755721092224,5,5),(67,49.82787881700774,24.019669890403748,6,5),(68,49.827892659048906,24.019197821617126,7,5),(69,49.82768502801561,24.01910126209259,8,5),(70,49.8265845686597,24.01808202266693,9,5),(71,49.825504848356616,24.020227789878845,10,5),(72,49.826058554086636,24.020914435386658,11,5),(73,49.82594089214931,24.021772742271423,12,5),(74,49.825497926994885,24.021676182746887,13,5),(75,49.82542871332312,24.021922945976257,14,5),(76,49.8254217919505,24.022191166877747,15,5),(77,49.82500650778075,24.024240374565125,16,5),(78,49.82502727207392,24.02463734149933,17,5),(79,49.82556714056765,24.0253347158432,18,5),(80,49.8256709607411,24.025645852088928,19,5),(81,49.82575401671942,24.02607500553131,20,5),(82,49.82661917468109,24.02531325817108,21,5),(83,49.826030868950646,24.024294018745422,22,5),(84,49.82590628564269,24.023972153663635,23,5),(85,49.825850915180595,24.023521542549133,24,5),(86,49.82614160939948,24.021697640419006,25,5),(87,49.82659841107124,24.02182638645172,26,5),(88,49.82632156208817,24.02357518672943,27,5),(89,49.826397695716445,24.023939967155457,28,5),(90,49.82738050088793,24.025463461875916,29,5),(91,49.82756044896784,24.025956988334656,30,5),(92,49.82759505429106,24.026246666908264,31,5),(93,49.82824562976009,24.02662217617035,32,5),(94,49.82805876323385,24.028231501579285,33,5),(95,49.82805184223753,24.028499722480774,34,5),(96,49.828591676976515,24.02985155582428,35,5),(97,49.82902077208664,24.02984082698822,36,5),(98,49.82895848432297,24.02831733226776,37,5),(99,49.829124584847854,24.02584969997406,38,5),(100,49.82873701606915,24.025742411613464,39,5),(101,49.82929068480235,24.02256667613983,40,5),(102,49.829595199904176,24.022684693336487,41,5),(103,49.829927396010525,24.021493792533875,42,5),(104,49.83030111390304,24.02061402797699,43,5),(105,49.83012117601894,24.020442366600037,44,5),(106,49.82140722897276,24.036996960639954,1,6),(107,49.82051428950597,24.0337997674942,2,6),(108,49.82037584780299,24.033960700035095,3,6),(109,49.8202374057039,24.033638834953308,4,6),(110,49.81865221543448,24.035398364067078,5,6),(111,49.81853453548344,24.03561294078827,6,6),(112,49.81819533872909,24.035966992378235,7,6),(113,49.81730233998537,24.03654634952545,8,6),(114,49.81652700988103,24.03707206249237,9,6),(115,49.81701851522789,24.037511944770813,10,6),(116,49.81682468272954,24.037994742393494,11,6),(117,49.81706005066225,24.038209319114685,12,6),(118,49.81745463551039,24.039217829704285,13,6),(119,49.81756539559115,24.03959333896637,14,6),(120,49.817198501852566,24.040204882621765,15,6),(121,49.817655387970085,24.040676951408386,16,6),(122,49.81833378667112,24.039915204048157,17,6),(123,49.81865913777562,24.03933584690094,18,6),(124,49.81928906667457,24.040644764900208,19,6),(125,49.819579800323474,24.0403550863266,20,6),(126,49.82050736743022,24.03986155986786,21,6),(127,49.82033431521485,24.03911054134369,22,6),(128,49.82070118517663,24.03861701488495,23,6),(129,49.82084654797692,24.038016200065613,24,6),(130,49.820756561533,24.036954045295715,25,6),(131,49.82110266232434,24.03683602809906,26,6),(132,49.82117188218552,24.03711497783661,27,6),(133,49.830342637935054,24.017170071601868,1,7),(134,49.83033571726554,24.017009139060974,2,7),(135,49.8302249864184,24.016773104667664,3,7),(136,49.83052949563803,24.016461968421936,4,7),(137,49.83061946390421,24.01656925678253,5,7),(138,49.83100701759922,24.016000628471375,6,7),(139,49.83067482890792,24.015313982963562,7,7),(140,49.83049489241418,24.015013575553894,8,7),(141,49.83006581038147,24.014541506767273,9,7),(142,49.82917303072685,24.013307690620422,10,7),(143,49.828653965212546,24.012623727321625,11,7),(144,49.82826293217971,24.012430608272552,12,7),(145,49.82755352790022,24.011588394641876,13,7),(146,49.82735281650853,24.011910259723663,14,7),(147,49.82705520842929,24.01151329278946,15,7),(148,49.82721093381542,24.01122897863388,16,7),(149,49.82674721674495,24.01070863008499,17,7),(150,49.82659841107124,24.010601341724396,18,7),(151,49.82653958079489,24.01100367307663,19,7),(152,49.82635962891727,24.01100367307663,20,7),(153,49.82619351889761,24.011068046092987,21,7),(154,49.82577132003031,24.011416733264923,22,7),(155,49.82569864608306,24.01152938604355,23,7),(156,49.82606547536814,24.011926352977753,24,7),(157,49.82629733772676,24.012167751789093,25,7),(158,49.82728706604395,24.013369381427765,26,7),(159,49.827494698785486,24.013830721378326,27,7),(160,49.82759505429106,24.014093577861786,28,7),(161,49.827819988288645,24.01371270418167,29,7),(162,49.829017311657424,24.015155732631683,30,7),(163,49.829494848548315,24.01520401239395,31,7),(164,49.82974745673612,24.015177190303802,32,7),(165,49.82979936236477,24.016561210155487,33,7),(166,49.829660947231304,24.016550481319427,34,7),(167,49.82966786799738,24.01698499917984,35,7),(168,49.83003120682587,24.01695817708969,36,7),(169,49.83010041391234,24.017060101032257,37,7),(170,49.83010041391234,24.017183482646942,38,7),(171,49.834083114901524,24.031050503253937,1,8),(172,49.83358140259826,24.030143916606903,2,8),(173,49.83364022431007,24.029773771762848,3,8),(174,49.83319732966256,24.029274880886078,4,8),(175,49.832861695860984,24.0299990773201,5,8),(176,49.832702528501706,24.029864966869354,6,8),(177,49.832411873711294,24.030589163303375,7,8),(178,49.832975880817784,24.031533300876617,8,8),(179,49.833456838737106,24.03218239545822,9,8),(180,49.81580012662576,24.00971621274948,1,9),(181,49.815692823887034,24.00950700044632,2,9),(182,49.81510438528329,24.00923877954483,3,9),(183,49.81446747896643,24.00773137807846,4,9),(184,49.814554015642855,24.007082283496857,5,9),(185,49.8142355599105,24.006856977939606,6,9),(186,49.814249405855485,24.005564153194427,7,9),(187,49.81435671179478,24.00472193956375,8,9),(188,49.81425979031161,24.004684388637543,9,9),(189,49.81432901996225,24.00396555662155,10,9),(190,49.81419402205178,24.00403529405594,11,9),(191,49.81373364173027,24.003885090351105,12,9),(192,49.81375094934041,24.002602994441986,13,9),(193,49.81099549986449,24.00186002254486,14,9),(194,49.81085703092696,24.00516450405121,15,9),(195,49.81143167442836,24.00663435459137,16,9),(196,49.81157014172188,24.006698727607727,17,9),(197,49.81159091178173,24.00709569454193,18,9),(198,49.81122397274533,24.00709569454193,19,9),(199,49.81121704934054,24.008565545082092,20,9),(200,49.81220016290549,24.008962512016296,21,9),(201,49.812027080979774,24.009777903556824,22,9),(202,49.81280248318182,24.00984227657318,23,9),(203,49.813889409998446,24.009681344032288,24,9),(204,49.81414556117156,24.008983969688416,25,9),(205,49.814830931967606,24.009466767311096,26,9),(206,49.814941698053815,24.01014268398285,27,9),(207,49.81476862593268,24.01063621044159,28,9),(208,49.81476862593268,24.01112973690033,29,9),(209,49.83158142182773,24.031163156032562,1,10),(210,49.83121117410042,24.030637443065643,2,10),(211,49.83047413046795,24.031817615032196,3,10),(212,49.83093089122566,24.03243988752365,4,10),(213,49.825048036358154,23.99779111146927,1,11),(214,49.824712346003544,23.996562659740448,2,11),(215,49.82480924655124,23.996090590953827,3,11),(216,49.82480924655124,23.995849192142487,4,11),(217,49.824712346003544,23.99555414915085,5,11),(218,49.82463967046541,23.995436131954193,6,11),(219,49.82440433940222,23.995135724544525,7,11),(220,49.82347338618063,23.997174203395844,8,11),(221,49.82302347671588,23.997211754322052,9,11),(222,49.82270507672028,23.99800568819046,10,11),(223,49.82262201550723,23.999169766902924,11,11),(224,49.823518376897,23.99975448846817,12,11),(225,49.82375717307571,23.99897664785385,13,11),(226,49.823860997133586,23.99877279996872,14,11),(227,49.824058262229705,23.99853140115738,15,11),(228,49.824175928746136,23.998413383960724,16,11),(229,49.82434204569388,23.998354375362396,17,11),(230,49.82483693238639,23.998316824436188,18,11),(231,49.82483001092909,23.997941315174103,19,11),(232,49.84013785290865,24.021641314029694,1,12),(233,49.84057376478728,24.021115601062775,2,12),(234,49.83799629223447,24.016164243221283,3,12),(235,49.836923746395804,24.01846557855606,4,12),(236,49.836685015214144,24.019307792186737,5,12),(237,49.838598291410264,24.022682011127472,6,12),(238,49.839546251930024,24.021373093128204,7,12),(239,49.83955317128154,24.0212282538414,8,12),(240,49.839684638772425,24.02101904153824,9,12),(241,49.83974345306053,24.021094143390656,10,12),(242,49.839791888302884,24.021029770374298,11,12),(243,49.83992681479357,24.01575654745102,1,13),(244,49.83994065338674,24.015413224697113,2,13),(245,49.839266017361,24.01476413011551,3,13),(246,49.839349049995214,24.013433754444122,4,13),(247,49.83898232145154,24.013315737247467,5,13),(248,49.83896848258411,24.013664424419403,6,13),(249,49.83878511721673,24.013648331165314,7,13),(250,49.838778197755296,24.013798534870148,8,13),(251,49.838466820965586,24.01376098394394,9,13),(252,49.8384806599766,24.013546407222748,10,13),(253,49.83813814328994,24.01350885629654,11,13),(254,49.83810354550992,24.01370197534561,12,13),(255,49.83805856835887,24.014152586460114,13,13),(256,49.83800667159413,24.014136493206024,14,13),(257,49.83790287789755,24.015085995197296,15,13),(258,49.83875397963245,24.01673823595047,16,13),(259,49.83947705836027,24.015863835811615,17,13),(260,49.839750372383826,24.015890657901764,18,13),(261,49.89242267614535,23.91826629638672,1,14),(262,49.74666869146797,23.91895294189453,2,14),(263,49.74489390461096,24.277381896972656,3,14),(264,49.90215348414364,24.26502227783203,4,14),(265,49.80448010718857,24.018521904945374,1,15),(266,49.80481940007729,24.015045762062073,2,15),(267,49.803372195481934,24.014734625816345,3,15),(268,49.803302950158404,24.01564657688141,4,15),(269,49.80220193620765,24.015442728996277,5,15),(270,49.80221578559521,24.01582896709442,6,15),(271,49.80198034546755,24.0178245306015,7,15),(272,49.802077291541146,24.017931818962097,8,15);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discrete_parameters`
--

LOCK TABLES `discrete_parameters` WRITE;
/*!40000 ALTER TABLE `discrete_parameters` DISABLE KEYS */;
INSERT INTO `discrete_parameters` VALUES (1,'периметер','м',1),(2,'площа','га',1),(3,'потужність','мВт',2),(4,'напруженість','мВт',2),(11,'площа','га',2);
/*!40000 ALTER TABLE `discrete_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `inquiry_list`
--

LOCK TABLES `inquiry_list` WRITE;
/*!40000 ALTER TABLE `inquiry_list` DISABLE KEYS */;
INSERT INTO `inquiry_list` VALUES (1,'2015-12-30 16:06:00','OUTPUT',2,2,3),(2,'2016-01-14 11:43:04','OUTPUT',2,5,4),(5,'2016-01-16 12:39:21','OUTPUT',2,4,4),(14,'2016-01-17 17:32:59','OUTPUT',2,2,3),(17,'2015-12-08 00:00:00','INPUT',2,2,3),(18,'2015-12-08 00:00:00','INPUT',2,3,3),(19,'2016-01-03 00:00:00','INPUT',2,4,5),(20,'2016-01-03 00:00:00','INPUT',2,5,3),(21,'2016-01-03 00:00:00','INPUT',4,6,3),(22,'2016-01-03 00:00:00','INPUT',2,7,5),(23,'2016-01-04 00:00:00','INPUT',4,8,3),(24,'2016-01-04 00:00:00','INPUT',2,9,3),(25,'2016-01-04 00:00:00','INPUT',4,10,3),(26,'2016-01-04 00:00:00','INPUT',2,11,6),(27,'2016-01-04 00:00:00','INPUT',4,12,3),(28,'2016-01-04 00:00:00','INPUT',2,13,5),(29,'2016-01-05 00:00:00','INPUT',4,14,3),(30,'2016-01-07 00:00:00','INPUT',2,15,5),(33,'2016-01-18 10:22:15','OUTPUT',2,4,3),(34,'2016-01-18 10:25:29','OUTPUT',4,4,3),(35,'2016-01-18 10:26:07','OUTPUT',4,14,3);
/*!40000 ALTER TABLE `inquiry_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `linear_parameters`
--

LOCK TABLES `linear_parameters` WRITE;
/*!40000 ALTER TABLE `linear_parameters` DISABLE KEYS */;
INSERT INTO `linear_parameters` VALUES (1,'cмуга радіочастот','МГц',2),(2,'широта діапазону','кГц',2),(3,'радіус дії','км',2);
/*!40000 ALTER TABLE `linear_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `list_of_resouces`
--

LOCK TABLES `list_of_resouces` WRITE;
/*!40000 ALTER TABLE `list_of_resouces` DISABLE KEYS */;
INSERT INTO `list_of_resouces` VALUES (2,'2015-12-08 15:33:01','радіочастоти','123555','Паспорт громадянина україни...','ACTIVE',2,1,2),(3,'2015-12-08 15:33:01','суперрадіочастоти','111111','Посвідчення водія ...','ACTIVE',2,1,2),(4,'2016-01-02 00:00:00','Стрийський парк','79000-001','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\n','ACTIVE',2,1,1),(5,'2016-01-03 00:00:00','парк Культури','79000-002','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\nволевиявлення людини;\r\nдоручення;\r\n','ACTIVE',2,1,1),(6,'2016-01-03 00:00:00','парк Залізна вода','79000-003','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\nдоручення;\r\n','ACTIVE',4,2,1),(7,'2016-01-03 00:00:00','Студентський парк','79000-004','волевиявлення людини;\r\nдоручення;\r\n','ACTIVE',2,1,1),(8,'2016-01-04 00:00:00','Ботанічний сад','79000-005','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\nдоручення;\r\n','ACTIVE',4,2,1),(9,'2016-01-04 00:00:00','парк Горіховий гай','79000-006','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\nдоручення;\r\n','ACTIVE',2,1,1),(10,'2016-01-04 00:00:00','Дендрарій','79000-007','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\nдоручення;\r\n','ACTIVE',4,2,1),(11,'2016-01-04 00:00:00','парк Піскові озера','79000-008','волевиявлення людини;\r\nдоручення;\r\n','ACTIVE',2,1,1),(12,'2016-01-04 00:00:00','парк Імені Франка','79000-009','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\nдоручення;\r\n','ACTIVE',4,2,1),(13,'2016-01-04 00:00:00','сад Собору святого Юра','79000-010','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\nдоручення;\r\n','ACTIVE',2,1,1),(14,'2016-01-05 00:00:00','Радіо 24','79000-1-001','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\nдоручення;\r\n','ACTIVE',4,2,2),(15,'2016-01-07 00:00:00','парк Богданівка','79000-011','паспорт громадянина України КС 2234, виданий на ім’я Олександр Олександрович Архилюк Львівський....;\r\nдоручення;\r\n','ACTIVE',2,1,1);
/*!40000 ALTER TABLE `list_of_resouces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `other_document`
--

LOCK TABLES `other_document` WRITE;
/*!40000 ALTER TABLE `other_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `passport_data`
--

LOCK TABLES `passport_data` WRITE;
/*!40000 ALTER TABLE `passport_data` DISABLE KEYS */;
INSERT INTO `passport_data` VALUES (1,NULL,2234,'Львівським','КС',1),(2,NULL,123456,'Хмельницьким','КК',2),(3,NULL,123456,'Стрийським','КК',3),(4,NULL,1122456,'Львівський','КС',4),(5,NULL,1126789,'Київський','КС',5),(6,NULL,43545,'Львівським','КС',6);
/*!40000 ALTER TABLE `passport_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `polygon`
--

LOCK TABLES `polygon` WRITE;
/*!40000 ALTER TABLE `polygon` DISABLE KEYS */;
INSERT INTO `polygon` VALUES (2,49.91754184754319,26.249633822590113,49.14506496754859,24.21084593050182,2),(3,49.030305067856254,24.964233431965113,48.77356871983263,24.414917025715113,3),(4,49.82776288975754,24.0322145819664,49.81786998450602,24.020270705223083,4),(5,49.830536416279834,24.02985155582428,49.82500650778075,24.01808202266693,5),(6,49.82140722897276,24.040676951408386,49.81652700988103,24.033638834953308,6),(7,49.83100701759922,24.017183482646942,49.82569864608306,24.010601341724396,7),(8,49.834083114901524,24.03218239545822,49.832411873711294,24.029274880886078,8),(9,49.81580012662576,24.01112973690033,49.81085703092696,24.00186002254486,9),(10,49.83158142182773,24.03243988752365,49.83047413046795,24.030637443065643,10),(11,49.825048036358154,23.99975448846817,49.82262201550723,23.995135724544525,11),(12,49.84057376478728,24.022682011127472,49.836685015214144,24.016164243221283,12),(13,49.83994065338674,24.01673823595047,49.83790287789755,24.013315737247467,13),(14,49.90215348414364,24.277381896972656,49.74489390461096,23.91826629638672,14),(15,49.80481940007729,24.018521904945374,49.80198034546755,24.014734625816345,15);
/*!40000 ALTER TABLE `polygon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `registration_number_of_the_resource`
--

LOCK TABLES `registration_number_of_the_resource` WRITE;
/*!40000 ALTER TABLE `registration_number_of_the_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_number_of_the_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `registrator_owner`
--

LOCK TABLES `registrator_owner` WRITE;
/*!40000 ALTER TABLE `registrator_owner` DISABLE KEYS */;
INSERT INTO `registrator_owner` VALUES (3,2),(5,2),(6,2),(3,4);
/*!40000 ALTER TABLE `registrator_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `resource_discrete_values`
--

LOCK TABLES `resource_discrete_values` WRITE;
/*!40000 ALTER TABLE `resource_discrete_values` DISABLE KEYS */;
INSERT INTO `resource_discrete_values` VALUES (3,NULL,100,3,2),(4,NULL,500.55,3,2),(5,NULL,23.54,3,2),(6,NULL,200,4,2),(7,NULL,3280.3,1,4),(8,NULL,53.46747,2,4),(9,NULL,3299,1,5),(10,NULL,21.91676,2,5),(11,NULL,1860.6,1,6),(12,NULL,14.8679,2,6),(13,NULL,1743.7,1,7),(14,NULL,7.07496,2,7),(15,NULL,482.9,1,8),(16,NULL,1.98205,2,8),(17,NULL,2195.6,1,9),(18,NULL,19.00922,2,9),(19,NULL,241.5,1,10),(20,NULL,0.72436,2,10),(21,NULL,932.4,1,11),(22,NULL,4.33756,2,11),(23,NULL,1299.1,1,12),(24,NULL,9.43888,2,12),(25,NULL,802.1,1,13),(26,NULL,3.1126,2,13),(27,NULL,100,3,14),(28,NULL,100,4,14),(29,NULL,42728.62051,11,14),(30,NULL,791.4,1,15),(31,NULL,6.20849,2,15);
/*!40000 ALTER TABLE `resource_discrete_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `resource_linear_values`
--

LOCK TABLES `resource_linear_values` WRITE;
/*!40000 ALTER TABLE `resource_linear_values` DISABLE KEYS */;
INSERT INTO `resource_linear_values` VALUES (1,2483.5,2400,1,2),(2,5350,5150,2,2),(3,2700,2500,1,2),(4,2483.5,1100,3,2),(5,5350,1110,2,2),(6,2100,9999,1,2),(7,102.4,102.4,1,14),(8,102,100,2,14),(9,15,10,3,14);
/*!40000 ALTER TABLE `resource_linear_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `resource_types`
--

LOCK TABLES `resource_types` WRITE;
/*!40000 ALTER TABLE `resource_types` DISABLE KEYS */;
INSERT INTO `resource_types` VALUES (1,'земельний'),(2,'радіочастотний');
/*!40000 ALTER TABLE `resource_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'description','ADMIN'),(2,'description','REGISTRATOR'),(3,'description','USER'),(4,'description','COMMISSIONER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tomes`
--

LOCK TABLES `tomes` WRITE;
/*!40000 ALTER TABLE `tomes` DISABLE KEYS */;
INSERT INTO `tomes` VALUES (1,'12345',2),(2,'6789',4);
/*!40000 ALTER TABLE `tomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'oless@gmail.com','Олександр','Архилюк','admin','Олександрович','$2a$10$tkROwYPOXyBmKjarHW1rbuOOez2Z5gfkFCbUXUbOv1OY2wgekbZNC','UNBLOCK',1),(2,'petro@gmail.com','Петро','Петренко','registrator','Петрович','$2a$10$KJdq1wmP3MctLh.lEdAuseUCnSRdhJo8S7qwaZHFEUoGhfjOsOnrm','UNBLOCK',2),(3,'ivan@gmail.com','Юрій','Іванов','user','Іванович','$2a$10$Wcuw6mLD18wVT5diGYncJeVyL8J1bTSIly2IbLUX2bJ.UWZPC.qS.','UNBLOCK',3),(4,'vasyl@gmail.com','Василь','Василюк','vasyl','Васильович','pass4','UNBLOCK',2),(5,'oleh@gmail.com','Олег','Василюк','oleh','Олеговчич','pass5','INACTIVE',3),(6,'andr@gmail.com','Андрій','Іванов','commissioner','Петрович','commissioner','INACTIVE',4);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `will_data`
--

LOCK TABLES `will_data` WRITE;
/*!40000 ALTER TABLE `will_data` DISABLE KEYS */;
INSERT INTO `will_data` VALUES (1,'2016-01-02 00:00:00','comment',2);
/*!40000 ALTER TABLE `will_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-18 15:29:08
