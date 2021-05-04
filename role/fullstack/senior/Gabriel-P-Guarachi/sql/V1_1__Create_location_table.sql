CREATE TABLE location (
    `id` INT NOT NULL AUTO_INCREMENT, 
    `country` VARCHAR(200) NOT NULL,
    `province_or_state` VARCHAR(200) NOT NULL,
    `latitude` VARCHAR(50) NOT NULL ,
    `longitude` VARCHAR(50) NOT NULL , 
    PRIMARY KEY (`id`)
);
