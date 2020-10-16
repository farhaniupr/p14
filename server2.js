var my = require('mysql2'); //import mysql2
const express = require('express'); //import express
const bodyParser = require('body-parser'); //import body parser
var md5 = require('md5'); // import md5

const app = express();  //inialisasi express
var path = require('path');  //import path
app.use(bodyParser.urlencoded({ extended: true }));  //bangun library body-parser

const db = my.createConnection({ // iniliasasi database mysql
    host: 'localhost',  //nama host
    user: 'root',  //nama user
    password: '',  //password
    database: 'mahasiswa' //nama database

})

app.get('/list', (req, res) => {  //pemanggilan url list user
    let json ={}; //inialisasi json
   
    db.connect(function(err){ //sambungkan ke databasse
        if(err) throw err; // jika eror tampilkan eror
        console.log('connected ke database');  //tulisan di console
        let sql = "select *  from user " ;  //sintak sql


        db.query(sql, function(err, result){  //run sql
            if(err) {  // jika eror 
                json.err = err  //tulis di json
                return res.send(JSON.stringify(json)); //buat json 
            } 
            json.rows = result; //buat baris json dari hasil result 
            res.send(JSON.stringify(json)); //buat json dari hasil sintak sql
            //console.log("Tampilkan"); //tulis tampilkan di konsole
            //console.log(result);
        });
        });
});

app.listen(12345, () => console.log(`Started server at http://localhost:12345`)); //bangun di localhost 8006