/* get the current time stamp
* get the stored timestamp 
* parse the week
* return a number representing the week
*/
function week_parser() {
    //get current unix time in milliseconds
    let current_timestamp = Date.now();

    //store a reference timestamp
    let reference_timestamp = 1641826829758 - 2433600000;
    //1636498800000
    // 1645086946282
    //week in milliseconds
    const week = 604800000;

    //compute the number of weeks form this week stored as one
    return Math.round((current_timestamp - reference_timestamp) / week) + 1
}


let now = week_parser();
console.log(now)

module.exports = { week_parser }
