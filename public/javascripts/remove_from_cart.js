$(document).ready(function(){
  $('.delete_from_cart').click(function(e) {
    e.preventDefault();
    $(this).parent().remove();
  });
});
