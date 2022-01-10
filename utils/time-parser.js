//get current unix time in milliseconds
let timestamp = Date.now();

//get current unix time stamp
console.log(timestamp)

//one week = 604800000 ms
timestamp += 604800000;

//parse time to human readable date
const now = new Date(timestamp)

/*
* store local time string
* 1 week = 604800 seconds
* test conver unix timestamp to date in js 
* if now + 1 week, mark for this week, els calculate the week and exec it
*/


// let unix time = 1641821607030

console.log(now)