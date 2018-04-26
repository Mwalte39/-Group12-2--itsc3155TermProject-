// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs

var ready = false;

$(document).on("turbolinks:load", () => {

    var $graph = $("#graph");
    var $graphtitles = $("#graphtitles");
    var $option = $(".option");

    var valbar1 = $("#bar1").data("bar1num");
    var valbar2 = $("#bar2").data("bar2num");
    var valbar3 = $("#bar3").data("bar3num");
    var valbar4 = $("#bar4").data("bar4num");

    var total = valbar1 + valbar2 + valbar3 + valbar4;
    var relative_height = 490 / total;

    var shown = false;

    $("#bar1").css("height", relative_height * valbar1);
    $("#bar2").css("height", relative_height * valbar2);
    $("#bar3").css("height", relative_height * valbar3);
    $("#bar4").css("height", relative_height * valbar4);
    
    $option.hide();
    $graph.add($graphtitles).hide();
    
    $option.css("display", "flex");
    
    $option.each(function(index) {
        $(this).delay(index * 200).fadeIn(400);
    });


    $("#graphtoggle").on("click", () => {
        if (shown == true) {
            $graph.add($graphtitles).stop(true, true).fadeOut(100, () => {
                $option.each(function(index) {
                    $(this).delay(index * 200).fadeIn(400);
                });
            });
            shown = false;
        }
        else {
            $option.stop(true, true).fadeOut(100, () => {
                $graph.add($graphtitles).fadeIn(400);
            });
            shown = true;
        }
    });
});
