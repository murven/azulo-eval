CREATE TABLE airport (
    `id` INT NOT NULL AUTO_INCREMENT, 
    `name` VARCHAR(200) NOT NULL, 
    `priority_order` INT NOT NULL, 
    `airport_operator_id` INT NOT NULL,
    `location_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`airport_operator_id`) REFERENCES airport_operator(`id`),
    FOREIGN KEY (`location_id`) REFERENCES location(`id`)
);
