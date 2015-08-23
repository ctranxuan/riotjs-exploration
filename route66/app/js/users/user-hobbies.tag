<user-hobbies>
  <h2>Hobbies of { opts.user.name } </h2>

  <ul>
    <li each={ hobby in opts.user.hobbies }>
      { hobby }
    </li>
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
</user-hobbies>
