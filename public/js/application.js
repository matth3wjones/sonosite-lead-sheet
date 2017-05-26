$(document).ready(function() {
  // $(".spreadsheet-row").on("click", function(){
  //
  //   var request = $.ajax({
  //     method: formMethod,
  //     url: formUrl,
  //     data: formData,
  //   })
  //
  //   request.done(function(response){
  //     $(".poem-list").prepend("<li class='poem-list-item'>"+response+"</li>");
  //     $form[0].reset();
  //   })
  //
  //   request.fail(function(error_response){
  //     alert("Creating the poem failed")
  //   })
  // })

  $(".spreadsheet-row").on("click", function(){
    document.location = $(this).find('a').attr("href");
  })

  $(".spreadsheet-row").not(':first').hover(
  function () {
    $(this).css("background","#109EC6");
  },
  function () {
    $(this).css("background","");
  }
);
});
