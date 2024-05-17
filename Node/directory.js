const fs=require('fs')
if(!fs.existsSync('./new')){
    fs.mkdir('./new' ,(err)=>{
       if (err) throw err
       console.log('Directory Created');
})
}else{
    console.log('Already Exixts');
} 

/* if(fs.existsSync('./new')){
    fs.rmdir('./new' ,(err)=>{
       if (err) throw err
       console.log('Directory Removed');
})
}else{
    console.log('Already Exixts');
} */

process.on('uncaughtException',err =>{
    console.error(`There was an uncaught error: ${err}`)
    process.exit(1)
})