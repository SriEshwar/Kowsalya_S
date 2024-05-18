const view1=document.getElementById("view1");
console.log(view1);

const view2=document.querySelector("#view2");
console.log(view2);

view2.style.display="flex";

const views=document.getElementsByClassName("view");
console.log(views);

const sameViews=document.querySelectorAll(".view");
console.log(sameViews);

const divs=view1.querySelectorAll("div");
console.log(divs);

const sameDivs=view1.getElementsByTagName("div");
console.log(sameDivs);

const eventDiv=view1.querySelectorAll("div:nth-of-type(2n)");
console.log(eventDiv);
eventDiv[4].style.backgroundColor="purple";

for(i=0;i<eventDiv.length;i++){
    eventDiv[i].style.backgroundColor="purple";
}

const navText=document.querySelector("nav h1");
console.log(navText);
navText.textContent="Hello World"

const navBar=document.querySelector("nav");
navBar.innerHTML="<h1>Kowsalya</h1><p>I am a software developer</p>"
console.log(navBar);