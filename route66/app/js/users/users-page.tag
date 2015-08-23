<users-page>
  <h1>Users</h1>
  <div class="mdl-grid">
    <div class="mdl-cell mdl-cell--4-col" each={ opts.users } >
      <user-card user={ this }></user-card>
    </div>
  </div>
</users-page>
