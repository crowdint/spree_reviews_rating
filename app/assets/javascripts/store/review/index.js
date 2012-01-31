$(document).ready(function(){

  $('.button-review').click(function (event) {
    event.preventDefault();
    $(this).hide();
	$(".ratings").hide();
    $.ajax({
		type: 'GET',
		url: this.href,
		data: ({authenticity_token: jQuery('meta[name="csrf-token"]').attr('content')}),
		beforeSend: function(r){ $('#new_review').html('<p style="padding: 20px">Loading <img src="/assets/ratyloader.gif"/></p>');},
		success: function(r){ $('#new_review').html(r);} });
  });

});