var express = require('express');
var app = express();
var mysql = require('mysql');
var connection = mysql.createConnection({
    database: 'GestionTareas',
    host: 'localhost',
    user: 'root',
    password: ''
});


app.get('/', function(req, res) {

    // connection.connect();
    connection.query('select * from TAREASESTADOS', function(err, rows, fields) {
            if (err) throw err;
            //console.log('El resultado es: ', rows[0]);
            res.send(rows);
        })
        //connection.end();
        //res.send("Hola Mundo");
});

app.listen(3000, function() {
    console.log("Escuchando en el puerto 3000!");
});