// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
function showAllProducts(supplier_id)
{
  var supplier_id = supplier_id
  var inactive_check = $("#js-inactive-check").prop("checked");
  $.ajax({
    url: "/suppliers/"+supplier_id,
    type: "Get",
    dataType: "script",
    data:{id: supplier_id, inactive_check: inactive_check }
  });
}
