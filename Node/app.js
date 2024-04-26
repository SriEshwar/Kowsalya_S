/*const amount=12

if(amount<10){
    console.log("Small number");
}
else{
    console.log("Greater number");
}
*/

const { log } = require('console');
const os=require('os');

const user=os.userInfo();

console.log(user);

console.log(`The System uptime is ${os.uptime()} seconds`);