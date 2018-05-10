const http = require('http-server');
const PORT = 8080;

const server = http.createServer();

// serves public/ by default
server.listen({
  port: PORT
})
