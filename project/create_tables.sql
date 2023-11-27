-- 1.1.1 employee 表
CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    password VARCHAR(255),
    phonenumber VARCHAR(13) CHECK (phonenumber LIKE '1%' AND LENGTH(phonenumber) = 11),
    api_key CHAR(40),
    type INT
);

-- 1.1.2 product 表
CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    detail VARCHAR(255),
    quality VARCHAR(10),
    stock DECIMAL(10, 2),
    price DECIMAL(5, 2),
    photo VARCHAR(255),
    type VARCHAR(10)
);

-- 1.1.3 farm 表
CREATE TABLE farm (
    farm_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    location VARCHAR(60)
);

-- 1.1.4 weather 表
CREATE TABLE weather (
    farm_id INT AUTO_INCREMENT,
    record_date DATE,
    high_temp INT,
    low_temp INT,
    precipitation DECIMAL(5, 2),
    humidity INT CHECK (humidity >= 0 AND humidity <= 100),
    wind INT CHECK (wind > 0 AND wind < 24.4),
    weather VARCHAR(20),
    PRIMARY KEY (farm_id, record_date),
    FOREIGN KEY (farm_id) REFERENCES farm(farm_id)
);

-- 1.1.5 field 表
CREATE TABLE field (
    field_id INT PRIMARY KEY AUTO_INCREMENT,
    status VARCHAR(255),
    name CHAR(20),
    farm_id INT,
    soil_type VARCHAR(20),
    ph_level DECIMAL(3, 1) CHECK (ph_level >= 0 AND ph_level <= 14),
    vertex1_latitude DECIMAL(8, 5),
    vertex1_longitude DECIMAL(8, 5),
    vertex2_latitude DECIMAL(8, 5),
    vertex2_longitude DECIMAL(8, 5),
    vertex3_latitude DECIMAL(8, 5),
    vertex3_longitude DECIMAL(8, 5),
    vertex4_latitude DECIMAL(8, 5),
    vertex4_longitude DECIMAL(8, 5),
    photo VARCHAR(255),
    FOREIGN KEY (farm_id) REFERENCES farm(farm_id)
);

-- 1.1.6 crop 表
CREATE TABLE crop (
    crop_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    crop_type VARCHAR(20),
    soil_type VARCHAR(20),
    high_ph INT,
    low_ph INT
);

-- 1.1.7 planting 表
CREATE TABLE planting (
    planting_id INT PRIMARY KEY AUTO_INCREMENT,
    field_id INT,
    crop_id INT,
    start_date DATE,
    end_date DATE,
    employee_id INT,
    FOREIGN KEY (field_id) REFERENCES field(field_id),
    FOREIGN KEY (crop_id) REFERENCES crop(crop_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- 1.1.8 equipment 表
CREATE TABLE equipment (
    equipment_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    type VARCHAR(20),
    farm_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (farm_id) REFERENCES farm(farm_id)
);

-- 1.1.9 consumables 表
CREATE TABLE consumables (
    consumables_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    type VARCHAR(20),
    stock INT CHECK (stock >= 0),
    unit VARCHAR(20),
    farm_id INT,
    FOREIGN KEY (farm_id) REFERENCES farm(farm_id)
);

-- 1.1.10 consumables_history 表
CREATE TABLE consumables_history (
    consumables_id INT AUTO_INCREMENT,
    change_date DATE,
    employee_id INT,
    weight INT,
    detail VARCHAR(255),
    PRIMARY KEY (consumables_id, change_date),
    FOREIGN KEY (consumables_id) REFERENCES consumables(consumables_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- 1.1.11 maintenance 表
CREATE TABLE maintenance (
    maintenance_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    equipment_id INT,
    start_date DATE,
    end_date DATE,
    detail VARCHAR(255),
    cost DECIMAL(10, 2) CHECK (cost >= 0),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (equipment_id) REFERENCES equipment(equipment_id)
);

-- 1.1.12 issue 表
CREATE TABLE issue (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(20),
    start_date DATE,
    address_date DATE,
    end_date DATE,
    planting_id INT,
    detail VARCHAR(255),
    employee_id INT,
    FOREIGN KEY (planting_id) REFERENCES planting(planting_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- 1.1.13 activity 表
CREATE TABLE activity (
    activity_id INT PRIMARY KEY AUTO_INCREMENT,
    issue_id INT,
    equipment_id INT,
    consumables_id INT,
    detail VARCHAR(255),
    amount INT,
    employee_id INT,
    FOREIGN KEY (issue_id) REFERENCES issue(issue_id),
    FOREIGN KEY (equipment_id) REFERENCES equipment(equipment_id),
    FOREIGN KEY (consumables_id) REFERENCES consumables(consumables_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- 1.1.14 warehouse 表
CREATE TABLE warehouse (
    warehouse_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    farm_id INT,
    FOREIGN KEY (farm_id) REFERENCES farm(farm_id)
);

-- 1.1.15 wares 表
CREATE TABLE wares (
    wares_id INT PRIMARY KEY AUTO_INCREMENT,
    warehouse_id INT,
    quality VARCHAR(10),
    crop_id INT,
    weight DECIMAL(10, 2),
    earliest_date DATE,
    stock DECIMAL,
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id),
    FOREIGN KEY (crop_id) REFERENCES crop(crop_id)
);

-- 1.1.16 shelf 表
CREATE TABLE shelf (
    shelf_id INT PRIMARY KEY AUTO_INCREMENT,
    shelf_date DATE,
    employee_id INT,
    amount INT,
    wares_id INT,
    product_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (wares_id) REFERENCES wares(wares_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- 1.1.17 harvest 表
CREATE TABLE harvest (
    harvest_id INT PRIMARY KEY AUTO_INCREMENT,
    harvest_date DATE,
    employee_id INT,
    planting_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (planting_id) REFERENCES planting(planting_id)
);

-- 1.1.18 harvest_info 表
CREATE TABLE harvest_info (
    harvest_info_id INT PRIMARY KEY AUTO_INCREMENT,
    quality VARCHAR(20),
    weight INT CHECK (weight > 0),
    harvest_id INT,
    FOREIGN KEY (harvest_id) REFERENCES harvest(harvest_id)
);


-- 1.1.19 issue_routine 表
CREATE TABLE issue_routine (
    routine_id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(20),
    start_date DATE,
    end_date DATE,
    planting_id INT,
    detail VARCHAR(255),
    employee_id INT,
    FOREIGN KEY (planting_id) REFERENCES planting(planting_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);
