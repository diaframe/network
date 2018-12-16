/*jshint esversion: 6 */
const http = require('http');
const fs = require('fs');
const urlLib = require('url');

var server = http.createServer(function(req, res) {
  var file_name = '.' + urlLib.parse(req.url, true).pathname;

  fs.readFile(file_name, function(err, data) {
    if (err) {
      res.write('404');
      console.log(file_name);
    } else {
      res.write(data);
      console.log(file_name);
    }
    res.end();
  });
});

console.log('start server');
server.listen(2233);