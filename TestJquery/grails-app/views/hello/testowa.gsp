<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Testowa strona</title>
<g:javascript library='jquery' />
<!-- 
<script src="http://code.highcharts.com/highcharts.js"></script>
 -->
 <g:javascript src="highcharts.js" />
<script>
  $( document ).ready(function() {
	  $( "p" ).click(function( event ) {		  
	        alert( "Thanks for visiting!" );	 
	    });
	    //wykres
	 
	  $("#container").highcharts({
		    chart: {
		        type: 'bar'
		    },
		    title: {
		        text: 'Fruit Consumption'
		    },
		    xAxis: {
		        categories: ['Apples', 'Bananas', 'Oranges']
		    },
		    yAxis: {
		        title: {
		            text: 'Fruit eaten'
		        }
		    },
		    series: [{
		        name: 'Jane',
		        data: [9, 0, 4]
		    }, {
		        name: 'John',
		        data: [5, 7, 3]
		    }
				name: 'Jarek',
				data: [3,2,1]
		    ]
		 });
		 		
	});
	
</script>
</head>
<body>
  <div class="body">
  		<p>Testowa strona</p>
  		
  </div>
   <div id="container" style="width:500px; height:400px;"></div>
  
</body>
</html>