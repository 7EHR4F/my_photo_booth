//= require jquery
//= require jquery_ujs
//= require_tree .

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
