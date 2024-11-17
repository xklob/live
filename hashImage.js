const fs = require('fs');
const crypto = require('crypto');

const filePath = '/mnt/c/Users/Caleb'; // path to your image file

const fileBuffer = fs.readFileSync(filePath);
const hash = crypto.createHash('sha3-256').update(fileBuffer).digest('hex');

console.log(`Keccak256 hash: ${hash}`);
