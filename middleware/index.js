const _ = require('lodash')
const jwt = require("jsonwebtoken")
const meta_data = require("./../config/server.config")


module.exports = {
    //parse admin data and validate
    validate_admin_login(req, res, next) {
        const { username, password } = req.body
        //username not provided 
        if (!username) {
            res.status(400).send({ message: _.capitalize("username may not be empty") })
        }

        if (!password) {
            res.status(400).send({ message: _.capitalize("passsword may not be empty") })

        }
        next()
    },

    //validate hardware login
    validate_hardware_login() {
        const { card_id } = req.body;
        if (!card_id) {
            res.send({ message: _.capitalize("unauthorized! please provide a valid id") })

        }
        next()
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