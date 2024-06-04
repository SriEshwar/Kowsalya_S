document.addEventListener("readystatechange",(event)=>{
    if(event.target.readyState==="complete"){
        console.log("complete");
        initializeApp();
    }
})

const initializeApp=()=>{
    const view3=document.querySelector("#view3");
    const myForm=document.querySelector("#myForm");
    myForm.addEventListener("submit",(event)=>{
        event.preventDefault();
        console.log("submit event");

    })
};