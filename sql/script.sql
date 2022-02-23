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
(4,'Сиреневое платье мидакси с оборками, вырезом и цветочным принтом Miss Selfridge', 1, 11, 4490, 4690, 4099, 'Прозрачный шифон. Легкая, воздушная ткань с зернистой фактурой.' );
CREATE TABLE Item_Image
(
    Id_item INT REFERENCES Item (Id_item),
    Id_img INT REFERENCES Image (Id_img)
);
INSERT INTO Item_Image values
(1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(2,8),(3,5),(3,8),(3,9),(3,10),(4,11),(4,12),(4,13),(4,14);
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
(14, 'https://images.asos-media.com/products/sirenevoe-plate-midaksi-s-oborkami-vyrezom-i-tsvetochnym-printom-miss-selfridge/201978329-4?$n_240w$&wid=75&fit=constrain','Dress');
CREATE TABLE Item_Category
(
    Id_item INT REFERENCES Item (Id_item),
    Id_category INT REFERENCES Category (Id_category)
);
INSERT INTO Item_Category values
(1,1),(1,2),(1,5),(2,2),(2,3),(2,4),(2,6),(3,2),(3,5),(3,6),(4,1),(4,2),(4,4);
CREATE TABLE Category
( 	Id_category INT PRIMARY KEY,
	Category_name  NVARCHAR(200) UNIQUE
);
INSERT INTO Category values
(1, 'Платья'),(2, 'Юбки'), (2,'Женское'),(3, ' Мужское'), (4,'Распродажа'),(5, 'Новинки'),(6, 'Джинсы');

