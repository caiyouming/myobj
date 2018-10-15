const express = require('express');
const user = require('./routers/user.js');
const bodyParser = require('body-parser');
const res_show = require('./routers/res_show.js');
const teacher = require('./routers/teacher.js');

var app = express();
app.listen(3000);

app.use(express.static('./static'));

app.use(bodyParser.urlencoded({
	extended:false
}));

app.use('/user',user);
app.use('/teacher',teacher);
app.use('/res-show',res_show);
