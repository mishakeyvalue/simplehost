const express = require('Express');
const bodyParser = require('body-parser');

let app = express();
const port = 4444;

// parse application/x-www-form-urlencoded 
app.use(bodyParser.urlencoded({ extended: false }))
 
// parse application/json 
app.use(bodyParser.json())

const apiController = require('./controllers/apiController');
apiController(app); // Fire up the controller

app.get('/', function(req, res){
    res.end('My API works!')
});

app.listen(port);
console.log('App is listening on the port ' + port);

