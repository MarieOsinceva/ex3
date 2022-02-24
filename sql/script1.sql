CREATE TABLE Item
(
    Id_item INT PRIMARY KEY,
    Head NVARCHAR(200),
    Id_main_category INT,
    Id_main_img INT,
    Price INT,
    Price_old INT,
    Price_promo INT,
    Descript NVARCHAR(255)
);
INSERT INTO Item values
(1, 'Черное платье мини', 1, 1, 5990, 6990, 5590,'Вышивка ришелье. Легкая ткань с вышивкой и ажурным узором.'),
(2, 'Свободные джинсы винтажного синего цвета', 6, 5, 1790, 2390, 1560, 'Неэластичная джинсовая ткань. Синий выбеленный винтажный оттенок.'),
(3, 'Голубые джинсы с объемными суженными книзу штанинами Think Twice Tall Grace', 6, 5, 3390, 1690, 1490, 'Неэластичный деним. Голубой выбеленный оттенок.'),
(4,'Сиреневое платье мидакси с оборками, вырезом и цветочным принтом Miss Selfridge', 1, 11, 4490, 4690, 4099, 'Прозрачный шифон. Легкая, воздушная ткань с зернистой фактурой.' ),
(5, 'Платье миди с корсетом в черный горох Miss Selfridge', 1, 15, 3890, 4290, 3590,'Легкий хлопок. Мягкая дышащая ткань. Основной материал: 100% хлопок.'),
(6,'Зеленое платье миди из экологичных материалов на пуговицах с оборками по краю и цветочным принтом Miss Selfridge',1,52,2890,3090,2599, 'Невесомая ткань. Мягкий и струящийся материал. Наружный материал: 100% вискоза.'),
(7,'Черное атласное платье-майка с квадратным вырезом и передними разрезами AS YOU', 1, 19, 1490, 1890, 1200, 'Блестящая ткань под атлас. Шелковисто-гладкий материал. Состав: 100% полиэстер.'),
(8, 'Платье миди с отделкой ASOS DESIGN', 1, 23, 6490, 7190, 5500, 'Ткань с декоративной отделкой. Неэластичный материал. Подкладка: 100% полиэфир, Основа: 100% полиэфир.' ),
(9,'Розовый сарафан с набивкой флок Miss Selfridge', 1, 27, 2990, 3590, 2490, 'Эластичная однотонная ткань. Легкий материал.'),
(10,'Сиреневый сарафан с оборками на плечах и вырезом ASOS DESIGN Petite', 1,31, 1390,1990, 990,'Мягкий дышащий трикотаж джерси. Легкий на ощупь материал.'),
(11,'Выбеленное джинсовое платье-рубашка приталенного кроя ASOS DESIGN Petite',1,35,1390,3090,1090,'Неэластичный деним. Мы гордимся своим участием в проекте The Better Cotton Initiative.'),
(12,'Бежевое вязаное платье мини с воротником ASOS DESIGN Petite',1,39,2490,3690,2190,'Тонкий трикотаж. С добавлением переработанного полиэстера.'),
(13,'Мягкое черно-бежевое платье-джемпер «2 в 1» с элементами сарафана ASOS DESIGN',1,44,1440,3890,1190,'Трикотаж из хлопковой смеси.Очень мягкий материал.'),
(14,'Приталенное платье миди кремового цвета с квадратным вырезом и цветочным принтом ASOS DESIGN',1,48,1690,2790,1290,'Тканый материал. Легкий материал.');
CREATE TABLE Item_Image
(
    Id_item INT REFERENCES Item (Id_item),
    Id_img INT REFERENCES Image (Id_img)
);
INSERT INTO Item_Image values
(1,1),(1,2),(1,3),(1,4),
(2,5),(2,6),(2,7),(2,8),
(3,5),(3,8),(3,9),(3,10),
(4,11),(4,12),(4,13),(4,14),
(5,15),(5,16),(5,17),(5,18),
(6,52),(6,53),(6,54),(6,55),
(7,19),(7,20),(7,21),(7,22),
(8,23),(8,24),(8,25),(8,26),
(9,27),(9,28),(9,29),(9,30),
(10,31),(10,32),(10,33),(10,34),
(11,35),(11,36),(11,37),(11,38),
(12,39),(12,40),(12,41),(12,42),
(13,43),(13,44),(13,45),(13,46),
(14,48),(14,49),(14,50),(14,51);

