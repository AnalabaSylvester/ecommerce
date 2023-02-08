const express = require(`express`)
const User = require("../models/user")

const authRouter = express.Router()

authRouter.post('/api/signup', async (req, res) =>{
    const {name, email, password} = req.body

    const existingUser = await User.findOne({email})
    if(existingUser){
        return res.status(400).json({msg: "user with the same email already exists"})
    }  
   let user = new User({
    


    })



    //get the data from client
    //post that data to database
    //return that data to the user
})

module.exports = authRouter