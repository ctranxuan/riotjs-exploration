'use strict';

class StockMarketService {
  constructor(bus) {
    this.bus = bus;
    this.url = "http://cors.io/?u=http://demo-streamdataio.rhcloud.com/stockmarket/prices";
  }

  fetchJson() {
    var self = this;
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onload = function() {
      var status = xmlhttp.status;
      if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        var stocks = JSON.parse(xmlhttp.responseText);
        self.bus.trigger('newStocksEvent', stocks);

      } else {
        console.error(xmlhttp.status);
        self.bus.trigger('errorStocksEvent', xmlhttp.status);

      }
    }

    xmlhttp.open("GET", self.url, true);
    xmlhttp.send();
  }
}
