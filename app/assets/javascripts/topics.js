$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})

$('#myReplyModal').on('shown.bs.modal', function () {
  $('#myReplyInput').trigger('focus')
})
