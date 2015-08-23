<stockmarket-button>
  <h3>{opts.title}</h3>
  <button type="button" class="btn btn-success" onclick="{ loadStocks }">{opts.title}</button>

  <script type='text/es6'>

    this.loadStocks = (e) => {
      opts.stockMarketService.fetchJson();
    };
  </script>
</stockmarket-button>
