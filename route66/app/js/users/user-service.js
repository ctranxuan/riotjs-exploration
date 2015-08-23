class UserService {
  constructor() {
    this.users = [
      { id: 1,
        name: "Bob",
        gender: "male",
        description: "Hello, I am Bob. A nice guy!",
        hobbies: ['knitting', 'cooking', 'Tai Chi'],
        profile: {
          age: 32,
          job: "Builder",
          country: "Scotland"
        }
      },
      { id: 2,
        name: "Alice",
        gender: "female",
        description: "This is Alice, a clever girl...",
        hobbies: ['painting', 'trekking', 'cooking'],
        profile: {
           age: 30,
           job: "Software Engineer",
           country: "France"
        }
      }
    ];
  }

  fetchUsers() {
    return this.users.map(u => {
      return { id: u.id, name: u.name, gender: u.gender, description: u.description };
    });
  }

  fetchUserNameAndHobbies(id) {
    if (id == 1 || id == 2) {
      var user = this.users[id - 1];
      return { name: user.name, hobbies: user.hobbies };

    } else {
      return [];

    }
  }

  fetchUserNameAndProfile(id) {
    if (id == 1 || id == 2) {
      var user = this.users[id - 1];
      return { name: user.name, profile: user.profile };

    } else {
      return {};

    }
  }
}
