<user-profile>
  <h1>Profile of { user.name }</h1>

  <ul>
    <li>age: { user.profile.age }</li>
    <li>job: { user.profile.job }</li>
    <li>country: { user.profile.country }</li>
  </ul>

  <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent"
           onclick={ goBack }>
    Back to Users
  </button>

  <script type="text/es6">
    this.user = opts.userService.fetchUserNameAndProfile(opts.userId);

    this.goBack = (e) => {
      riot.route('users');
    }
  </script>
</user-profile>
