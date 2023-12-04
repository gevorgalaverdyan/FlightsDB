CREATE TABLE Person (
	  p_id INTEGER PRIMARY KEY NOT NULL,
	  passenger_name VARCHAR(50) NOT NULL
);

CREATE TABLE Pokemon (
  poke_id INT PRIMARY KEY NOT NULL,
  name VARCHAR(79) NOT NULL,
  pok_height INT DEFAULT NULL,
  pok_weight INT DEFAULT NULL,
  pok_base_experience INT DEFAULT NULL
);

CREATE TABLE FavPokemon (
	p_id INTEGER NOT NULL,  
	poke_ID INTEGER NOT NULL, 
	PRIMARY KEY(p_id, poke_ID),
	FOREIGN KEY(p_id) references Person(p_id ) ON DELETE CASCADE,
	FOREIGN KEY(poke_ID) references Pokemon(poke_ID) ON DELETE CASCADE
);

INSERT INTO Pokemon VALUES (1,'bulbasaur',7,69,64),(2,'ivysaur',10,130,142),(3,'venusaur',20,1000,236),(4,'charmander',6,85,62),(5,'charmeleon',11,190,142),(6,'charizard',17,905,240),(7,'squirtle',5,90,63),(8,'wartortle',10,225,142),(9,'blastoise',16,855,239),(10,'caterpie',3,29,39),(11,'metapod',7,99,72),(12,'butterfree',11,320,178),(13,'weedle',3,32,39),(14,'kakuna',6,100,72),(15,'beedrill',10,295,178),(16,'pidgey',3,18,50),(17,'pidgeotto',11,300,122),(18,'pidgeot',15,395,216),(19,'rattata',3,35,51),(20,'raticate',7,185,145),(21,'spearow',3,20,52),(22,'fearow',12,380,155),(23,'ekans',20,69,58),(24,'arbok',35,650,153),(25,'pikachu',4,60,112),(26,'raichu',8,300,218),(27,'sandshrew',6,120,60),(28,'sandslash',10,295,158),(29,'nidoran-f',4,70,55),(30,'nidorina',8,200,128),(31,'nidoqueen',13,600,227),(32,'nidoran-m',5,90,55),(33,'nidorino',9,195,128),(34,'nidoking',14,620,227),(35,'clefairy',6,75,113),(36,'clefable',13,400,217),(37,'vulpix',6,99,60),(38,'ninetales',11,199,177),(39,'jigglypuff',5,55,95),(40,'wigglytuff',10,120,196),(41,'zubat',8,75,49),(42,'golbat',16,550,159),(43,'oddish',5,54,64),(44,'gloom',8,86,138),(45,'vileplume',12,186,221),(46,'paras',3,54,57),(47,'parasect',10,295,142),(48,'venonat',10,300,61),(49,'venomoth',15,125,158),(50,'diglett',2,8,53),(51,'dugtrio',7,333,142),(52,'meowth',4,42,58),(53,'persian',10,320,154),(54,'psyduck',8,196,64),(55,'golduck',17,766,175),(56,'mankey',5,280,61),(57,'primeape',10,320,159),(58,'growlithe',7,190,70),(59,'arcanine',19,1550,194),(60,'poliwag',6,124,60),(61,'poliwhirl',10,200,135),(62,'poliwrath',13,540,230),(63,'abra',9,195,62),(64,'kadabra',13,565,140),(65,'alakazam',15,480,225),(66,'machop',8,195,61),(67,'machoke',15,705,142),(68,'machamp',16,1300,227),(69,'bellsprout',7,40,60),(70,'weepinbell',10,64,137),(71,'victreebel',17,155,221),(72,'tentacool',9,455,67),(73,'tentacruel',16,550,180),(74,'geodude',4,200,60),(75,'graveler',10,1050,137),(76,'golem',14,3000,223),(77,'ponyta',10,300,82),(78,'rapidash',17,950,175),(79,'slowpoke',12,360,63),(80,'slowbro',16,785,172),(81,'magnemite',3,60,65),(82,'magneton',10,600,163),(83,'farfetchd',8,150,123),(84,'doduo',14,392,62),(85,'dodrio',18,852,161),(86,'seel',11,900,65),(87,'dewgong',17,1200,166),(88,'grimer',9,300,65),(89,'muk',12,300,175),(90,'shellder',3,40,61),(91,'cloyster',15,1325,184),(92,'gastly',13,1,62),(93,'haunter',16,1,142),(94,'gengar',15,405,225),(95,'onix',88,2100,77),(96,'drowzee',10,324,66),(97,'hypno',16,756,169),(98,'krabby',4,65,65),(99,'kingler',13,600,166),(100,'voltorb',5,104,66),(101,'electrode',12,666,168),(102,'exeggcute',4,25,65),(103,'exeggutor',20,1200,182),(104,'cubone',4,65,64),(105,'marowak',10,450,149),(106,'hitmonlee',15,498,159),(107,'hitmonchan',14,502,159),(108,'lickitung',12,655,77),(109,'koffing',6,10,68),(110,'weezing',12,95,172),(111,'rhyhorn',10,1150,69),(112,'rhydon',19,1200,170),(113,'chansey',11,346,395),(114,'tangela',10,350,87),(115,'kangaskhan',22,800,172),(116,'horsea',4,80,59),(117,'seadra',12,250,154),(118,'goldeen',6,150,64),(119,'seaking',13,390,158),(120,'staryu',8,345,68),(121,'starmie',11,800,182),(122,'mr-mime',13,545,161),(123,'scyther',15,560,100),(124,'jynx',14,406,159),(125,'electabuzz',11,300,172),(126,'magmar',13,445,173),(127,'pinsir',15,550,175),(128,'tauros',14,884,172),(129,'magikarp',9,100,40),(130,'gyarados',65,2350,189),(131,'lapras',25,2200,187),(132,'ditto',3,40,101),(133,'eevee',3,65,65),(134,'vaporeon',10,290,184),(135,'jolteon',8,245,184),(136,'flareon',9,250,184),(137,'porygon',8,365,79),(138,'omanyte',4,75,71),(139,'omastar',10,350,173),(140,'kabuto',5,115,71),(141,'kabutops',13,405,173),(142,'aerodactyl',18,590,180),(143,'snorlax',21,4600,189),(144,'articuno',17,554,261),(145,'zapdos',16,526,261),(146,'moltres',20,600,261),(147,'dratini',18,33,60),(148,'dragonair',40,165,147),(149,'dragonite',22,2100,270),(150,'mewtwo',20,1220,306),(151,'mew',4,40,270),(152,'chikorita',9,64,64),(153,'bayleef',12,158,142),(154,'meganium',18,1005,236),(155,'cyndaquil',5,79,62),(156,'quilava',9,190,142),(157,'typhlosion',17,795,240),(158,'totodile',6,95,63),(159,'croconaw',11,250,142),(160,'feraligatr',23,888,239),(161,'sentret',8,60,43),(162,'furret',18,325,145),(163,'hoothoot',7,212,52),(164,'noctowl',16,408,155),(165,'ledyba',10,108,53),(166,'ledian',14,356,137),(167,'spinarak',5,85,50),(168,'ariados',11,335,137),(169,'crobat',18,750,241),(170,'chinchou',5,120,66),(171,'lanturn',12,225,161),(172,'pichu',3,20,41),(173,'cleffa',3,30,44),(174,'igglybuff',3,10,42),(175,'togepi',3,15,49),(176,'togetic',6,32,142),(177,'natu',2,20,64),(178,'xatu',15,150,165),(179,'mareep',6,78,56),(180,'flaaffy',8,133,128),(181,'ampharos',14,615,230),(182,'bellossom',4,58,221),(183,'marill',4,85,88),(184,'azumarill',8,285,189),(185,'sudowoodo',12,380,144),(186,'politoed',11,339,225),(187,'hoppip',4,5,50),(188,'skiploom',6,10,119),(189,'jumpluff',8,30,207),(190,'aipom',8,115,72),(191,'sunkern',3,18,36),(192,'sunflora',8,85,149),(193,'yanma',12,380,78),(194,'wooper',4,85,42),(195,'quagsire',14,750,151),(196,'espeon',9,265,184),(197,'umbreon',10,270,184),(198,'murkrow',5,21,81),(199,'slowking',20,795,172),(200,'misdreavus',7,10,87),(201,'unown',5,50,118),(202,'wobbuffet',13,285,142),(203,'girafarig',15,415,159),(204,'pineco',6,72,58),(205,'forretress',12,1258,163),(206,'dunsparce',15,140,145),(207,'gligar',11,648,86),(208,'steelix',92,4000,179),(209,'snubbull',6,78,60),(210,'granbull',14,487,158),(211,'qwilfish',5,39,86),(212,'scizor',18,1180,175),(213,'shuckle',6,205,177),(214,'heracross',15,540,175),(215,'sneasel',9,280,86),(216,'teddiursa',6,88,66),(217,'ursaring',18,1258,175),(218,'slugma',7,350,50),(219,'magcargo',8,550,144),(220,'swinub',4,65,50),(221,'piloswine',11,558,158),(222,'corsola',6,50,133),(223,'remoraid',6,120,60),(224,'octillery',9,285,168),(225,'delibird',9,160,116),(226,'mantine',21,2200,163),(227,'skarmory',17,505,163),(228,'houndour',6,108,66),(229,'houndoom',14,350,175),(230,'kingdra',18,1520,243),(231,'phanpy',5,335,66),(232,'donphan',11,1200,175),(233,'porygon2',6,325,180),(234,'stantler',14,712,163),(235,'smeargle',12,580,88),(236,'tyrogue',7,210,42),(237,'hitmontop',14,480,159),(238,'smoochum',4,60,61),(239,'elekid',6,235,72),(240,'magby',7,214,73),(241,'miltank',12,755,172),(242,'blissey',15,468,608),(243,'raikou',19,1780,261),(244,'entei',21,1980,261),(245,'suicune',20,1870,261),(246,'larvitar',6,720,60),(247,'pupitar',12,1520,144),(248,'tyranitar',20,2020,270),(249,'lugia',52,2160,306),(250,'ho-oh',38,1990,306),(251,'celebi',6,50,270),(252,'treecko',5,50,62),(253,'grovyle',9,216,142),(254,'sceptile',17,522,239),(255,'torchic',4,25,62),(256,'combusken',9,195,142),(257,'blaziken',19,520,239),(258,'mudkip',4,76,62),(259,'marshtomp',7,280,142),(260,'swampert',15,819,241),(261,'poochyena',5,136,44),(262,'mightyena',10,370,147),(263,'zigzagoon',4,175,48),(264,'linoone',5,325,147),(265,'wurmple',3,36,39),(266,'silcoon',6,100,72),(267,'beautifly',10,284,178),(268,'cascoon',7,115,41),(269,'dustox',12,316,135),(270,'lotad',5,26,44),(271,'lombre',12,325,119),(272,'ludicolo',15,550,216),(273,'seedot',5,40,44),(274,'nuzleaf',10,280,119),(275,'shiftry',13,596,216),(276,'taillow',3,23,54),(277,'swellow',7,198,151),(278,'wingull',6,95,54),(279,'pelipper',12,280,151),(280,'ralts',4,66,40),(281,'kirlia',8,202,97),(282,'gardevoir',16,484,233),(283,'surskit',5,17,54),(284,'masquerain',8,36,145),(285,'shroomish',4,45,59),(286,'breloom',12,392,161),(287,'slakoth',8,240,56),(288,'vigoroth',14,465,154),(289,'slaking',20,1305,252),(290,'nincada',5,55,53),(291,'ninjask',8,120,160),(292,'shedinja',8,12,83),(293,'whismur',6,163,48),(294,'loudred',10,405,126),(295,'exploud',15,840,221),(296,'makuhita',10,864,47),(297,'hariyama',23,2538,166),(298,'azurill',2,20,38),(299,'nosepass',10,970,75),(300,'skitty',6,110,52),(301,'delcatty',11,326,133),(302,'sableye',5,110,133),(303,'mawile',6,115,133),(304,'aron',4,600,66),(305,'lairon',9,1200,151),(306,'aggron',21,3600,239),(307,'meditite',6,112,56),(308,'medicham',13,315,144),(309,'electrike',6,152,59),(310,'manectric',15,402,166),(311,'plusle',4,42,142),(312,'minun',4,42,142),(313,'volbeat',7,177,140),(314,'illumise',6,177,140),(315,'roselia',3,20,140),(316,'gulpin',4,103,60),(317,'swalot',17,800,163),(318,'carvanha',8,208,61),(319,'sharpedo',18,888,161),(320,'wailmer',20,1300,80),(321,'wailord',145,3980,175),(322,'numel',7,240,61),(323,'camerupt',19,2200,161),(324,'torkoal',5,804,165),(325,'spoink',7,306,66),(326,'grumpig',9,715,165),(327,'spinda',11,50,126),(328,'trapinch',7,150,58),(329,'vibrava',11,153,119),(330,'flygon',20,820,234),(331,'cacnea',4,513,67),(332,'cacturne',13,774,166),(333,'swablu',4,12,62),(334,'altaria',11,206,172),(335,'zangoose',13,403,160),(336,'seviper',27,525,160),(337,'lunatone',10,1680,154),(338,'solrock',12,1540,154),(339,'barboach',4,19,58),(340,'whiscash',9,236,164),(341,'corphish',6,115,62),(342,'crawdaunt',11,328,164),(343,'baltoy',5,215,60),(344,'claydol',15,1080,175),(345,'lileep',10,238,71),(346,'cradily',15,604,173),(347,'anorith',7,125,71),(348,'armaldo',15,682,173),(349,'feebas',6,74,40),(350,'milotic',62,1620,189),(351,'castform',3,8,147),(352,'kecleon',10,220,154),(353,'shuppet',6,23,59),(354,'banette',11,125,159),(355,'duskull',8,150,59),(356,'dusclops',16,306,159),(357,'tropius',20,1000,161),(358,'chimecho',6,10,149),(359,'absol',12,470,163),(360,'wynaut',6,140,52),(361,'snorunt',7,168,60),(362,'glalie',15,2565,168),(363,'spheal',8,395,58),(364,'sealeo',11,876,144),(365,'walrein',14,1506,239),(366,'clamperl',4,525,69),(367,'huntail',17,270,170),(368,'gorebyss',18,226,170),(369,'relicanth',10,234,170),(370,'luvdisc',6,87,116),(371,'bagon',6,421,60),(372,'shelgon',11,1105,147),(373,'salamence',15,1026,270),(374,'beldum',6,952,60),(375,'metang',12,2025,147),(376,'metagross',16,5500,270),(377,'regirock',17,2300,261),(378,'regice',18,1750,261),(379,'registeel',19,2050,261),(380,'latias',14,400,270),(381,'latios',20,600,270),(382,'kyogre',45,3520,302),(383,'groudon',35,9500,302),(384,'rayquaza',70,2065,306),(385,'jirachi',3,11,270),(386,'deoxys-normal',17,608,270),(387,'turtwig',4,102,64),(388,'grotle',11,970,142),(389,'torterra',22,3100,236),(390,'chimchar',5,62,62),(391,'monferno',9,220,142),(392,'infernape',12,550,240),(393,'piplup',4,52,63),(394,'prinplup',8,230,142),(395,'empoleon',17,845,239),(396,'starly',3,20,49),(397,'staravia',6,155,119),(398,'staraptor',12,249,218),(399,'bidoof',5,200,50),(400,'bibarel',10,315,144),(401,'kricketot',3,22,39),(402,'kricketune',10,255,134),(403,'shinx',5,95,53),(404,'luxio',9,305,127),(405,'luxray',14,420,235),(406,'budew',2,12,56),(407,'roserade',9,145,232),(408,'cranidos',9,315,70),(409,'rampardos',16,1025,173),(410,'shieldon',5,570,70),(411,'bastiodon',13,1495,173),(412,'burmy',2,34,45),(413,'wormadam-plant',5,65,148),(414,'mothim',9,233,148),(415,'combee',3,55,49),(416,'vespiquen',12,385,166),(417,'pachirisu',4,39,142),(418,'buizel',7,295,66),(419,'floatzel',11,335,173),(420,'cherubi',4,33,55),(421,'cherrim',5,93,158),(422,'shellos',3,63,65),(423,'gastrodon',9,299,166),(424,'ambipom',12,203,169),(425,'drifloon',4,12,70),(426,'drifblim',12,150,174),(427,'buneary',4,55,70),(428,'lopunny',12,333,168),(429,'mismagius',9,44,173),(430,'honchkrow',9,273,177),(431,'glameow',5,39,62),(432,'purugly',10,438,158),(433,'chingling',2,6,57),(434,'stunky',4,192,66),(435,'skuntank',10,380,168),(436,'bronzor',5,605,60),(437,'bronzong',13,1870,175),(438,'bonsly',5,150,58),(439,'mime-jr',6,130,62),(440,'happiny',6,244,110),(441,'chatot',5,19,144),(442,'spiritomb',10,1080,170),(443,'gible',7,205,60),(444,'gabite',14,560,144),(445,'garchomp',19,950,270),(446,'munchlax',6,1050,78),(447,'riolu',7,202,57),(448,'lucario',12,540,184),(449,'hippopotas',8,495,66),(450,'hippowdon',20,3000,184),(451,'skorupi',8,120,66),(452,'drapion',13,615,175),(453,'croagunk',7,230,60),(454,'toxicroak',13,444,172),(455,'carnivine',14,270,159),(456,'finneon',4,70,66),(457,'lumineon',12,240,161),(458,'mantyke',10,650,69),(459,'snover',10,505,67),(460,'abomasnow',22,1355,173),(461,'weavile',11,340,179),(462,'magnezone',12,1800,241),(463,'lickilicky',17,1400,180),(464,'rhyperior',24,2828,241),(465,'tangrowth',20,1286,187),(466,'electivire',18,1386,243),(467,'magmortar',16,680,243),(468,'togekiss',15,380,245),(469,'yanmega',19,515,180),(470,'leafeon',10,255,184),(471,'glaceon',8,259,184),(472,'gliscor',20,425,179),(473,'mamoswine',25,2910,239),(474,'porygon-z',9,340,241),(475,'gallade',16,520,233),(476,'probopass',14,3400,184),(477,'dusknoir',22,1066,236),(478,'froslass',13,266,168),(479,'rotom',3,3,154),(480,'uxie',3,3,261),(481,'mesprit',3,3,261),(482,'azelf',3,3,261),(483,'dialga',54,6830,306),(484,'palkia',42,3360,306),(485,'heatran',17,4300,270),(486,'regigigas',37,4200,302),(487,'giratina-altered',45,7500,306),(488,'cresselia',15,856,270),(489,'phione',4,31,216),(490,'manaphy',3,14,270),(491,'darkrai',15,505,270),(492,'shaymin-land',2,21,270),(493,'arceus',32,3200,324),(494,'victini',4,40,270),(495,'snivy',6,81,62),(496,'servine',8,160,145),(497,'serperior',33,630,238),(498,'tepig',5,99,62),(499,'pignite',10,555,146),(500,'emboar',16,1500,238),(501,'oshawott',5,59,62),(502,'dewott',8,245,145),(503,'samurott',15,946,238),(504,'patrat',5,116,51),(505,'watchog',11,270,147),(506,'lillipup',4,41,55),(507,'herdier',9,147,130),(508,'stoutland',12,610,225),(509,'purrloin',4,101,56),(510,'liepard',11,375,156),(511,'pansage',6,105,63),(512,'simisage',11,305,174),(513,'pansear',6,110,63),(514,'simisear',10,280,174),(515,'panpour',6,135,63),(516,'simipour',10,290,174),(517,'munna',6,233,58),(518,'musharna',11,605,170),(519,'pidove',3,21,53),(520,'tranquill',6,150,125),(521,'unfezant',12,290,220),(522,'blitzle',8,298,59),(523,'zebstrika',16,795,174),(524,'roggenrola',4,180,56),(525,'boldore',9,1020,137),(526,'gigalith',17,2600,232),(527,'woobat',4,21,63),(528,'swoobat',9,105,149),(529,'drilbur',3,85,66),(530,'excadrill',7,404,178),(531,'audino',11,310,390),(532,'timburr',6,125,61),(533,'gurdurr',12,400,142),(534,'conkeldurr',14,870,227),(535,'tympole',5,45,59),(536,'palpitoad',8,170,134),(537,'seismitoad',15,620,229),(538,'throh',13,555,163),(539,'sawk',14,510,163),(540,'sewaddle',3,25,62),(541,'swadloon',5,73,133),(542,'leavanny',12,205,225),(543,'venipede',4,53,52),(544,'whirlipede',12,585,126),(545,'scolipede',25,2005,218),(546,'cottonee',3,6,56),(547,'whimsicott',7,66,168),(548,'petilil',5,66,56),(549,'lilligant',11,163,168),(550,'basculin-red-striped',10,180,161),(551,'sandile',7,152,58),(552,'krokorok',10,334,123),(553,'krookodile',15,963,234),(554,'darumaka',6,375,63),(555,'darmanitan-standard',13,929,168),(556,'maractus',10,280,161),(557,'dwebble',3,145,65),(558,'crustle',14,2000,166),(559,'scraggy',6,118,70),(560,'scrafty',11,300,171),(561,'sigilyph',14,140,172),(562,'yamask',5,15,61),(563,'cofagrigus',17,765,169),(564,'tirtouga',7,165,71),(565,'carracosta',12,810,173),(566,'archen',5,95,71),(567,'archeops',14,320,177),(568,'trubbish',6,310,66),(569,'garbodor',19,1073,166),(570,'zorua',7,125,66),(571,'zoroark',16,811,179),(572,'minccino',4,58,60),(573,'cinccino',5,75,165),(574,'gothita',4,58,58),(575,'gothorita',7,180,137),(576,'gothitelle',15,440,221),(577,'solosis',3,10,58),(578,'duosion',6,80,130),(579,'reuniclus',10,201,221),(580,'ducklett',5,55,61),(581,'swanna',13,242,166),(582,'vanillite',4,57,61),(583,'vanillish',11,410,138),(584,'vanilluxe',13,575,241),(585,'deerling',6,195,67),(586,'sawsbuck',19,925,166),(587,'emolga',4,50,150),(588,'karrablast',5,59,63),(589,'escavalier',10,330,173),(590,'foongus',2,10,59),(591,'amoonguss',6,105,162),(592,'frillish',12,330,67),(593,'jellicent',22,1350,168),(594,'alomomola',12,316,165),(595,'joltik',1,6,64),(596,'galvantula',8,143,165),(597,'ferroseed',6,188,61),(598,'ferrothorn',10,1100,171),(599,'klink',3,210,60),(600,'klang',6,510,154),(601,'klinklang',6,810,234),(602,'tynamo',2,3,55),(603,'eelektrik',12,220,142),(604,'eelektross',21,805,232),(605,'elgyem',5,90,67),(606,'beheeyem',10,345,170),(607,'litwick',3,31,55),(608,'lampent',6,130,130),(609,'chandelure',10,343,234),(610,'axew',6,180,64),(611,'fraxure',10,360,144),(612,'haxorus',18,1055,243),(613,'cubchoo',5,85,61),(614,'beartic',26,2600,170),(615,'cryogonal',11,1480,170),(616,'shelmet',4,77,61),(617,'accelgor',8,253,173),(618,'stunfisk',7,110,165),(619,'mienfoo',9,200,70),(620,'mienshao',14,355,179),(621,'druddigon',16,1390,170),(622,'golett',10,920,61),(623,'golurk',28,3300,169),(624,'pawniard',5,102,68),(625,'bisharp',16,700,172),(626,'bouffalant',16,946,172),(627,'rufflet',5,105,70),(628,'braviary',15,410,179),(629,'vullaby',5,90,74),(630,'mandibuzz',12,395,179),(631,'heatmor',14,580,169),(632,'durant',3,330,169),(633,'deino',8,173,60),(634,'zweilous',14,500,147),(635,'hydreigon',18,1600,270),(636,'larvesta',11,288,72),(637,'volcarona',16,460,248),(638,'cobalion',21,2500,261),(639,'terrakion',19,2600,261),(640,'virizion',20,2000,261),(641,'tornadus-incarnate',15,630,261),(642,'thundurus-incarnate',15,610,261),(643,'reshiram',32,3300,306),(644,'zekrom',29,3450,306),(645,'landorus-incarnate',15,680,270),(646,'kyurem',30,3250,297),(647,'keldeo-ordinary',14,485,261),(648,'meloetta-aria',6,65,270),(649,'genesect',15,825,270),(650,'chespin',4,90,63),(651,'quilladin',7,290,142),(652,'chesnaught',16,900,239),(653,'fennekin',4,94,61),(654,'braixen',10,145,143),(655,'delphox',15,390,240),(656,'froakie',3,70,63),(657,'frogadier',6,109,142),(658,'greninja',15,400,239),(659,'bunnelby',4,50,47),(660,'diggersby',10,424,148),(661,'fletchling',3,17,56),(662,'fletchinder',7,160,134),(663,'talonflame',12,245,175),(664,'scatterbug',3,25,40),(665,'spewpa',3,84,75),(666,'vivillon',12,170,185),(667,'litleo',6,135,74),(668,'pyroar',15,815,177),(669,'flabebe',1,1,61),(670,'floette',2,9,130),(671,'florges',11,100,248),(672,'skiddo',9,310,70),(673,'gogoat',17,910,186),(674,'pancham',6,80,70),(675,'pangoro',21,1360,173),(676,'furfrou',12,280,165),(677,'espurr',3,35,71),(678,'meowstic-male',6,85,163),(679,'honedge',8,20,65),(680,'doublade',8,45,157),(681,'aegislash-shield',17,530,234),(682,'spritzee',2,5,68),(683,'aromatisse',8,155,162),(684,'swirlix',4,35,68),(685,'slurpuff',8,50,168),(686,'inkay',4,35,58),(687,'malamar',15,470,169),(688,'binacle',5,310,61),(689,'barbaracle',13,960,175),(690,'skrelp',5,73,64),(691,'dragalge',18,815,173),(692,'clauncher',5,83,66),(693,'clawitzer',13,353,100),(694,'helioptile',5,60,58),(695,'heliolisk',10,210,168),(696,'tyrunt',8,260,72),(697,'tyrantrum',25,2700,182),(698,'amaura',13,252,72),(699,'aurorus',27,2250,104),(700,'sylveon',10,235,184),(701,'hawlucha',8,215,175),(702,'dedenne',2,22,151),(703,'carbink',3,57,100),(704,'goomy',3,28,60),(705,'sliggoo',8,175,158),(706,'goodra',20,1505,270),(707,'klefki',2,30,165),(708,'phantump',4,70,62),(709,'trevenant',15,710,166),(710,'pumpkaboo-average',4,50,67),(711,'gourgeist-average',9,125,173),(712,'bergmite',10,995,61),(713,'avalugg',20,5050,180),(714,'noibat',5,80,49),(715,'noivern',15,850,187),(716,'xerneas',30,2150,306),(717,'yveltal',58,2030,306),(718,'zygarde',50,3050,270),(719,'diancie',7,88,270),(720,'hoopa',5,90,270),(721,'volcanion',17,1950,270),(722,'popplio',0,0,0);

