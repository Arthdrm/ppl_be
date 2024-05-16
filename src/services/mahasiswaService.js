const {PrismaClient}  = require("@prisma/client")
const prisma = new PrismaClient()

module.exports = {
    async getMahasiswa(){
        try {
            return await prisma.mahasiswa.findMany()
        }catch (error) {

        }
    },
    async createMahasiswa(data) {
        const newMahasiswa = await prisma.mahasiswa.create({
          data: data
        });
        return `Created new mahasiswa with ID: ${newMahasiswa.id}`;
      },

    async getMahasiswaKrs(id){
        try {
            const krsData = await prisma.krs.findMany({
                where: {
                    mahasiswaId: id
                }
            });
            return krsData
        }catch (error) {

        }
    },
}
