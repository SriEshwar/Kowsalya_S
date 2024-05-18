/* const myObject={
    name:"Kowsalya"
} */

const employeeDetails={
    developer:true,
    id:22,
    salary:50000.00,
    languagesKnown:["C","Java","Html","NodeJs","javascript"],
    manager:{
        name:"John",
        id:1,
        role:"HR"
    },
    role:function(){
        //return "Software Developer";
        return `Manager of this employee is: ${this.manager.name}`
    }

};

const managerDetails=Object.create(employeeDetails)

console.log(managerDetails.manager.name);

managerDetails.role=function(){
    return "Project manager";
}
console.log(managerDetails.role());

console.log(employeeDetails.role());
console.log(employeeDetails.languagesKnown[2]);

console.log(Object.keys(employeeDetails));
console.log(Object.values(employeeDetails));


//JSON
const sendJson=JSON.stringify(employeeDetails);
console.log(sendJson);