/*console.log("Hello World")
//console.log(global)

const os=require('os')
const path=require('path')

console.log(os.type())
console.log(os.version())
console.log(os.homedir())

console.log(path.dirname(__filename))
console.log(path.basename(__filename))
console.log(path.extname(__filename))

console.log(path.parse(__filename))

//const math=require('./math')

const {add,subtract,multiply,division,modulo}=require('./math')
console.log(add(5,6));
console.log(subtract(5,6));
console.log(multiply(5,6));
console.log(division(5,6));
console.log(modulo(5,6));
*/

//import { readFile } from 'node:fs';
const fs=require('fs');
const path=require('path');
const fsPromises=require('fs').promises

const fileOperations = async()=>{
  try{
    const data=await fsPromises.readFile(path.join(__dirname,'files','start.txt'), 'utf8' ); 
    console.log(data);


    await fsPromises.writeFile(path.join(__dirname,'files','next.txt'),'I am a Software Developer', 'utf8')
    console.log('Write complete')

    await fsPromises.appendFile(path.join(__dirname,'files','next.txt'),'\n\n Good Programmer.', 'utf8')
    console.log('Append complete')

    //await fsPromises.rename(path.join(__dirname,'files','rename.txt'),path.join(__dirname,'files','next.txt'))
    //console.log('Rename complete')

    await fsPromises.unlink(path.join(__dirname,'files','start.txt'))

  }catch(err){
    console.error(err);
  }
}
fileOperations()

// fs.readFile(path.join(__dirname,'files','start.txt'), 'utf8', (err, data) => {
//   if (err) throw err;
//   console.log(data);
// }); 

// fs.writeFile(path.join(__dirname,'files','next.txt'),'I am a Software Developer', 'utf8', (err) => {
//   if (err) throw err;
//   console.log('Write complete')
//   fs.appendFile(path.join(__dirname,'files','next.txt'),'\n\n Good Programmer.', 'utf8', (err) => {
//     if (err) throw err;
//     console.log('Append complete')
//     fs.rename(path.join(__dirname,'files','next.txt'),path.join(__dirname,'files','rename.txt'), (err) => {
//       if (err) throw err;
//       console.log('Rename complete')
//   });
// });
// });

//exit on uncaught errors
process.on('uncaughtException',err =>{
    console.error(`There was an uncaught error: ${err}`)
    process.exit(1)
})