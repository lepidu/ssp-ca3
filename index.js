//Modules allows  and provide the functionalities in the Web Application
const   http = require('http'),
        path = require('path'),
        express = require('express'),
        fs = require ('fs'),
        xmlParse = require('xslt-processor').xmlParse,
        xsltProcess = require('xslt-processor').xsltProcess,
        xml2js = require('xml2js');

const   router = express(),
        server = http.createServer(router);

        router.get('/', function(req, res)
        {

        });

server.listen(process.env.PORT || 3000, process.env.IP || "0.0.0.0", function()
{
    const addr = server.address();
    console.log("Server listening at ", addr.address + ":" + addr.port)
});