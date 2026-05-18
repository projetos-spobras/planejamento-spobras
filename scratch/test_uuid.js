
const md5 = require('md5');

function generateUUID(str) {
  const hash = md5(str);
  return `${hash.slice(0, 8)}-${hash.slice(8, 12)}-${hash.slice(12, 16)}-${hash.slice(16, 20)}-${hash.slice(20, 32)}`;
}

console.log('UUID for ID 1109:', generateUUID('empreendimento-1109'));
console.log('UUID for ID 272:', generateUUID('empreendimento-272'));
