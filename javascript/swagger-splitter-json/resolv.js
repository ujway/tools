//resolv.js
let JsonRefs = require('json-refs');
let root = require('./index.json');

JsonRefs.resolveRefs(root, {filter: ['relative', 'remote']})
    .then(function (res) {
        console.log(JSON.stringify(res.resolved));
    }, function (err) {
        console.log(err.stack);
    });