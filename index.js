const express = require('express')
const app = express()


var DEFAULT_PORT = 8080;
var PORT = process.env.PORT || DEFAULT_PORT;

app.get('/', function (req, res) {
    res.send('Hello World~~~')
})

app.listen(PORT, function () {
    console.log('Example app listening on port ' + PORT + '!')
})