/* let myBoolean=alert("Hi This is Kowsalya")
console.log(myBoolean) */


/* let myBoolean=confirm("Hi This is Kowsalya")
console.log(myBoolean) */

let myVariable=prompt("Enter Your Name")
if(myVariable){
    console.log(myVariable ?? "You didn't Enter your name");
}
else{
    console.log( "You didn't Enter your name");
}
console.log(myVariable.trim().length)