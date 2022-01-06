// load in dependencies
const database = require("../config/db.config")
const jwt = require("./../utils/jwt")

function mobile_endpoint(req, res, next) {
    const { week } = req.body;
    //TODO: get data based on week from database and end()
    database.promise()
        .query(" SELECT * FROM student_information")
        .then(([rows, fields]) => {
            //send back the week and the data required 

            return res.send({ message: { rows, week } })
        })
}

//hardware endpoint, takes card id, send information
function hardware_endpoint(req, res, next) {
    //get card id
    const { card_id } = req.body;
    database.promise()
    .query("SELECT * FROM ")
}

module.exports = {mobile_endpoint, hardware_endpoint}