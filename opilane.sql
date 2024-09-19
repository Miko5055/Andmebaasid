CREATE TABLE `Group`(
    `id` BIGINT UNSIGNED NOT NULL,
    `Teacherid` BIGINT UNSIGNED NOT NULL,
    `Name` VARCHAR(256) NOT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `Teacher`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Eesnimi` VARCHAR(255) NOT NULL,
    `Perekonnanimi` VARCHAR(255) NOT NULL,
    `Birthdate` DATE NULL
);
CREATE TABLE `trennid`(
    `id` BIGINT UNSIGNED NOT NULL,
    `name` VARCHAR(256) NOT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `School`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL
);
CREATE TABLE `Opilane`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Eesnimi` VARCHAR(256) NOT NULL,
    `Perekonnanimi` VARCHAR(256) NOT NULL,
    `Trennid` BIGINT UNSIGNED NOT NULL,
    `Groupid` BIGINT UNSIGNED NOT NULL,
    `Schoolid` BIGINT UNSIGNED NOT NULL
);
ALTER TABLE
    `Opilane` ADD CONSTRAINT `opilane_schoolid_foreign` FOREIGN KEY(`Schoolid`) REFERENCES `School`(`id`);
ALTER TABLE
    `Group` ADD CONSTRAINT `group_teacherid_foreign` FOREIGN KEY(`Teacherid`) REFERENCES `Teacher`(`id`);
ALTER TABLE
    `Opilane` ADD CONSTRAINT `opilane_trennid_foreign` FOREIGN KEY(`Trennid`) REFERENCES `trennid`(`id`);
ALTER TABLE
    `Opilane` ADD CONSTRAINT `opilane_groupid_foreign` FOREIGN KEY(`Groupid`) REFERENCES `Group`(`id`);