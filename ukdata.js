var couchapp = require('couchapp');
ddoc = {
    _id: '_design/ukdata'
  , views: {}
}
module.exports = ddoc;


ddoc.views.by_tag = {
  map: function(doc) {
    for (var k in doc.tags)
      emit(doc.tags[k], null);
  },
  reduce: "_count"
}


ddoc.views.names = {
  map: function(doc) {
    var names = doc.name.toLowerCase().split(/_/);
    for (var i = 0, len = names.length; i < len; i++) {
        var word = names[i];
        if (word != '') {
            emit([word, doc.names], 1);
        }
    }
  },
  reduce: "_count"
}


// couchapp push ukdata.js http://sigma.inf.ug.edu.pl:14018/ukdata
