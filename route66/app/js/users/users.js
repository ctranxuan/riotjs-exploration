'use strict'

var userService = new UserAsyncService();

routes.users = function(id, item) {
  mount('loading');
  
  if (id) {
    if (item == 'profile') {
      // don't pass id as key: it's already reserved by the id of <div id="content">
      userService.fetchUserNameAndProfile(id)
        .then(function(userProfile) {
            mount('user-profile', { user: userProfile });
         });

    } else if (item == 'hobbies') {
      userService.fetchUserNameAndHobbies(id)
        .then(function(userHobbies) {
            mount('user-hobbies', { user: userHobbies });
        });

    }
  } else {
      userService.fetchUsers()
        .then(function(users) {
          mount('users-page', {users: users});
        });
  }
}
