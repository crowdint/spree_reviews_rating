$('.cancel-review').click(function (event) {
	event.preventDefault();
	$('.button-review').show();
	$(".ratings").show();
	$('#new_review').html('');
});

$('.button-submit').click(function (event) {
	event.preventDefault();
	$.ajax({
		type: 'POST',
		url: $("#new_review").action,
		data: ({authenticity_token: jQuery('meta[name="csrf-token"]').attr('content'), 'review[]': [$("#new_review").serializeArray()]}),
		beforeSend: function(r){ $('#new_review').html('<p style="padding: 20px">Loading <img src="/assets/ratyloader.gif"/></p>');},
		success: function(r){ $('#new_review').html(r);}
	});
});