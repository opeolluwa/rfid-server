const email_validator = require("email-validator");
const validUrl = require('valid-url');
const _ = require('lodash');
const jwt = require("../utils/jwt");


//middleware for handling user authentication :; signup, login and search query
module.exports = {
    //verify registration data
    validate_auth_register: (req, res, next) => {
        //fetch data from pay load
        const { email, firstname, lastname, password } = req.body

        //!use_email
        if (!email_validator.validate(email)) {
            return res.status(400).send({ message: _.capitalize("please provide a valid mail") })
        }

        //!user_first_name
        if (!firstname) {
            return res.status(400).send({ message: _.capitalize("please provide first name") })
        }

        //!user_last_name

        if (!lastname) {
            return res.status(400).send({ message: _.capitalize("please provide last name") })
        }

        //!password

        if (!password || password.length < 8) {
            return res.status(400).send({ message: _.capitalize("please enter a password of minimum of  8 characters") })
        }

        //proceed with othe transaction
        next();
    },

    //verify login details
    validate_auth_login: (req, res, next) => {
        //fetch data from pay load
        const { email, password } = req.body
        //!use_email
        if ((!email) || (!email_validator.validate(email))) { return res.status(400).send({ message: "invalid mail or password" }) }
        if (!password) { return res.status(400).send({ message: _.capitalize("invalid email or password") }) }
        next();
    },

    //checks if user add token to header and validate token
    validate_auth_token: (req, res, next) => {

        try {
            //get payload headers
            const auth_headers = req.headers["authorization"] || req.headers["Authorization"];
            //check if not undefined
            if (typeof auth_headers !== 'undefined') {
                const jwt = auth_headers.split(" ")[1]
                //pass it to next controller or middleware
                req.token = { jwt };
                // return res.send(jwt)
                next();
            }
        } catch (error) {
            //if no auth headers is found send forbidden
            res.status(403).send({ message: _.capitalize("forbidden!") })

        }
    },
    //verify token
    decode_jwt: (req, res, next) => {

        try {
            //get token from validate_auth_oken middleware
            const { jwt: token } = req.token;

            //send un athorized error if token not found
            if (!jwt.verify(token)) {
                res.status(403).send({ message: _.capitalize("forbidden!") })
            }
            //else fire on
            const user = jwt.verify(token);
            req.user = user
            next();
        } catch (error) {
            res.status(403).send({ message: _.capitalize("forbidden!") })
        }


    }
}