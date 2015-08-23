var currentTag = null;
var userService = new UserService();

function mount(tag, options) {
  currentTag && currentTag.unmount(true);
  currentTag = riot.mount('#content', tag, options)[0];
}

var routes = {
  home: function(id, action) {
      mount('home-page')
  },
  about: function(id, action) {
    mount('about-page')
  },
  users: function(id, item) {
    if (id) {
      if (item == 'profile') {
        // don't pass id as key: it's already reserved by the id of <div id="content">
        mount('user-profile', { userId: id, userService: userService });

      } else if (item == 'hobbies') {
        mount('user-hobbies', { userId: id, userService: userService });

      }
    } else {
      mount('users-page', {userService: userService});

    }

  }
}

function handler(collection, id, action) {
  var fn = routes[collection || 'home'];
  fn ? fn(id, action) : mount('not-found-page');
}

riot.route(handler);