CREATE TABLE Image
(
    Id_img INT PRIMARY KEY,
    Link VARCHAR(255),
    ALT NVARCHAR(20)
);
INSERT INTO Image values
(1, 'https://images.asos-media.com/products/chernoe-plate-mini-s-v-obraznym-vyrezom-i-vyshivkoj-rishele-yas/202082870-1-black?$n_240w$&wid=75&fit=constrain', 'Dress'),
(2,'https://images.asos-media.com/products/chernoe-plate-mini-s-v-obraznym-vyrezom-i-vyshivkoj-rishele-yas/202082870-2?$n_240w$&wid=75&fit=constrain', 'Black dress'),
(3, 'https://images.asos-media.com/products/chernoe-plate-mini-s-v-obraznym-vyrezom-i-vyshivkoj-rishele-yas/202082870-3?$n_240w$&wid=75&fit=constrain', 'dress'),
(4,'https://images.asos-media.com/products/chernoe-plate-mini-s-v-obraznym-vyrezom-i-vyshivkoj-rishele-yas/202082870-4?$n_240w$&wid=75&fit=constrain', 'Dress'),
(5,'https://images.asos-media.com/products/svobodnye-dzhinsy-vintazhnogo-sinego-tsveta-v-stile-uniseks-reclaimed-vintage-inspired-83/23162751-1-midblue?$n_240w$&wid=75&fit=constrain','Jeans'), 
(6,'https://images.asos-media.com/products/svobodnye-dzhinsy-vintazhnogo-sinego-tsveta-v-stile-uniseks-reclaimed-vintage-inspired-83/23162751-2?$n_240w$&wid=75&fit=constrain', 'Blue Jeans'),
(7, 'https://images.asos-media.com/products/svobodnye-dzhinsy-vintazhnogo-sinego-tsveta-v-stile-uniseks-reclaimed-vintage-inspired-83/23162751-3?$n_240w$&wid=75&fit=constrain','Jeans'),
(8, 'https://images.asos-media.com/products/svobodnye-dzhinsy-vintazhnogo-sinego-tsveta-v-stile-uniseks-reclaimed-vintage-inspired-83/23162751-4?$n_240w$&wid=75&fit=constrain','Jeans'),
(9,'https://images.asos-media.com/products/golubye-dzhinsy-s-obemnymi-suzhennymi-knizu-shtaninami-dont-think-twice-tall-grace/23826993-1-midblue?$n_240w$&wid=75&fit=constrain', 'Jeans'),
(10,'https://images.asos-media.com/products/golubye-dzhinsy-s-obemnymi-suzhennymi-knizu-shtaninami-dont-think-twice-tall-grace/23826993-2?$n_240w$&wid=75&fit=constrain','Blue Jeans'),
(11,'https://images.asos-media.com/products/sirenevoe-plate-midaksi-s-oborkami-vyrezom-i-tsvetochnym-printom-miss-selfridge/201978329-1-purple?$n_240w$&wid=75&fit=constrain', 'Pink dress'),
(12, 'https://images.asos-media.com/products/sirenevoe-plate-midaksi-s-oborkami-vyrezom-i-tsvetochnym-printom-miss-selfridge/201978329-2?$n_240w$&wid=75&fit=constrain','Dress'),
(13, 'https://images.asos-media.com/products/sirenevoe-plate-midaksi-s-oborkami-vyrezom-i-tsvetochnym-printom-miss-selfridge/201978329-3?$n_240w$&wid=75&fit=constrain','Dress'),
(14, 'https://images.asos-media.com/products/sirenevoe-plate-midaksi-s-oborkami-vyrezom-i-tsvetochnym-printom-miss-selfridge/201978329-4?$n_240w$&wid=75&fit=constrain','Dress'),
(15, 'https://images.asos-media.com/products/plate-midi-s-korsetom-v-chernyj-goroh-miss-selfridge/201540488-1-ivory?$n_240w$&wid=75&fit=constrain', 'Dress'),
(16, 'https://images.asos-media.com/products/plate-midi-s-korsetom-v-chernyj-goroh-miss-selfridge/201540488-2?$n_240w$&wid=75&fit=constrain','Pink dress'),
(17, 'https://images.asos-media.com/products/plate-midi-s-korsetom-v-chernyj-goroh-miss-selfridge/201540488-3?$n_240w$&wid=75&fit=constrain','Pink dress'),
(18, 'https://images.asos-media.com/products/plate-midi-s-korsetom-v-chernyj-goroh-miss-selfridge/201540488-4?$n_240w$&wid=75&fit=constrain','Pink dress'),
(19,'https://images.asos-media.com/products/chernoe-atlasnoe-plate-majka-s-kvadratnym-vyrezom-i-perednimi-razrezami-as-you/22206820-1-black?$n_240w$&wid=75&fit=constrain','Dress'),
(20,'https://images.asos-media.com/products/chernoe-atlasnoe-plate-majka-s-kvadratnym-vyrezom-i-perednimi-razrezami-as-you/22206820-2?$n_240w$&wid=75&fit=constrain','Dress'),
(21,'https://images.asos-media.com/products/chernoe-atlasnoe-plate-majka-s-kvadratnym-vyrezom-i-perednimi-razrezami-as-you/22206820-3?$n_240w$&wid=75&fit=constrain','Dress'),
(22,'https://images.asos-media.com/products/chernoe-atlasnoe-plate-majka-s-kvadratnym-vyrezom-i-perednimi-razrezami-as-you/22206820-4?$n_240w$&wid=75&fit=constrain','Dress'),
(23,'https://images.asos-media.com/products/plate-midi-s-otdelkoj-asos-design/12926569-1-mauve?$n_240w$&wid=75&fit=constrain','Dress'),
(24,'https://images.asos-media.com/products/plate-midi-s-otdelkoj-asos-design/12926569-2?$n_240w$&wid=75&fit=constrain','Dress'),
(25,'https://images.asos-media.com/products/plate-midi-s-otdelkoj-asos-design/12926569-3?$n_240w$&wid=75&fit=constrain','Dress'),
(26,'https://images.asos-media.com/products/plate-midi-s-otdelkoj-asos-design/12926569-4?$n_240w$&wid=75&fit=constrain','Dress'),
(27,'https://images.asos-media.com/products/rozovyj-sarafan-s-nabivkoj-flok-miss-selfridge/201883490-1-pink?$n_240w$&wid=75&fit=constrain','Dress'),
(28,'https://images.asos-media.com/products/rozovyj-sarafan-s-nabivkoj-flok-miss-selfridge/201883490-2?$n_240w$&wid=75&fit=constrain','Dress'),
(29,'https://images.asos-media.com/products/rozovyj-sarafan-s-nabivkoj-flok-miss-selfridge/201883490-3?$n_240w$&wid=75&fit=constrain','Dress'),
(30,'https://images.asos-media.com/products/rozovyj-sarafan-s-nabivkoj-flok-miss-selfridge/201883490-4?$n_240w$&wid=75&fit=constrain','Dress'),
(31,'https://images.asos-media.com/products/sirenevyj-sarafan-s-oborkami-na-plechah-i-vyrezom-asos-design-petite/23677002-2?$n_240w$&wid=75&fit=constrain','Dress'),
(32,'https://images.asos-media.com/products/sirenevyj-sarafan-s-oborkami-na-plechah-i-vyrezom-asos-design-petite/23677002-1-lilac?$n_240w$&wid=75&fit=constrain','Dress'),
(33,'https://images.asos-media.com/products/sirenevyj-sarafan-s-oborkami-na-plechah-i-vyrezom-asos-design-petite/23677002-3?$n_240w$&wid=75&fit=constrain','Dress'),
(34,'https://images.asos-media.com/products/sirenevyj-sarafan-s-oborkami-na-plechah-i-vyrezom-asos-design-petite/23677002-4?$n_240w$&wid=75&fit=constrain','Dress'),
(35,'https://images.asos-media.com/products/vybelennoe-dzhinsovoe-plate-rubashka-pritalennogo-kroya-asos-design-petite/22805438-1-midwash?$n_640w$&wid=513&fit=constrain','Dress'),
(36,'https://images.asos-media.com/products/vybelennoe-dzhinsovoe-plate-rubashka-pritalennogo-kroya-asos-design-petite/22805438-2?$n_240w$&wid=75&fit=constrain','Dress'),
(37,'https://images.asos-media.com/products/vybelennoe-dzhinsovoe-plate-rubashka-pritalennogo-kroya-asos-design-petite/22805438-3?$n_240w$&wid=75&fit=constrain','Dress'),
(38,'https://images.asos-media.com/products/vybelennoe-dzhinsovoe-plate-rubashka-pritalennogo-kroya-asos-design-petite/22805438-4?$n_240w$&wid=75&fit=constrain','Dress'),
(39,'https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-1-camel?$n_240w$&wid=75&fit=constrain','Dress'),
(40,'https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-2?$n_240w$&wid=75&fit=constrain','Dress'),
(41,'https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-3?$n_240w$&wid=75&fit=constrain','Dress'),
(42,'https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-4?$n_240w$&wid=75&fit=constrain','Dress'),
(43,'https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-1-creamfloralprint?$n_240w$&wid=75&fit=constrain','Dress'),
(44,'https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-2?$n_240w$&wid=75&fit=constrain','Dress'),
(45,'https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-3?$n_240w$&wid=75&fit=constrain','Dress'),
(46,'https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-4?$n_240w$&wid=75&fit=constrain','Dress'),
(48,'https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-1-creamfloralprint?$n_240w$&wid=75&fit=constrain','Dress'),
(49,'https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-2?$n_240w$&wid=75&fit=constrain','Dress'),
(50,'https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-3?$n_240w$&wid=75&fit=constrain','Dress'),
(51,'https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-4?$n_240w$&wid=75&fit=constrain','Dress'),
(52,'https://images.asos-media.com/products/zelenoe-plate-midi-iz-ekologichnyh-materialov-na-pugovitsah-s-oborkami-po-krayu-i-tsvetochnym-printom-miss-selfridge/201554412-1-lightgreen?$n_240w$&wid=75&fit=constrain','Dress'),
(53,'https://images.asos-media.com/products/zelenoe-plate-midi-iz-ekologichnyh-materialov-na-pugovitsah-s-oborkami-po-krayu-i-tsvetochnym-printom-miss-selfridge/201554412-2?$n_240w$&wid=75&fit=constrain','Dress'),
(54,'https://images.asos-media.com/products/zelenoe-plate-midi-iz-ekologichnyh-materialov-na-pugovitsah-s-oborkami-po-krayu-i-tsvetochnym-printom-miss-selfridge/201554412-3?$n_240w$&wid=75&fit=constrain','Dress'),
(55,'https://images.asos-media.com/products/zelenoe-plate-midi-iz-ekologichnyh-materialov-na-pugovitsah-s-oborkami-po-krayu-i-tsvetochnym-printom-miss-selfridge/201554412-4?$n_240w$&wid=75&fit=constrain','Dress');
CREATE TABLE Item_Category
(
    Id_item INT REFERENCES Item (Id_item),
    Id_category INT REFERENCES Category (Id_category)
);
INSERT INTO Item_Category values
(1,1),(1,2),(1,5),
(2,2),(2,3),(2,4),(2,6),
(3,2),(3,5),(3,6),
(4,1),(4,2),(4,4),
(5,1),(5,2),
(6,1),(6,2),
(7,1),(7,2),
(8,1),(8,2),
(9,1),(9,2),
(10,1),(10,2),
(11,1),(11,2),
(12,1),(12,2),
(13,1),(13,2),
(14,1),(14,2);
CREATE TABLE Category
( 	Id_category INT PRIMARY KEY,
	Category_name  NVARCHAR(200) UNIQUE
);
INSERT INTO Category values
(1, 'Платья'),(2, 'Юбки'), (2,'Женское'),(3, ' Мужское'), (4,'Распродажа'),(5, 'Новинки'),(6, 'Джинсы');

