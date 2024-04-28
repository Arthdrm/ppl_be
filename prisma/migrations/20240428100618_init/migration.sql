-- CreateTable
CREATE TABLE `Krs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `semester_krs` VARCHAR(255) NOT NULL,
    `nilai` INTEGER NOT NULL,
    `sks` INTEGER NOT NULL,
    `mahasiswaId` INTEGER NOT NULL,
    `matakuliahId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MataKuliah` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_mk` VARCHAR(255) NOT NULL,
    `kode_mk` VARCHAR(255) NOT NULL,
    `semester_mk` VARCHAR(255) NOT NULL,
    `sks` INTEGER NOT NULL,
    `jenis_mk` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Krs` ADD CONSTRAINT `Krs_mahasiswaId_fkey` FOREIGN KEY (`mahasiswaId`) REFERENCES `Mahasiswa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Krs` ADD CONSTRAINT `Krs_matakuliahId_fkey` FOREIGN KEY (`matakuliahId`) REFERENCES `MataKuliah`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
