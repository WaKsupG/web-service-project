DROP DATABASE IF EXISTS team12;
CREATE DATABASE IF NOT EXISTS team12;
USE team12;

CREATE TABLE graphics_cards (
    products INT,
    brand VARCHAR(255),
    model VARCHAR(255),
    slot VARCHAR(255),
    chipset VARCHAR(255),
    series VARCHAR(255),
    gpu_model VARCHAR(255),
    gpu_speed_oc INT,
    gpu_speed_gaming INT,
    memory_speed INT,
    memory_size INT,
    memory_type VARCHAR(255),
    cuda_cores INT,
    length INT,
    width INT,
    height INT,
    max_resolution VARCHAR(255),
    directx_support VARCHAR(255),
    crossfire_sli_support VARCHAR(255),
    dvi_port INT,
    hdmi_port INT,
    display_port INT,
    option_port VARCHAR(255),
    power_consumption VARCHAR(255),
    power_supply_requirement INT,
    power_connectors VARCHAR(255),
    warranty_years INT,
    products_id VARCHAR(255) not null
);

INSERT INTO graphics_cards (products,brand, model, slot, chipset, series, gpu_model, gpu_speed_oc, gpu_speed_gaming, memory_speed, memory_size, memory_type, cuda_cores, length, width, height, max_resolution, directx_support, crossfire_sli_support, dvi_port, hdmi_port, display_port, option_port, power_consumption, power_supply_requirement, power_connectors, warranty_years,products_id)
VALUES
(10,'Asus', 'PH-GTX1650-O4GD6', '1 x PCIe 3.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 16 Series', 'GeForce GTX 1650', 1635, 1605, 12000, 4, 'GDDR6', 896, 174, 126, 39, '7680 x 4320', '12', 'No', 1, 1, 1, 'N/A', '100 W', 300, '1 x 8 Pin', 3,01),
(10,'MSI', 'GeForce GTX 1630 VENTUS XS 4G OC', '1 x PCIe 3.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 16 Series', 'GeForce GTX 1630', 1815, 1635, 12000, 4, 'GDDR6', 512, 178, 112, 39, '7680 x 4320', '12', 'No', 1, 1, 1, 'N/A', '75 W', 300, '1 x 8 Pin', 3,02),
(10,'Asus', 'TUF-GTX1660S-O6G-GAMING', '1 x PCIe 3.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 16 Series', 'GeForce GTX 1660 SUPER', 1530, 1845, 14002, 6, 'GDDR6', 1408, 206, 124, 46, '7680 x 4320', '12', 'No', 1, 1, 1, 'N/A', '125 W', 450, '1 x 8 Pin', 3,03),
(10,'Galax', 'GeForce GTX 1650 LP GDDR6', '1 x PCIe 3.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 16 Series', 'GeForce GTX 1650', 1615, 1590, 8000, 4, 'GDDR6', 896, 182, 121, 39, '7680 x 4320', '12', 'No', 1, 1, 1, 'N/A', '75 W', 300, '1 x 8 Pin', 3,04),
(10,'Inno3D', 'GEFORCE RTX 2060 TWIN X2', '1 x PCIe 3.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 20 Series', 'GeForce RTX 2060', 1680, 1680, 14000, 6, 'GDDR6', 1920, 220, 113, 40, '7680 x 4320', '12', 'No', 0, 1, 3, 'N/A', '160 W', 500, '1 x 8 Pin', 3,05),
(10,'Asus', 'DUAL-RTX2060-O12G-EVO', '1 x PCIe 3.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 20 Series', 'GeForce RTX 2060', 1695, 1695, 14000, 12, 'GDDR6', 2176, 242, 130, 53, '7680 x 4320', '12', 'No', 1, 2, 1, 'N/A', '185 W', 500, '1 x 8 Pin', 3,06),
(10,'Gigabyte', 'GeForce RTX 2060 SUPER WINDFORCE OC 8G (rev. 1.1)', '1 x PCIe 3.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 20 Series', 'GeForce RTX 2060 SUPER', 1680, 1680, 14000, 8, 'GDDR6', 2176, 265, 121, 40, '7680 x 4320', '12', 'No', 0, 1, 3, 'N/A', '175 W', 550, '1 x 8 Pin', 3,07),
(10,'Galax', 'GeForce RTX 3060 Ti GDDR6X SG 1-Click OC Plus (Updated Ver.)', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 30 Series', 'GeForce RTX 3060 Ti', 1695, 1680, 19000, 8, 'GDDR6X', 4864, 329, 130, 61, '7680 x 4320', '12', 'No', 0, 1, 3, 'N/A', '200 W', 650, '1 x 8 Pin', 3,08),
(10,'Gigabyte', 'GeForce RTX 3070 Ti GAMING OC 8G', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 30 Series', 'GeForce RTX 3070 Ti', 1830, 1710, 19000, 8, 'GDDR6X', 6144, 320, 129, 55, '7680 x 4320', '12 ', 'No', 0, 2, 2, 'N/A', '290 W', 750, '2 x 8 Pin', 3,09),
(10,'Inno3D', 'GeForce RTX 3080 Ti ICHILL X4', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 30 Series', 'GeForce RTX 3080 Ti', 1800, 1710, 19000, 12, 'GDDR6X', 10240, 300, 135, 60, '7680 x 4320', '12 ', 'No', 0, 1, 3, 'N/A', '350 W', 750, '2 x 8 Pin', 3,10),
(10,'Gigabyte', 'GeForce RTX 3070 Ti GAMING OC 8G', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 30 Series', 'GeForce RTX 3070 Ti', 1830, 1710, 19000, 8, 'GDDR6X', 6144, 320, 129, 55, '7680 x 4320', '12 ', 'No', 0, 2, 2, 'N/A', '290 W', 750, '2 x 8 Pin', 3,11),
(10,'Asus', 'Dual GeForce RTX 3070 V2 OC edition', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 30 Series', 'GeForce RTX 3070', 1800, 1770, 14000, 8, 'GDDR6', 5888, 267, 135, 52, '7680 x 4320', '12', 'No', 0, 2, 3, 'N/A', '290 W', 750, '2 x 8-pin', 3,12),
(10,'MSI', 'GeForce RTX™ 3050 VENTUS 2X 8G OCV1', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 30 Series', 'GeForce RTX 3050', 1807, 1710, 14000, 8, 'GDDR6', 2560, 236, 126, 43, '7680 x 4320', '12 ', 'No', 0, 2, 2, 'N/A', '115 W', 500, '1 x 6 Pin', 3,13),
(10,'Asus', 'Dual GeForce RTX™ 4060 White OC Edition', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 40 Series', 'GeForce RTX 4060', 2535, 2505, 17000, 8, 'GDDR6', 3072, 227, 123, 50, '7680 x 4320', '12 ', 'No', 0, 1, 3, 'N/A', '115 W', 550, '1 x 8 Pin', 3,14),
(10,'Gigabyte', 'AORUS GeForce RTX 4060 Ti ELITE 8G', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 40 Series', 'GeForce RTX 4060 Ti', 2655, 2655, 18000, 8, 'GDDR6', 4352, 301, 128, 56, '7680 x 4320', '12 ', 'No', 0, 2, 2, 'N/A', '160 W', 500, '1 x 8 Pin', 3,15),
(10,'PNY', 'GeForce RTX 4070 12GB XLR8 Gaming VERTO EPIC-X RGB Triple Fan', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 40 Series', 'GeForce RTX 4070', 1920, 2475, 21000, 12, 'GDDR6X', 5888, 305, 119, 65, '7680 x 4320', '12 ', 'No', 0, 1, 3, 'N/A', '200 W', 650, '1 x 8 Pin', 3,16),
(10,'Gigabyte', 'GeForce RTX 4070 Ti GAMING OC 12G', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 40 Series', 'GeForce RTX 4070 Ti', 2640, 2640, 21000, 12, 'GDDR6X', 7680, 336, 140, 58, '7680 x 4320', '12 ', 'No', 0, 1, 3, 'N/A', '285 W', 750, '1 x 16 Pin', 3,17),
(10,'MSI', 'GeForce RTX™ 4090 SUPRIM LIQUID X 24G', '1 x PCIe 4.0 x16 Slot', 'Nvidia', 'Nvidia GeForce 40 Series', 'GeForce RTX 4090', 2640, 2625, 21000, 24, 'GDDR6X', 16384, 280, 140, 43, '7680 x 4320', '12 ', 'No', 0, 1, 3, 'N/A', '480 W', 1000, '1 x 16 Pin', 3,18);


-- SELECT * FROM graphics_cards;


CREATE TABLE users_info (
    
    name VARCHAR(255),
    lastname VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    display_name VARCHAR(255),
    phone_number VARCHAR(10),
    location VARCHAR(255),
    birth_date DATE,
    time_login Timestamp
);


INSERT INTO users_info (name, lastname, email, password, display_name, phone_number, location, birth_date,time_login)
VALUES
('Tanitsin', 'Donsopomjiranat', 'tanitsin.don@student.mahidol.edu', '246890', 'Jimmy', '0855142491', 'Mahachai', '2003-09-26', '2023-10-10 10:39:37'),
('Ninepurin', 'Mokontip', 'ninepulin.mon@student.mahidol.edu', '99999', 'บิดโหด', '9876543210', 'Bangkok', '1945-05-10','2023-10-10 20:39:37'),
('Chayut', 'Monyai', 'Chayut.mon@student.mahidol.edu', '1010101', 'square blood', '0859999999', 'Bangkok', '2004-05-14','2023-10-19 23:39:37'),
('Phumipat', 'Intanee', 'Phumipat.int@student.mahidol.edu', '11223344', 'กุพร้อมไป', '9876543210', 'Bangkok', '2003-10-13','2023-11-10 14:39:37');

-- SELECT * FROM users_info;


CREATE TABLE admin_info (
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    phone_number VARCHAR(10),
    time_login Timestamp
);


INSERT INTO admin_info (email, password, phone_number,time_login)
VALUES
('tanitsin1.don@student.mahidol.edu', '24689077', '0855142490','2023-11-11 23:59:00'),
('ninepulin1.mon@student.mahidol.edu', '9999977', '9876543211','2023-11-11 20:45:50'),
('Chayut1.mon@student.mahidol.edu', '101010177', '0857777777','2023-11-11 17:39:00'),
('Phumipat1.int@student.mahidol.edu', '1122334477', '9876543217','2023-11-11 22:30:00');


-- SELECT * FROM admin_info;