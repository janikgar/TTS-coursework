// $('#circle').click(function() {
// 	$('p').html("We've changed the text!");
// 	$('img').attr('src', 'https://duckduckgo.com/assets/logo_homepage_small.normal.v107.svg');
// });
// $('div').click(function(){
// 	$(this).css('background-color', '#0000cc');
// });
$(function(){
	$('.draggable').draggable();
});
$(function(){
	$('.resizable').resizable();
})
$(function(){
	$('.sortable').sortable();
	$('.sortable').disableSelection();
})
// $('div').hover(function(){
// 	// $(this).css('width', '400px');//.css('height', '400px');
// 	$(this).slideToggle();
// });