<script type="text/javascript">
  function DistanceParser(listing) {
        this.doParse = function (data) {
          if (data.train.indexOf('0.0 km') == -1) {
              //$(listing).find('div.tsds').html(data.train + '<br />' + data.cbd);
              $(listing).find('div.tsds').html(data.train);
          }
        };
  }

  $('div#searchResultsTbl div.resultBody').each(function(index) {
     address = $(this).find('div.vcard h2 a').html();
     if (address.indexOf('address available on request') == -1) {
       $.getJSON('http://localhost:3000/ts.json?address=' + address + '&callback=?', new DistanceParser(this).doParse);
     }
  });


</script>
