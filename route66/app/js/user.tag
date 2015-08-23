<user>
  <div class="demo-card-square mdl-card mdl-shadow--2dp">
    <div class="{ opts.user.gender === 'male' ? 'mdl-card__title-male': 'mdl-card__title-female' } mdl-card__title mdl-card--expand">
      <h2 class="mdl-card__title-text">{opts.user.name}</h2>
    </div>
    <div class="mdl-card__supporting-text">
      {opts.user.description}
    </div>
    <div class="mdl-card__actions mdl-card--border">
      <button class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="{ goToProfile }">
        View Profile
      </button>
      <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="{ goToHobbies }">
        View Hobbies
      </a>
    </div>
  </div>

  <script type="text/es6">
    this.goToProfile = (e) => {
      riot.route('users/' + opts.user.id + '/profile');
    }

    this.goToHobbies = (e) => {
      riot.route('users/' + opts.user.id + '/hobbies');
    }

  </script>
</user>
