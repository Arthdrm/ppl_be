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
}