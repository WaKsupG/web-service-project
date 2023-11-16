const express = require('express')
const app = express()
const port = 3001

const indexRoute = require('./routes/index.route')

app.use('/', indexRoute)

app.listen(port,()=> console.log('listening on portt:' + port))