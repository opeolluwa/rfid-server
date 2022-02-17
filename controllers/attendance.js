// load in dependencies
const database = require("../config/db.config")
const jwt = require("./../utils/jwt")
const _ = require("lodash");
//week parser, returns the number of week
const { week_parser } = require("../utils/time-parser");



function mobile_endpoint(req, res, next) {

    const { week } = req.body;
    //TODO: get data based on week from database and end()
    database.promise()
        //create data from student name, matric number and student email 
        .query(`SELECT rfid_student_information.student_first_name, rfid_student_information.student_last_name, rfid_student_information.student_email, rfid_student_information.matric_number, rfid_attendance.last_seen, rfid_attendance.week_${week} as attendance FROM rfid_student_information INNER JOIN rfid_attendance ON rfid_student_information.student_id=rfid_attendance.student_id`)
        .then(([rows, fields]) => {

            //send back the week and the data required 
            return res.send({ message: { rows, week } })
        })
        .catch((error) => {
            res.send({ error: "internal server error" })
        })
}

//hardware endpoint, takes card id, send error or success message
function hardware_endpoint(req, res, next) {
    //get card id 02db2534
    const { card_id } = req.body;
    database
        .promise()
        .query("SELECT * FROM rfid_student_information WHERE LOWER(student_id) = ?", [card_id])
        .then((rows, fields) => {
            //if student with that id is not found return not found error
            if (!rows[0]) {
                return res.send({ error: true, message: `Invalid ID, Student with ${card_id} does not exist!` })
            }

            else {
                //mark student attendance and return status to hardware 
                database
                    //todo add last seen
                    .promise()
                    .query(`UPDATE rfid_attendance SET week_${week_parser()} = ${week_parser() > 0 ? 1 : 0}, last_seen = now()  WHERE lower(student_id) = ?`, [card_id, card_id])
                    .then((rows, fields) => {
                        const student_data = rows[0];
                        return res.send({ error: false, message: `Attendance recorded for ${card_id}`, student_data })
                    })
            }
        })
        .catch((error) => {
            res
                .status(500)
                .send({ error: true, message: "internal error, please retry" })
        })
    // next();
}

module.exports = { mobile_endpoint, hardware_endpoint }