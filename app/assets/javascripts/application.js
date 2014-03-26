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
//= require s3_direct_upload
//= require_tree .

jQuery(function() {
  var s3_uploader = $("#s3-uploader");
  var uploader = s3_uploader.S3Uploader({
    progress_bar_target: $(".progress_bar"),
  });

  s3_uploader.bind("s3_uploads_start", function(e, content) {
    $("#new_photo input[type=submit]").hide();
  });

  s3_uploader.bind("s3_upload_complete", function(e, content) {
    $("#new_photo input[id=photo_original_image_url]").val(content.url);
    $("#new_photo input[type=submit]").show();
  });
});
