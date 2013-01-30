/*global opacityAndShadow */
/*global MQ */

var queries = [
	{
		context: 'phone',
		match: function () {
			// enter phone view
		},
		unmatch: function () {
			// leave phone view
		}
	},
	{
		context: 'largedesktop',
		match: function () {
			// enter large desktop view
			opacityAndShadow();
		},
		unmatch: function () {
			// leave large desktop view
			opacityAndShadow();
		}
	}
];

// Go!
$(document).ready(function(){
  MQ.init(queries);  
});
