<stockmarket-barchart>
  <h3>{opts.title}</h3>
  <svg class="chart" id="{chartId}"></svg>

  <script type='text/es6'>
  this.chartId = opts.chart_id || 'chart-1';

  this.on('mount', function() {
    var data = opts.stocks.map(s => {
      return { 'title': s.title, 'price': s.price };
    });

    createChart(data, this.chartId, opts.height, opts.width);
  });


  function createChart(data, id = 'chart-1', aHeight = 500, aWidth = 960) {
    var margin = {top: 20, right: 30, bottom: 30, left: 40},
    width = aWidth - margin.left - margin.right,
    height = aHeight - margin.top - margin.bottom;

    var x = d3.scale.ordinal()
        .rangeRoundBands([0, width], .1);

    var y = d3.scale.linear()
        .range([height, 0]);

    var xAxis = d3.svg.axis()
        .scale(x)
        .orient("bottom");

    var yAxis = d3.svg.axis()
        .scale(y)
        .orient("left");

    var chart = d3.select("#" + id)
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
      .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    x.domain(data.map(function(d) { return d.title; }));
    y.domain([0, d3.max(data, function(d) { return d.price; })]);

    chart.append("g")
        .attr("class", "x axis")
        .attr("transform", "translate(0," + height + ")")
        .call(xAxis)
        ;

    chart.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .append("text")
          .attr("transform", "rotate(-90)")
          .attr("y", 6)
          .attr("dy", ".71em")
          .style("text-anchor", "end")
          .text("Price");

    chart.selectAll(".bar")
        .data(data)
      .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.title); })
        .attr("y", function(d) { return y(d.price); })
        .attr("height", function(d) { return height - y(d.price); })
        .attr("width", x.rangeBand());
  }
  </script>
</stockmarket-barchart>
