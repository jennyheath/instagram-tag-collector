initialize = function () {
  $('.tag-form').submit(function () {
    var $inputs = $('.tag-form :input');
    var tag = $($inputs[1]).val();
    var endpoint = "https://api.instagram.com/v1/tags/" + tag + "/media/recent?access_token=1611681887.1677ed0.c0a5f8c390d841f8ba321acc9da073b0";
    var recentMedia = $.ajax({
      url: endpoint,
      success: function (response) {
        var posts = response.data;
        posts.forEach(function (post) {
          if (post.tags.indexOf(tag) !== -1) {
            // save photo with post.created_time
            // if created time is between start and end dates
          } else {
            post.comments.data.forEach(function (comment) {
              if (comment.text.indexOf("#" + tag) !== -1) {
                // save photo with comment.created_time
                // if created time is between start and end dates
              }
            });
          }
        });
      }
    });
  });
};
