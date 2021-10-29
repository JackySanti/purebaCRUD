const express = require('express')
const router = express.Router()
const db = require('../db/db')

router.get('/', (req, res) => {
    db.test.obtenerProductos()
        .then((consulta) => {
            const params = {
                values: consulta.recordset
            }
            res.render('index', params)
            console.log(consulta.recordset[0])
        })
        .catch((err) => {
            console.log(err)
            res.render('index')
        })
})


module.exports = router