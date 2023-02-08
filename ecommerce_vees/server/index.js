const express = require(`express`)
const authRouter = require(`./routes/auth`)
const mongoose = require(`mongoose`)
//middleware
//CLIENT ->middleware server -> client
const PORT = 3000
const app = express()
const DB = "mongodb+srv://Sylvester:analaba67@cluster0.ga9rvay.mongodb.net/?retryWrites=true&w=majority"

app.use(authRouter)

//fix deprecating error
mongoose.set(`strictQuery`, true)

//mongoose connection
mongoose.connect(DB).then(()=>{
    console.log("connection secure")
})
.catch((e) =>{
    console.log(e)
});








app.listen(PORT, "0.0.0.0", () => {
    console.log(`Connected  server started ${PORT}`)
})
//localhost