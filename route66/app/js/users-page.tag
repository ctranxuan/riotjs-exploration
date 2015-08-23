<users-page>
  <h1>Users</h1>
  <div class="mdl-grid">
    <div class="mdl-cell mdl-cell--4-col" each={ users } >
      <user user={ this }></user>
    </div>
  </div>
  
  <script type="text/es6">
      this.users = opts.userService.fetchUsers();
  </script>
</users-page>
