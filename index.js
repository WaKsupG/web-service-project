const express = require('express')
const app = express()
const port = 8024

const product_service = require('./routes/product-web-service')
const admin_service = require('./routes/admin-web-service')
const customer_service = require('./routes/customer-web-service')

app.use('/product-webservice', product_service)
app.use('/admin-webservice', admin_service)
app.use('/customer-webservice', customer_service)

app.listen(port,()=> console.log('listening on portt:' + port));