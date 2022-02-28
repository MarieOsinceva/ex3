drop table item_category;
drop table item_image;   
drop table item;
drop table image;
drop table category;

 USE storebd;
CREATE TABLE Item
(
    Id_item INT NOT NULL Primary Key AUTO_INCREMENT,
    Head NVARCHAR(200),
    Id_main_category INT NOT NULL,
   Id_main_img INT NOT NULL,
    Price INT NOT NULL,
    Price_old INT NOT NULL,
    Price_promo INT NOT NULL,
    Descript TEXT
);
CREATE TABLE Category
( 	Id_category INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Category_name  NVARCHAR(200) UNIQUE
);
CREATE TABLE Image
(
    Id_img INT NOT NULL Primary Key AUTO_INCREMENT,
    Link VARCHAR(255),
    ALT NVARCHAR(20)
);

CREATE TABLE Item_Category
(
	id_item int,
    id_category int,
    FOREIGN KEY (Id_item) REFERENCES item (Id_item) on delete cascade,
    FOREIGN KEY (Id_category) REFERENCES Category (Id_category) on delete cascade,
    PRIMARY KEY(Id_item, Id_category)
);


 CREATE TABLE Item_Image
(
	Id_item int,
    Id_img int, 
    FOREIGN KEY (Id_item) REFERENCES Item (Id_item) on delete cascade,
    FOREIGN KEY (Id_img) REFERENCES Image (Id_img) on delete cascade,
    PRIMARY KEY(Id_item, Id_img)
);
INSERT INTO Item (head, id_main_category, Id_main_img, Price, Price_old, Price_promo, Descript) values
('Черное платье мини', 1, 1, 5990, 6990, 5590,'Вышивка ришелье. Легкая ткань с вышивкой и ажурным узором.'),
('Свободные джинсы винтажного синего цвета', 6, 5, 1790, 2390, 1560, 'Неэластичная джинсовая ткань. Синий выбеленный винтажный оттенок.'),
('Голубые джинсы с объемными суженными книзу штанинами Think Twice Tall Grace', 6, 5, 3390, 1690, 1490, 'Неэластичный деним. Голубой выбеленный оттенок.'),
('Сиреневое платье мидакси с оборками, вырезом и цветочным принтом Miss Selfridge', 1, 11, 4490, 4690, 4099, 'Прозрачный шифон. Легкая, воздушная ткань с зернистой фактурой.' ),
('Платье миди с корсетом в черный горох Miss Selfridge', 1, 15, 3890, 4290, 3590,'Легкий хлопок. Мягкая дышащая ткань. Основной материал: 100% хлопок.'),
('Зеленое платье миди из экологичных материалов на пуговицах с оборками по краю и цветочным принтом Miss Selfridge',1,52,2890,3090,2599, 'Невесомая ткань. Мягкий и струящийся материал. Наружный материал: 100% вискоза.'),
('Черное атласное платье-майка с квадратным вырезом и передними разрезами AS YOU', 1, 19, 1490, 1890, 1200, 'Блестящая ткань под атлас. Шелковисто-гладкий материал. Состав: 100% полиэстер.'),
('Платье миди с отделкой ASOS DESIGN', 1, 23, 6490, 7190, 5500, 'Ткань с декоративной отделкой. Неэластичный материал. Подкладка: 100% полиэфир, Основа: 100% полиэфир.' ),
('Розовый сарафан с набивкой флок Miss Selfridge', 1, 27, 2990, 3590, 2490, 'Эластичная однотонная ткань. Легкий материал.'),
('Сиреневый сарафан с оборками на плечах и вырезом ASOS DESIGN Petite', 1,31, 1390,1990, 990,'Мягкий дышащий трикотаж джерси. Легкий на ощупь материал.'),
('Выбеленное джинсовое платье-рубашка приталенного кроя ASOS DESIGN Petite',1,35,1390,3090,1090,'Неэластичный деним. Мы гордимся своим участием в проекте The Better Cotton Initiative.'),
('Бежевое вязаное платье мини с воротником ASOS DESIGN Petite',1,39,2490,3690,2190,'Тонкий трикотаж. С добавлением переработанного полиэстера.'),
('Мягкое черно-бежевое платье-джемпер «2 в 1» с элементами сарафана ASOS DESIGN',1,44,1440,3890,1190,'Трикотаж из хлопковой смеси.Очень мягкий материал.'),
('Приталенное платье миди кремового цвета с квадратным вырезом и цветочным принтом ASOS DESIGN',1,48,1690,2790,1290,'Тканый материал. Легкий материал.');