-- 50 people added
INSERT INTO Person (p_id, passenger_name)
VALUES
  (1, 'John Doe'),
  (2, 'Jane Smith'),
  (3, 'Jay Patel'),
  (4, 'Scooby Doo'),
  (5, 'Tommy Shelby'),
  (6, 'Michael Jackson'),
  (7, 'Arthur Shelby'),
  (8, 'William Wilson'),
  (9, 'Sophia Miller'),
  (10, 'Daniel Moore'),
  (11, 'Chloe Taylor'),
  (12, 'Matthew Anderson'),
  (13, 'Ella Thomas'),
  (14, 'Jackson White'),
  (15, 'Grace Martin'),
  (16, 'David Martinez'),
  (17, 'Lily Garcia'),
  (18, 'James Robinson'),
  (19, 'Ava Hernandez'),
  (20, 'Logan Young'),
  (21, 'Mia King'),
  (22, 'Jacob Lee'),
  (23, 'Sofia Perez'),
  (24, 'Benjamin Lewis'),
  (25, 'Avery Hill'),
  (26, 'Lucas Scott'),
  (27, 'Harper Green'),
  (28, 'Ethan Adams'),
  (29, 'Evelyn Baker'),
  (30, 'Alexander Cook'),
  (31, 'Victoria Murphy'),
  (32, 'Henry Reed'),
  (33, 'Madison Rivera'),
  (34, 'Sebastian Cooper'),
  (35, 'Layla Rogers'),
  (36, 'Gabriel Morgan'),
  (37, 'Penelope Peterson'),
  (38, 'Owen Bennett'),
  (39, 'Scarlett Simmons'),
  (40, 'Wyatt Foster'),
  (41, 'Zoey Collins'),
  (42, 'Nathan Griffin'),
  (43, 'Hannah Stewart'),
  (44, 'Christopher Turner'),
  (45, 'Addison Phillips'),
  (46, 'Isaac Murphy'),
  (47, 'Natalie Hayes'),
  (48, 'Andrew Ward'),
  (49, 'Brooklyn Cox'),
  (50, 'Levi Russell'),
  (51, 'Sophie Turner'),
  (52, 'Liam Wilson'),
  (53, 'Aria Mitchell'),
  (54, 'Connor Cooper'),
  (55, 'Zara Richardson'),
  (56, 'Kai Patel'),
  (57, 'Maya Clark'),
  (58, 'Elijah Hall'),
  (59, 'Luna Adams'),
  (60, 'Riley Stewart'),
  (61, 'Maxwell Wright'),
  (62, 'Nova Rogers'),
  (63, 'Asher Nelson'),
  (64, 'Ivy Evans'),
  (65, 'Finn Carter'),
  (66, 'Aurora Murphy'),
  (67, 'Gavin Thompson'),
  (68, 'Willow Price'),
  (69, 'Mason Howard'),
  (70, 'Eva Sanchez'),
  (71, 'Hudson Rivera'),
  (72, 'Piper Barnes'),
  (73, 'Oscar Flores'),
  (74, 'Stella James'),
  (75, 'Theo Gonzales'),
  (76, 'Harlow Coleman'),
  (77, 'Jackie Wood'),
  (78, 'Kian Ross'),
  (79, 'Summer Morgan'),
  (80, 'Caleb Hughes'),
  (81, 'Skylar Bryant'),
  (82, 'Ezekiel Kim'),
  (83, 'Lola Foster'),
  (84, 'Jaxon Russell'),
  (85, 'Delilah Diaz'),
  (86, 'Tyler Long'),
  (87, 'Savannah Powell'),
  (88, 'Roman Brooks'),
  (89, 'Hazel Ward'),
  (90, 'Beckett Griffin'),
  (91, 'Mila Price'),
  (92, 'Axel Foster'),
  (93, 'Nora Bell'),
  (94, 'Gemma Ramirez'),
  (95, 'Ezra Henderson'),
  (96, 'Violet Coleman'),
  (97, 'Dominic Reed'),
  (98, 'Molly Peterson'),
  (99, 'Jesse Sanders'),
  (100, 'Rose Campbell'),
  (101, 'Sophie Brown'),
  (102, 'Liam Davis'),
  (103, 'Aria Miller'),
  (104, 'Oliver Wilson'),
  (105, 'Zoe Smith'),
  (106, 'Ethan Johnson'),
  (107, 'Ava Jones'),
  (108, 'Lucas Williams'),
  (109, 'Mia Taylor'),
  (110, 'Elijah Anderson'),
  (111, 'Scarlett Martinez'),
  (112, 'Noah Garcia'),
  (113, 'Grace Robinson'),
  (114, 'Logan Hernandez'),
  (115, 'Layla Young'),
  (116, 'Mason Moore'),
  (117, 'Chloe Lee'),
  (118, 'Henry Perez'),
  (119, 'Amelia Lewis'),
  (120, 'Jacob Hill'),
  (121, 'Luna Scott'),
  (122, 'Carter Green'),
  (123, 'Harper Adams'),
  (124, 'Sebastian Baker'),
  (125, 'Stella Cook'),
  (126, 'Ezra Murphy'),
  (127, 'Nova Bennett'),
  (128, 'Owen Simmons'),
  (129, 'Hannah Foster'),
  (130, 'William Griffin'),
  (131, 'Sofia Stewart'),
  (132, 'Jackson Turner'),
  (133, 'Avery Phillips'),
  (134, 'Wyatt Hayes'),
  (135, 'Victoria Ward'),
  (136, 'Gabriel Cox'),
  (137, 'Penelope Russell'),
  (138, 'Isaac Hayes'),
  (139, 'Natalie Reed'),
  (140, 'Andrew Cox'),
  (141, 'Brooklyn Peterson'),
  (142, 'Levi Griffin'),
  (143, 'Sophia Stewart'),
  (144, 'Evelyn Turner'),
  (145, 'Alexander Hayes'),
  (146, 'Scarlett Campbell'),
  (147, 'Daniel Hill'),
  (148, 'Aria Brooks'),
  (149, 'Olivia Ward'),
  (150, 'Ethan Foster'),
  (151, 'Liam Mitchell'),
  (152, 'Ava Cooper'),
  (153, 'Elijah Gray'),
  (154, 'Mia Turner'),
  (155, 'Oliver Bell'),
  (156, 'Zoe Coleman'),
  (157, 'Lucas Foster'),
  (158, 'Scarlett Murphy'),
  (159, 'Noah Peterson'),
  (160, 'Grace Ramirez'),
  (161, 'Logan Richardson'),
  (162, 'Chloe Ward'),
  (163, 'Henry Diaz'),
  (164, 'Amelia Henderson'),
  (165, 'Jacob Price'),
  (166, 'Luna Reed'),
  (167, 'Carter Thompson'),
  (168, 'Harper Stewart'),
  (169, 'Sebastian Russell'),
  (170, 'Stella Phillips'),
  (171, 'Ezra Hayes'),
  (172, 'Nova Ward'),
  (173, 'Owen Griffin'),
  (174, 'Hannah Hayes'),
  (175, 'William Reed'),
  (176, 'Sofia Cox'),
  (177, 'Jackson Peterson'),
  (178, 'Avery Griffin'),
  (179, 'Wyatt Hayes'),
  (180, 'Victoria Reed'),
  (181, 'Gabriel Campbell'),
  (182, 'Penelope Hill'),
  (183, 'Isaac Turner'),
  (184, 'Natalie Brooks'),
  (185, 'Andrew Ward'),
  (186, 'Brooklyn Peterson'),
  (187, 'Levi Griffin'),
  (188, 'Sophia Turner'),
  (189, 'Evelyn Ward'),
  (190, 'Alexander Foster'),
  (191, 'Scarlett Campbell'),
  (192, 'Daniel Hill'),
  (193, 'Aria Brooks'),
  (194, 'Olivia Ward'),
  (195, 'Ethan Foster'),
  (196, 'Sophie Wilson'),
  (197, 'Liam Davis'),
  (198, 'Aria Miller'),
  (199, 'Oliver Wilson'),
  (200, 'Zoe Smith');
	

