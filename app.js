var express = require('express');
var app = express();
// Respond to requests for / with 'Hello World'
app.get('/', function(req, res){
 res.send('Hello world!');
});

app.listen(3000, () => console.log('Express server started successfully.'));