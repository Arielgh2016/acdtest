
const cds = require('@sap/cds')

module.exports = cds.service.impl(async (srv) => {

    console.log("entra a la implementación")
    console.log(srv)

    srv.before('CREATE', 'cl_n3_sku_media', req => {
        console.log('Create called')
        console.log(JSON.stringify(req.data))
        req.data.imageUrl = `/cl_n3_sku_media(country=${req.data.country},model=${req.data.model})/image`
    })

});