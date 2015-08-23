<stockmarket-button>
  <h3>{opts.title}</h3>
  <button type="button" class="btn btn-success" onclick="{ loadStocks }">{opts.title}</button>

  <script type='text/es6'>

    this.loadStocks = (e) => {
      var self = this;
      StockMarketService.getJson(this.opts.url)
        .then(function(stocks) {
          self.opts.bus.trigger('newStocksEvent', stocks);

        }, function(error) {
          console.error(error);

        });
    };
  </script>
</stockmarket-button>
