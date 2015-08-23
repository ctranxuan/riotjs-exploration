'use strict'

var userService = new UserService();

routes.users = function(id, item) {
  if (id) {
    if (item == 'profile') {
      // don't pass id as key: it's already reserved by the id of <div id="content">
      var userProfile = userService.fetchUserNameAndProfile(id);
      mount('user-profile', { user: userProfile });

    } else if (item == 'hobbies') {
      var userHobbies = userService.fetchUserNameAndHobbies(id);
      mount('user-hobbies', { user: userHobbies });

    }
  } else {
      var users = userService.fetchUsers();
      mount('users-page', {users: users});

  }
}
