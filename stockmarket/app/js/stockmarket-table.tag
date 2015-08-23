<stockmarket-table>
  <h3>{opts.title}</h3>
  <table class="table table-striped table-bordered table-hover table-condensed" style="width: 25%;">
    <thead>
      <tr>
        <th>Title</th>
        <th>Price</th>
      </tr>
    </thead>

    <tbody>
      <tr each={ stocks }>
        <td>{title}</td>
        <td>{price}</td>
      </tr>
    </tbody>
  </table>

  <script type="text/es6">
    var self = this;
    this.opts.bus.on('newStocksEvent', function(stocks) {
      self.stocks = stocks;
      self.update();
    });
  </script>
</stockmarket-table>
