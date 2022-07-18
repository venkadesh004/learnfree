const express = require('express');
const mongoose = require('mongoose');

const url = "mongodb+srv://venky:venkadesh@users.pxarx.mongodb.net/?retryWrites=true&w=majority";

const app = express();
const port = process.env.PORT || 5000;

mongoose.connect(url, { useNewUrlParser: true });
const con = mongoose.connection;

con.on('open', () => {
    console.log('Connected');
});

app.use(express.json());

const routes = require(__dirname+'/routes');
console.log(routes);
app.use('/routes', routes);

app.listen(port, () => {
    console.log('Server Started');
});