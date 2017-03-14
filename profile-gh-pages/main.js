function main() {
  $('.skillset').hide();
  $('.skillset').fadeIn(1000);
  $('.barhoriz').hide();
  $('.skill-btn').on('click', function() {
    $(this).next().slideToggle(400);
    $(this).toggleClass('active');
  });
}

$(document).ready(main);
