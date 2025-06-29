import mongoose from "mongoose";

const connecDB=async()=>{
    try {
        mongoose.connection.on('connected',()=>console.log("Database Connected")
        );
        await mongoose.connect(`${process.env.MONGODB_URI}/HOTEL-BOOKING`)
    } catch (error) {
        console.log(error.message);
        
    }
}

export default connecDB