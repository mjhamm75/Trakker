// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery.content-panel-switcher
//= require_tree .

$(document).ready(function(){
  // $('tab-content').on('click', 'table tr td:not(:last-child)', function(){
  $('form table').on('click', 'tr td:not(:last-child)', function(){
    row = $(this).parent();
    console.log(this);
    name = row.data('name');
    controller = row.parents('table').data('controller');
    console.log(name);
    console.log(controller);
    if(row.children().eq(2).find("img:visible").length > 0){
      row.children().eq(2).find("img").hide('fast');
      row.find('input').val("");
    } else {
      if(row.children().eq(2).find("img").length > 0){
        row.children().eq(2).find("img").show('fast');
      } else {
        row.children().eq(2).replaceWith('<td><img alt=\"Checkmark\" src=\"/assets/checkmark.png\"></td>').hide().show('slow');
      }
    d = $.datepicker.formatDate('yy-M-dd', new Date());
    row.find('input').val(d);
    }
    $.ajax("advancements/" + advancementId, {
      type: 'GET',
      datatype: 'json',
      data: {
        req: name, con: controller
      },
      beforeSend: function(xhr) {
        xhr.setRequestHeader('Accept', 'application/json');
      },
      success: function(data){},
      error: function(jqXHR, textStatus, errorThrown) {},
      complete: function() {
      return $(this);
      }
    });
  });

  $('.datepicker').datepicker({
    showOn: "both",
    buttonImage: "/assets/calendar.png",
    buttonImageOnly: true,
    dateFormat: 'yy-M-dd',
    onSelect: function(dateText, inst) {
      console.log(dateText);
      row = $(this);
      name = row.parent().parent().data('name');
      controller = row.parents('table').data('controller');
      $.ajax("advancements/" + advancementId + "/updateDate", {
        type: 'POST',
        datatype: 'json',
        data: {
          req: name, con: controller, date: dateText
        },

        beforeSend: function(xhr) {
          xhr.setRequestHeader('Accept', 'application/json');
        },
        success: function(data){
          row.parent().parent().children().eq(2).replaceWith('<td><img alt=\"Checkmark\" src=\"/assets/checkmark.png\"></td>').hide().show('slow');
        },
        error: function(jqXHR, textStatus, errorThrown) {},
        complete: function() {
          return $(this);
        }
      });
    }
  });

  jcps.fader(300, '#switcher-panel');
});