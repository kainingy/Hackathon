          
$(document).ready(function() {


	$('a[href^="#"]').on('click', function(event) {
	    var target = $( $(this).attr('href') );
	    if( target.length ) {
	        event.preventDefault();
	        $('html, body').animate({scrollTop: target.offset().top}, 1000);
	    }
	});

    $(window).load(function() {
        $('#slider').nivoSlider({
            directionNavHide: false,
            captionOpacity: 1,
            prevText: '<',
            nextText: '>'
        });
    });
});

// Load the Visualization API and the piechart package.
google.load('visualization', '1.0', {'packages':['corechart']});

// Set a callback to run when the Google Visualization API is loaded.
google.setOnLoadCallback(drawChart);

// Callback that creates and populates a data table,
// instantiates the pie chart, passes in the data and
// draws it.
function drawChart() {

	// Create the data table.
	var data = new google.visualization.DataTable();
	data.addColumn('string', 'Topping');
	data.addColumn('number', 'Slices');
	data.addRows([
	  ['Poor', Math.random()*100],
	  ['Below Average', Math.random() * 100],
	  ['Average', Math.random() * 100],
	  ['Above Average', Math.random() * 100],
	  ['Excellent', Math.random() * 100]
	]);

	// Set chart options
	var options = {'title':'Rating',
	               'width':400,
	               'height':300};

	// Instantiate and draw our chart, passing in some options.
	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	chart.draw(data, options);

	var data = new google.visualization.DataTable();
	data.addColumn('string', 'Topping');
	data.addColumn('number', 'Slices');
	data.addRows([
	  ['Poor', Math.random()*100],
	  ['Below Average', Math.random() * 100],
	  ['Average', Math.random() * 100],
	  ['Above Average', Math.random() * 100],
	  ['Excellent', Math.random() * 100]
	]);

	var chart1 = new google.visualization.PieChart(document.getElementById('chart_div1'));
	chart1.draw(data, options);

	var data = new google.visualization.DataTable();
	data.addColumn('string', 'Topping');
	data.addColumn('number', 'Slices');
	data.addRows([
	  ['Poor', Math.random()*100],
	  ['Below Average', Math.random() * 100],
	  ['Average', Math.random() * 100],
	  ['Above Average', Math.random() * 100],
	  ['Excellent', Math.random() * 100]
	]);


	var chart2 = new google.visualization.PieChart(document.getElementById('chart_div2'));
	chart2.draw(data, options);

	var data = new google.visualization.DataTable();
	data.addColumn('string', 'Topping');
	data.addColumn('number', 'Slices');
	data.addRows([
	  ['Poor', Math.random()*100],
	  ['Below Average', Math.random() * 100],
	  ['Average', Math.random() * 100],
	  ['Above Average', Math.random() * 100],
	  ['Excellent', Math.random() * 100]
	]);

	var chart3 = new google.visualization.PieChart(document.getElementById('chart_div3'));
	chart3.draw(data, options);


}

