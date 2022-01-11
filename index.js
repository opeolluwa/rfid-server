require('dotenv').config()
const express = require('express')
const PORT = process.env.PORT || 5000
const app = express()
const cors = require('cors')


//routes
const auth = require('./routes/auth')
const attendance = require("./routes/attendance")


//load in routes and cors
app.use(cors())
app.use(express.json())
app.use("/attendance", attendance)
app.use("/auth", auth)

// create the connection test
app.get("/", (req, res) => {
    res.send("Ignition started, sand sinking")
})


app.listen(PORT, () => {
    console.log(`API listening on port ${PORT}, current time stamp is ${Date.now()}`)
});