INSERT INTO Category (Category_name) values
('Платья'), ('Женское'),(' Мужское'), ('Распродажа'),('Новинки'),('Джинсы'),('Юбки');

INSERT INTO Image (link, alt) values
('https://images.asos-media.com/products/chernoe-plate-mini-s-v-obraznym-vyrezom-i-vyshivkoj-rishele-yas/202082870-1-black?$n_240w$&wid=75&fit=constrain', 'Dress'),
('https://images.asos-media.com/products/chernoe-plate-mini-s-v-obraznym-vyrezom-i-vyshivkoj-rishele-yas/202082870-2?$n_240w$&wid=75&fit=constrain', 'Black dress'),
('https://images.asos-media.com/products/chernoe-plate-mini-s-v-obraznym-vyrezom-i-vyshivkoj-rishele-yas/202082870-3?$n_240w$&wid=75&fit=constrain', 'dress'),
('https://images.asos-media.com/products/chernoe-plate-mini-s-v-obraznym-vyrezom-i-vyshivkoj-rishele-yas/202082870-4?$n_240w$&wid=75&fit=constrain', 'Dress'),
('https://images.asos-media.com/products/svobodnye-dzhinsy-vintazhnogo-sinego-tsveta-v-stile-uniseks-reclaimed-vintage-inspired-83/23162751-1-midblue?$n_240w$&wid=75&fit=constrain','Jeans'), 
('https://images.asos-media.com/products/svobodnye-dzhinsy-vintazhnogo-sinego-tsveta-v-stile-uniseks-reclaimed-vintage-inspired-83/23162751-2?$n_240w$&wid=75&fit=constrain', 'Blue Jeans'),
('https://images.asos-media.com/products/svobodnye-dzhinsy-vintazhnogo-sinego-tsveta-v-stile-uniseks-reclaimed-vintage-inspired-83/23162751-3?$n_240w$&wid=75&fit=constrain','Jeans'),
('https://images.asos-media.com/products/svobodnye-dzhinsy-vintazhnogo-sinego-tsveta-v-stile-uniseks-reclaimed-vintage-inspired-83/23162751-4?$n_240w$&wid=75&fit=constrain','Jeans'),
('https://images.asos-media.com/products/golubye-dzhinsy-s-obemnymi-suzhennymi-knizu-shtaninami-dont-think-twice-tall-grace/23826993-1-midblue?$n_240w$&wid=75&fit=constrain', 'Jeans'),
('https://images.asos-media.com/products/golubye-dzhinsy-s-obemnymi-suzhennymi-knizu-shtaninami-dont-think-twice-tall-grace/23826993-2?$n_240w$&wid=75&fit=constrain','Blue Jeans'),
('https://images.asos-media.com/products/sirenevoe-plate-midaksi-s-oborkami-vyrezom-i-tsvetochnym-printom-miss-selfridge/201978329-1-purple?$n_240w$&wid=75&fit=constrain', 'Pink dress'),
('https://images.asos-media.com/products/sirenevoe-plate-midaksi-s-oborkami-vyrezom-i-tsvetochnym-printom-miss-selfridge/201978329-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/sirenevoe-plate-midaksi-s-oborkami-vyrezom-i-tsvetochnym-printom-miss-selfridge/201978329-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/sirenevoe-plate-midaksi-s-oborkami-vyrezom-i-tsvetochnym-printom-miss-selfridge/201978329-4?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/plate-midi-s-korsetom-v-chernyj-goroh-miss-selfridge/201540488-1-ivory?$n_240w$&wid=75&fit=constrain', 'Dress'),
('https://images.asos-media.com/products/plate-midi-s-korsetom-v-chernyj-goroh-miss-selfridge/201540488-2?$n_240w$&wid=75&fit=constrain','Pink dress'),
('https://images.asos-media.com/products/plate-midi-s-korsetom-v-chernyj-goroh-miss-selfridge/201540488-3?$n_240w$&wid=75&fit=constrain','Pink dress'),
('https://images.asos-media.com/products/plate-midi-s-korsetom-v-chernyj-goroh-miss-selfridge/201540488-4?$n_240w$&wid=75&fit=constrain','Pink dress'),
('https://images.asos-media.com/products/chernoe-atlasnoe-plate-majka-s-kvadratnym-vyrezom-i-perednimi-razrezami-as-you/22206820-1-black?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/chernoe-atlasnoe-plate-majka-s-kvadratnym-vyrezom-i-perednimi-razrezami-as-you/22206820-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/chernoe-atlasnoe-plate-majka-s-kvadratnym-vyrezom-i-perednimi-razrezami-as-you/22206820-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/chernoe-atlasnoe-plate-majka-s-kvadratnym-vyrezom-i-perednimi-razrezami-as-you/22206820-4?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/plate-midi-s-otdelkoj-asos-design/12926569-1-mauve?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/plate-midi-s-otdelkoj-asos-design/12926569-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/plate-midi-s-otdelkoj-asos-design/12926569-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/plate-midi-s-otdelkoj-asos-design/12926569-4?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/rozovyj-sarafan-s-nabivkoj-flok-miss-selfridge/201883490-1-pink?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/rozovyj-sarafan-s-nabivkoj-flok-miss-selfridge/201883490-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/rozovyj-sarafan-s-nabivkoj-flok-miss-selfridge/201883490-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/rozovyj-sarafan-s-nabivkoj-flok-miss-selfridge/201883490-4?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/sirenevyj-sarafan-s-oborkami-na-plechah-i-vyrezom-asos-design-petite/23677002-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/sirenevyj-sarafan-s-oborkami-na-plechah-i-vyrezom-asos-design-petite/23677002-1-lilac?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/sirenevyj-sarafan-s-oborkami-na-plechah-i-vyrezom-asos-design-petite/23677002-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/sirenevyj-sarafan-s-oborkami-na-plechah-i-vyrezom-asos-design-petite/23677002-4?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/vybelennoe-dzhinsovoe-plate-rubashka-pritalennogo-kroya-asos-design-petite/22805438-1-midwash?$n_640w$&wid=513&fit=constrain','Dress'),
('https://images.asos-media.com/products/vybelennoe-dzhinsovoe-plate-rubashka-pritalennogo-kroya-asos-design-petite/22805438-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/vybelennoe-dzhinsovoe-plate-rubashka-pritalennogo-kroya-asos-design-petite/22805438-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/vybelennoe-dzhinsovoe-plate-rubashka-pritalennogo-kroya-asos-design-petite/22805438-4?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-1-camel?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-4?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-1-creamfloralprint?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/bezhevoe-vyazanoe-plate-mini-s-vorotnikom-asos-design-petite/23455302-4?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-1-creamfloralprint?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/pritalennoe-plate-midi-kremovogo-tsveta-s-kvadratnym-vyrezom-i-tsvetochnym-printom-asos-design/200544954-4?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/zelenoe-plate-midi-iz-ekologichnyh-materialov-na-pugovitsah-s-oborkami-po-krayu-i-tsvetochnym-printom-miss-selfridge/201554412-1-lightgreen?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/zelenoe-plate-midi-iz-ekologichnyh-materialov-na-pugovitsah-s-oborkami-po-krayu-i-tsvetochnym-printom-miss-selfridge/201554412-2?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/zelenoe-plate-midi-iz-ekologichnyh-materialov-na-pugovitsah-s-oborkami-po-krayu-i-tsvetochnym-printom-miss-selfridge/201554412-3?$n_240w$&wid=75&fit=constrain','Dress'),
('https://images.asos-media.com/products/zelenoe-plate-midi-iz-ekologichnyh-materialov-na-pugovitsah-s-oborkami-po-krayu-i-tsvetochnym-printom-miss-selfridge/201554412-4?$n_240w$&wid=75&fit=constrain','Dress');


INSERT INTO Item_Image (id_item, id_img) values
(1,1),(1,2),(1,3),(1,4),
(2,5),(2,6),(2,7),(2,8),
(3,5),(3,8),(3,9),(3,10),
(4,11),(4,12),(4,13),(4,14),
(5,15),(5,16),(5,17),(5,18),
(6,52),(6,53),(6,54),
(7,19),(7,20),(7,21),(7,22),
(8,23),(8,24),(8,25),(8,26),
(9,27),(9,28),(9,29),(9,30),
(10,31),(10,32),(10,33),(10,34),
(11,35),(11,36),(11,37),(11,38),
(12,39),(12,40),(12,41),(12,42),
(13,43),(13,44),(13,45),(13,46),
(14,48),(14,49),(14,50),(14,51);


INSERT INTO Item_Category (id_item, id_category) values
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


