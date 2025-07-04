import express from "express"
import "dotenv/config";
import cors from "cors"
import connecDB from "./configs/db.js";
import { clerkMiddleware } from '@clerk/express'
import clerkWebhooks from "./controllers/clerkWebhooks.js";

connecDB()

const app=express()
app.use(cors()) //Enable Cross-origin resource sharing

//Middleware
app.use(express.json())
app.use(clerkMiddleware())

//API to listen clerk webhooks
app.use("/api/clerk",clerkWebhooks);

app.get('/',(req,res)=>res.send("API is working "))

const PORT=process.env.PORT || 3000;

app.listen(PORT,()=>console.log(`Server running on port ${PORT}`));