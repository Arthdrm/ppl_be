/*
  Warnings:

  - You are about to drop the `Krs` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Mahasiswa` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MataKuliah` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Krs` DROP FOREIGN KEY `Krs_mahasiswaId_fkey`;

-- DropForeignKey
ALTER TABLE `Krs` DROP FOREIGN KEY `Krs_matakuliahId_fkey`;

-- DropTable
DROP TABLE `Krs`;

-- DropTable
DROP TABLE `Mahasiswa`;

-- DropTable
DROP TABLE `MataKuliah`;

-- CreateTable
CREATE TABLE `mahasiswa` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nim` VARCHAR(255) NOT NULL,
    `jurusan` VARCHAR(255) NOT NULL,
    `notelp` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `alamat` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `krs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `semester_krs` VARCHAR(255) NOT NULL,
    `nilai` INTEGER NOT NULL,
    `sks` INTEGER NOT NULL,
    `mahasiswaId` INTEGER NOT NULL,
    `matakuliahId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `matakuliah` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_mk` VARCHAR(255) NOT NULL,
    `kode_mk` VARCHAR(255) NOT NULL,
    `semester_mk` VARCHAR(255) NOT NULL,
    `sks` INTEGER NOT NULL,
    `jenis_mk` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `krs` ADD CONSTRAINT `krs_mahasiswaId_fkey` FOREIGN KEY (`mahasiswaId`) REFERENCES `mahasiswa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `krs` ADD CONSTRAINT `krs_matakuliahId_fkey` FOREIGN KEY (`matakuliahId`) REFERENCES `matakuliah`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
