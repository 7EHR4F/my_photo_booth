//= require jquery
//= require jquery_ujs
//= require_tree .
<<<<<<< HEAD

$(document).ready(function() {
    var sourceSwap = function () {
    var $this = $(this);
    var newSource = $this.data('alt-src');
    $this.data('alt-src', $this.attr('src'));
    $this.attr('src', newSource);
    }

    var blink = function() {
    $('#container').fadeOut(30).fadeIn(30);
    }

    $('.swap').hover(sourceSwap);
    $('.blink').hover(blink, function() {});
});
=======
//= require fullcalendar_engine/application
>>>>>>> bf4e4a17fb2b3ecd14b8577101250cf53500e73c
