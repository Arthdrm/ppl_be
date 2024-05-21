const {PrismaClient}  = require("@prisma/client")
const prisma = new PrismaClient()

module.exports = {
    async getMahasiswa(req){
        try {
            let {page=1, limit=10}= req.query //menghasilkan string
            let skip = (page-1) * limit

            let result =  await prisma.mahasiswa.findMany(
                {
                    take : parseInt(limit),
                    skip:skip
                }
            )

            //informasi total data keseluruhan
            const resultCount = await prisma.mahasiswa.count()//integer jumlah total data user

            //generated total page
            const totalPage= Math.ceil(resultCount/limit)

            return {
                success: true,
                current_page: page - 0, //ini -0 merubah menjadi integer
                total_page : totalPage,
                total_data : resultCount,
                data: result
            }
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
