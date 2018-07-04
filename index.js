var express = require('express');
var app = expres();

app.get('/', function(req, res) {
    res.send("Hola Mundo");
});

app.listen(3000, function() {
    console.log("Escuchando en el puerto 3000!");
});