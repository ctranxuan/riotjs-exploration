class UserAsyncService {

  constructor() {
    this.userService = new UserService();
  }

  makeAsync(value) {
    var self = this;
    return new Promise(function(resolve, reject) {
      setTimeout(function() {
        resolve(value);
      }, 3000);
    });
  }

  fetchUsers() {
    return this.makeAsync(this.userService.fetchUsers());
  }

  fetchUserNameAndHobbies(id) {
    return this.makeAsync(this.userService.fetchUserNameAndHobbies(id));
  }

  fetchUserNameAndProfile(id) {
    return this.makeAsync(this.userService.fetchUserNameAndProfile(id));
  }
}
