USE hw3;
CREATE TABLE Items (
    itemId int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    unit varchar(255),
    manufacturer varchar(255),
    PRIMARY KEY (itemId)
);
CREATE TABLE user (
    account varchar(100) DEFAULT NULL,
    user_id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    password varchar(255) DEFAULT NULL,
    email varchar(255) DEFAULT NULL,
    lab_training varchar(255) DEFAULT NULL,
    PI_name varchar(255) DEFAULT NULL,
    phone varchar(255) DEFAULT NULL,
    PRIMARY KEY (user_id)
);
CREATE TABLE Inventory (
    inventoryID int NOT NULL AUTO_INCREMENT,
    entityID int,
    quantity int ,
    expiry Date,
    ownerID int,
    PRIMARY KEY (inventoryID),
    FOREIGN KEY (entityID) REFERENCES Items(itemId),
    FOREIGN KEY (ownerID) REFERENCES user(user_id)
);
INSERT INTO Items VALUES
    (0, "Water", "ml", "Pepsi"),
    (1, "Methane", "ml", "Air Liquid"),
    (2, "Acetylene", "ml", "Air Liquid"),
    (3, "Sulfuric acid", "ml", "Merck"),
    (4, "Alcohol", "ml", "Dow"),
    (5, "Oxygen", "ml", "Air Liquid"),
    (6, "Hydrogen", "ml", "Dow"),
    (7, "Sulfur", "g", "3M"),
    (8, "TNT", "g", "3M"),
    (9, "Iron", "kg","3M");
INSERT INTO Inventory (entityID, quantity, expiry, ownerID) VALUES
    (3, 15, "2022-01-10", 1),
    (8, 20, "2022-08-20", 2),
    (6, 90, "2022-11-07", 3),
    (7, 34, "2022-12-19", 1),
    (2, 22, "2022-05-20", 2),
    (1, 76, "2025-01-01", 3),
    (9, 43, "2023-03-03", 1),
    (6, 20, "2024-09-30", 2),
    (8, 50, "2023-09-21", 3),
    (5, 80, "2024-11-08", 1);
INSERT INTO user (account, user_id, name, password, email, lab_training, PI_name, phone) VALUES
    ("gch7", 1, "Guanchen", "3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d","gczhao@uw.edu","Y","Danielle Allen", "2063772987"),
    ("lll", 2, "Yuri", "3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d", "yuri8881@gmail.com", "Y", "Michael", "6073881290"),
    ("hcj", 3, "Huicong", "3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d", "huicong@hot.com", "Y", "Martha Minow", "2013790928"),
    ("avenda", 4, "Kevin", "3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d","kevin1234@hotmail.com", "Y", "George Whitesides","6073963256"),
    ("kimFie", 5, "Kim", "3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d","kDotcom@gmail.com","Y","Peter Galison","2667392019"),
    ("fiona", 6, "Fiona", "3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d","fionamalambo@hotmail.com","Y","Danielle Allen","2067392019"),
    ("brown", 7, "Brown", "3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d","bobK00@hotmail.com","Y","Amartya Sen","2061292019"),
    ("jarern", 8, "Jarern", "l3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d","jarern@uw.edu","Y","Annette Gordon","2063881234"),
    ("smith", 9, "smoker", "s3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d","smith@uw.edu","Y","Martha Minow","6073791234"),
    ("kristina", 10, "Kristina", "3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d","kristina@uw.edu","Y","Martha Minow","2063546789");
