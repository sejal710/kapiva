const express = require("express");
const cors = require("cors");
const {connection} = require("./db")
const {dataModel} = require("./model/data.model")
require("dotenv").config();
const app = express();
app.use(express.json());
app.use(cors())

app.get("/",(req,res) => {
    res.send("Welcome TO THE HOME PAGE CREATING BY DEAR SEJAL JAISWAL")
})

app.post("/data",async(req,res) => {
     const data = req.body;
     try{
        const post = new dataModel(data);
        await post.save();
        res.send({Message:"Data Sucessfully Added"})
     }
     catch(e){
        res.send({Message:e.message})
     }
})

app.get("/data",async(req,res) =>{
    try{
        const data = await dataModel.find();
        res.send({data:data,length:data.length})
    }
    catch(e){
        res.send({Message:e.message})
     }
})


app.listen(process.env.PORT,async(req,res) => {
    console.log(`Server is runing in ${process.env.PORT}`);
    try{
        await connection;
        console.log("DB is connected");
    }
    catch(e){
        console.log("Error Messaage",e.message);
    }
})