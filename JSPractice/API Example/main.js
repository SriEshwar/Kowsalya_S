document.addEventListener("readystatechange",(event)=>{
    if(event.target.readyState==="complete"){
        console.log("complete");
        initializeApp();
    }
})
const initializeApp=()=>{
    const employeeDetails={
        name:"Kowsalya S",
        languagesKnown:["Java","C","Javascript"],
        role:function(){
            console.log("Software Developer");
        }
    };
    /* window.sessionStorage.setItem("mySession",JSON.stringify(employeeDetails)); */

    localStorage.setItem("mySession",JSON.stringify(employeeDetails));

    const key=localStorage;
    console.log(key);
    const mySessionData=JSON.parse(sessionStorage.getItem("mySession"));
    console.log(mySessionData);
}