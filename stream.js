const fs=require('fs')
const path=require('path')

const readStream = fs.createReadStream(path.join(__dirname,'files','bigfile.txt'),{encoding:'utf8'})
const writeStream = fs.createWriteStream(path.join(__dirname,'files','new_bigfile.txt'))

/* readStream.on('data',(dataChunk)=>{
    writeStream.write(dataChunk)
}) */

readStream.pipe(writeStream);
