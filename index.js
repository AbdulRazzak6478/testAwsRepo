const express = require('express');
const dotenv = require('dotenv').config()
const { info } = require('./controllers/info-controller')
const app = express();
const PORT = 3002;
const url =  'http://localhost:3000/home/v1/api/info';
app.get('/',(req,res)=>{
    res.json({
        message : `server is Running on PORT : ${PORT}`
    })
})
app.get('/url',(req,res)=>{
    res.json({
        message : `server is Running on PORT : ${url}`
    })
})
app.get('/about',(req,res)=>{
    res.json({
        message : `it is a about section `
    })
})
app.get('/info',info)


app.listen(PORT,(req,res)=>{
    console.log("server started successfully on port, http://localhost:3002 ,",PORT);
});
