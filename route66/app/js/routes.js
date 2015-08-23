var currentTag = null;
var routes = {};

function mount(tag, options) {
  currentTag && currentTag.unmount(true);
  currentTag = riot.mount('#content', tag, options)[0];
}

function handler(collection, id, action) {
  var fn = routes[collection || 'home'];
  fn ? fn(id, action) : mount('not-found-page');
}

riot.route(handler);
