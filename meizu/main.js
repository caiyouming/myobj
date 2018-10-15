const express = require('express');
const bodyParser = require('body-parser');

var phoneIndex = require('./routers/phoneIndex.js');

var app = express();

app.listen(3000);

app.use(bodyParser.urlencoded({
	extended:false
}));

app.use(express.static('static'));


app.use('/phoneIndex',phoneIndex);
