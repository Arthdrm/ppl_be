const {PrismaClient}  = require("@prisma/client")
const prisma = new PrismaClient()

module.exports = {
    async getMahasiswa(){
        try {
            return await prisma.mahasiswa.findMany()
        }catch (error) {

        }
    },
}
