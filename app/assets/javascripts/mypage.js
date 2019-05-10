// お知らせタブのJS

$(document).on('turbolinks:load', function(){
  $('.upper-tab-content > ul').hide();

  $('.upper-tab a').click(function () {
    $('.upper-tab-content > ul').hide().filter(this.hash).fadeIn();

      $('.upper-tab a').removeClass('active');
      $(this).addClass('active');

      return false;
  }).filter(':eq(0)').click();
});


// 取引タブのJS
$(document).on('turbolinks:load', function(){
  $('.lower-tab-content > ul').hide();

  $('.lower-tab a').click(function () {
    $('.lower-tab-content > ul').hide().filter(this.hash).fadeIn();

      $('.lower-tab a').removeClass('active');
      $(this).addClass('active');

      return false;
  }).filter(':eq(0)').click();
});
