const express = require('express')
const app = express()
const path = require('path');
const port = 8024

const publicDirectoryPath = path.join(__dirname, 'web');
// const index = require('./routes/index.route')
const product_service = require('./routes/product-web-service')
const admin_service = require('./routes/admin-web-service')
const call_admin = require('./routes/callingAdmin')
const customer_service = require('./routes/customer-web-service')

app.use(express.static(publicDirectoryPath));
app.use('/admin', call_admin)
app.use('/product-webservice', product_service)
app.use('/admin-webservice', admin_service)
app.use('/customer-webservice', customer_service)

app.listen(port,()=> console.log('listening on portt:' + port));