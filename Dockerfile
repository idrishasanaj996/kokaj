FROM node:22-alpine
EXPOSE 3000
CMD node -e "require('http').createServer((req,res)=>{res.writeHead(200,{'Content-Type':'text/plain'});res.end('Hello from Cranl :3000')}).listen(3000,'0.0.0.0',()=>console.log('Server ready on port 3000'))"
