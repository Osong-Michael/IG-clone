$(function() {
  // jquery loaded
  $("#post-comment").on("click", function() {
    $("#comment_commet").focus();
  });


  $(".post-like").on("click", function() {
    let postId = $(this).data("id");
    $.ajax({
      url: "/post/like/"+postId,
      method: "GET"
    }).done(function(response) {
      console.log(response);
    })
  })
});