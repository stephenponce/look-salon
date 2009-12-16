// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var currTime = new Date();

//navigation effects
function animate(){
  updatedTime = new Date();
  
  if (currTime.getMinutes() == updatedTime.getMinutes() ){
	var image=$('image_wrapper');
	var main = $('content_wrapper');
	var content= $('content');
	var top_left=$('top_left');
	var top_right=$('top_right');

	new Effect.Appear(main, {duration:0.5});
	new Effect.Appear(top_left,  {duration:0.5, delay:0.35} );
	new Effect.Appear(content,  {duration:0.5, delay:0.0} );
	new Effect.Appear(image,  {duration:0.7});


/*	new Effect.Parallel([
		new Effect.Grow(main, {sync: true}, {direction: 'bottom', duration:0.5} ),
		new Effect.Appear(content, {sync: true}, {duration:1.0, delay:0.0} )
	]);
*/

	return false;
  }
  else
	return false;


}


/* implementation of scrolling div */
function scrollingDiv(divID){
	
}

function randomize_direction(){
	/* Code to randomly send a direction: top-left, left, right, top-right, bottom */
}
