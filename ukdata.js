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


