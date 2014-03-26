//= require active_admin/base
//= require s3_direct_upload

jQuery(function() {
  var s3_uploader = $("#s3-uploader");
  var uploader = s3_uploader.S3Uploader({
    progress_bar_target: $(".formtastic.photo"),
  });

  s3_uploader.bind("s3_uploads_start", function(e, content) {
    $(".formtastic.photo input[type=submit]").hide();
  });

  s3_uploader.bind("s3_upload_complete", function(e, content) {
    $(".formtastic.photo input[id=photo_original_image_url]").val(content.url);
    $(".formtastic.photo input[type=submit]").show();
  });
});