INSERT INTO FavPokemon (p_id, poke_ID) VALUES
    (1, 1), (2, 4), (3, 7), (4, 25), (5, 9), 
    (6, 13), (7, 16), (8, 19), (9, 21), (10, 27),
    (11, 29), (12, 32), (13, 37), (14, 41), (15, 43),
    (16, 46), (17, 50), (18, 52), (19, 54), (20, 58),
    (21, 60), (22, 63), (23, 66), (24, 69), (25, 74),
    (26, 77), (27, 79), (28, 81), (29, 83), (30, 86),
    (31, 90), (32, 92), (33, 95), (34, 98), (35, 100),
    (36, 104), (37, 108), (38, 111), (39, 116), (40, 118),
    (41, 120), (42, 123), (43, 125), (44, 129), (45, 131),
    (46, 133), (47, 138), (48, 140), (49, 147), (50, 149),
    (51, 151), (52, 154), (53, 157), (54, 160), (55, 164),
    (56, 166), (57, 169), (58, 171), (59, 172), (60, 176),
    (61, 178), (62, 181), (63, 183), (64, 185), (65, 189),
    (66, 192), (67, 195), (68, 197), (69, 199), (70, 201),
    (71, 203), (72, 205), (73, 208), (74, 212), (75, 214),
    (76, 217), (77, 219), (78, 222), (79, 224), (80, 226),
    (81, 229), (82, 232), (83, 235), (84, 238), (85, 241),
    (86, 243), (87, 245), (88, 248), (89, 250), (90, 254),
    (91, 257), (92, 260), (93, 264), (94, 267), (95, 269),
    (96, 272), (97, 275), (98, 277), (99, 279), (100, 282),
    (101, 285), (102, 286), (103, 289), (104, 291), (105, 295),
    (106, 297), (107, 299), (108, 302), (109, 303), (110, 306),
    (111, 308), (112, 310), (113, 312), (114, 313), (115, 315),
    (116, 317), (117, 319), (118, 321), (119, 323), (120, 326),
    (121, 330), (122, 332), (123, 334), (124, 336), (125, 338),
    (126, 340), (127, 342), (128, 344), (129, 346), (130, 349),
    (131, 350), (132, 354), (133, 356), (134, 359), (135, 362),
    (136, 365), (137, 367), (138, 369), (139, 373), (140, 376),
    (141, 378), (142, 380), (143, 381), (144, 383), (145, 386),
    (146, 389), (147, 392), (148, 395), (149, 398), (150, 400),
    (151, 403), (152, 405), (153, 407), (154, 409), (155, 411),
    (156, 413), (157, 414), (158, 416), (159, 418), (160, 423),
    (161, 425), (162, 428), (163, 430), (164, 432), (165, 435),
    (166, 437), (167, 445), (168, 448), (169, 450), (170, 452),
    (171, 454), (172, 457), (173, 460), (174, 462), (175, 464),
    (176, 466), (177, 468), (178, 470), (179, 472), (180, 475),
    (181, 477), (182, 479), (183, 481), (184, 483), (185, 485),
    (186, 487), (187, 489), (188, 491), (189, 493), (190, 494),
    (191, 497), (192, 499), (193, 501), (194, 503), (195, 505),
    (196, 507), (197, 508), (198, 510), (199, 512), (200, 514);
