/* function sum(number1,number2){
    return number1+number2
}

console.log(sum(5,2))
 */

let email=prompt("Enter Email")

console.log(getUsernameFromEmail(email));

function getUsernameFromEmail(email){
    return (email.slice(0,email.indexOf("@")))
}
