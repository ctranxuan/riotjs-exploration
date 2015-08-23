<user-hobbies>
  <h2>Hobbies of { user.name } </h2>

  <ul>
    <li each={ hobby in user.hobbies } class={ completed: done }>
      { hobby }
    </li>
  </ul>

  <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent"
           onclick={ goBack }>
    Back to Users
  </button>

  <script type="text/es6">
    this.user = opts.userService.fetchUserNameAndHobbies(opts.userId);

    this.goBack = (e) => {
      riot.route('users');
    }
  </script>
</user-hobbies>
