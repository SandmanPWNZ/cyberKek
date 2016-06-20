// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
jQuery(document).ready(function() { //Initialize

  $(".stream-navbar li" ).click(function() {
    $(".stream-navbar li").removeClass('active')
    $(this).addClass('active');
  });
// STREAM NAV BAR
  openStream("our_stream")
  openNews("all")

});

function openStream(streamName) {
      $(this).parent('li').addClass('active')
      $("div.stream-tab").css({
        display: 'none'
      });
      document.getElementById(streamName).style.display = "block";

  };

function openNews(newsTopic) {
    $("div.news-tab").css({
      display: 'none'
    });
    document.getElementById(newsTopic).style.display = "block";
  }
// STREAM NAV TABS
