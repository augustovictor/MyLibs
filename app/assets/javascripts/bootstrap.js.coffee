jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  $('#my_libs_folders').click ->
    $('.folders_container').slideToggle()
    $(this).toggleClass('box-shadow')