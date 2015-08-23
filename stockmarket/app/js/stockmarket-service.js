class StockMarketService {

  constructor() {
  }

  static getJson(url) {
    return new Promise(function(resolve, reject) {
      var xmlhttp = new XMLHttpRequest();

      xmlhttp.onload = function() {
        var status = xmlhttp.status;
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            resolve(JSON.parse(xmlhttp.responseText));

        } else {
          reject(status);

        }
      }

      xmlhttp.open("GET", url, true);
      xmlhttp.send();
    });
  }
  
}
