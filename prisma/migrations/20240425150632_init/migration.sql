/*
  Warnings:

  - Added the required column `alamat` to the `Mahasiswa` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `Mahasiswa` table without a default value. This is not possible if the table is not empty.
  - Added the required column `notelp` to the `Mahasiswa` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Mahasiswa` ADD COLUMN `alamat` VARCHAR(255) NOT NULL,
    ADD COLUMN `email` VARCHAR(255) NOT NULL,
    ADD COLUMN `notelp` VARCHAR(255) NOT NULL;
