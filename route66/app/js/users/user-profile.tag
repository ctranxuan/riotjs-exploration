<user-profile>
  <h1>Profile of { opts.user.name }</h1>
  <ul>
    <li>age: { opts.user.profile.age }</li>
    <li>job: { opts.user.profile.job }</li>
    <li>country: { opts.user.profile.country }</li>
  </ul>

  <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent"
           onclick={ goBack }>
    Back to Users
  </button>

  <script type="text/es6">
    this.goBack = (e) => {
      riot.route('users');
    }
  </script>
</user-profile>
