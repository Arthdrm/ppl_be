const express = require('express');
const swaggerUi = require('swagger-ui-express');
// const swaggerDocument = require('../config/braitapi.json')
const router = express.Router();
const controller = require('../controllers')
const middleware = require("../middlewares")


// router.use('/', swaggerUi.serve);
// router.get('/', swaggerUi.setup(swaggerDocument));



//mahasiswa-route
router.get("/mahasiswa",controller.mahasiswaController.getMahasiswaData)
router.post("/mahasiswa/krs",controller.mahasiswaController.getKrsData)
router.post("/mahasiswa/create",controller.mahasiswaController.createMahasiswaData)




module.exports = router;

