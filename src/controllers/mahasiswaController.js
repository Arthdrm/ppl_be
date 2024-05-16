const service = require("../services");
const utils = require("../utils");
module.exports ={
    async getMahasiswaData(req,res){
        try {

            let userData = await service.mahasiswaService.getMahasiswa()

            res.status(200).json(utils.responseTemplate.successResponse(
                true,
                `succes get mahasiswa data`,
                userData
            ))
        }catch (error) {
            res.status(500).json(utils.responseTemplate.errorResponse(
                false,
                `${error.message}`,
            ));
        }
    },
    async createMahasiswaData(req,res){
        try {
            console.log(req.body)
            let userData = await service.mahasiswaService.createMahasiswa(req.body)

            res.status(200).json(utils.responseTemplate.successResponse(
                true,
                userData,
            ))
        }catch (error) {
            res.status(500).json(utils.responseTemplate.errorResponse(
                false,
                `${error.message}`,
            ));
        }
    },
    async getKrsData(req,res){
        try {

            let krsData = await service.mahasiswaService.getMahasiswaKrs(req.body.id)

            res.status(200).json(utils.responseTemplate.successResponse(
                true,
                `succes get krs data`,
                krsData
            ))
        }catch (error) {
            res.status(500).json(utils.responseTemplate.errorResponse(
                false,
                `${error.message}`,
            ));
        }
    },

}