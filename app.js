const express = require('Express');

let app = express();
const port = 4444;

const apiController = require('./controllers/apiController');

apiController(app); // Fire up the controller

app.get('/', function(req, res){
    res.end('My API works!')
});

app.listen(port);
console.log('App is listening on the port ' + port);