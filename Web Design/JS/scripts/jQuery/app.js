
$(function onReady() {
	var box = $("#box");
	var para = $("p");
	var i = 1;
	para.text(i);
	
	function toggleBox(i) {
		box.fadeToggle(2500, function() {
			i++;
			if(i <= 10) {
				para.text(i);
				toggleBox(i);
			};
		});
	};

toggleBox(i);

});
