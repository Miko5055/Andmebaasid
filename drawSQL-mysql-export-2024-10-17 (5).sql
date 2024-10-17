CREATE TABLE `kasutajaligipääs`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `kasutajanimi` VARCHAR(255) NOT NULL,
    `ligipääs` BIGINT UNSIGNED NOT NULL,
    `roll` VARCHAR(255) NOT NULL
);
CREATE TABLE `treeninggraafik`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `hobuseid` BIGINT UNSIGNED NOT NULL,
    `treeningkuupäev` DATE NOT NULL,
    `treenernimi` VARCHAR(255) NOT NULL,
    `kirjeldus` VARCHAR(255) NOT NULL
);
CREATE TABLE `hobuseomanikud`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nimi` VARCHAR(255) NOT NULL,
    `telefon` BIGINT UNSIGNED NULL,
    `aadress` VARCHAR(255) NOT NULL
);
CREATE TABLE `varustus`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `varustusnimi` VARCHAR(255) NOT NULL,
    `kogus` BIGINT UNSIGNED NOT NULL,
    `väärtus` BIGINT UNSIGNED NOT NULL
);
CREATE TABLE `tallid`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tallinr` VARCHAR(255) NOT NULL,
    `asukoht` VARCHAR(255) NOT NULL
);
CREATE TABLE `hobused`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nimi` VARCHAR(255) NOT NULL,
    `sünniaasta` BIGINT UNSIGNED NOT NULL,
    `talli_id` BIGINT UNSIGNED NOT NULL,
    `omaniku_id` BIGINT UNSIGNED NOT NULL
);
CREATE TABLE `töötajad`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nimi` VARCHAR(255) NOT NULL,
    `kontakt` VARCHAR(255) NOT NULL,
    `töögraafik` DATE NOT NULL
);
CREATE TABLE `terviseajalugu`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `hobuseid` BIGINT UNSIGNED NOT NULL,
    `vaksineerimine` VARCHAR(255) NULL,
    `kuupäev` DATE NOT NULL,
    `maksesumma` BIGINT NOT NULL
);
ALTER TABLE
    `treeninggraafik` ADD CONSTRAINT `treeninggraafik_hobuseid_foreign` FOREIGN KEY(`hobuseid`) REFERENCES `hobused`(`id`);
ALTER TABLE
    `hobused` ADD CONSTRAINT `hobused_talli_id_foreign` FOREIGN KEY(`talli_id`) REFERENCES `tallid`(`id`);
ALTER TABLE
    `hobused` ADD CONSTRAINT `hobused_omaniku_id_foreign` FOREIGN KEY(`omaniku_id`) REFERENCES `hobuseomanikud`(`id`);
ALTER TABLE
    `terviseajalugu` ADD CONSTRAINT `terviseajalugu_hobuseid_foreign` FOREIGN KEY(`hobuseid`) REFERENCES `hobused`(`id`);