// $ can also be written as jQuery in the following code
if ($) {
  $(document).ready(
  function() {
    $('p').addClass('tmpFrameworkLoaded');
    $('p').text('jQuery successfully loaded and running!');
  } );
}