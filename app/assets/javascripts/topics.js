$(function(){
  $('#myModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
  })

  $('#myReplyModal').on('shown.bs.modal', function () {
    $('#myReplyInput').trigger('focus')
  })

  $('#comment-reply-button').click(function(){
    console.log('11111')
    alert("aaa")
    $('.reply-modal-text').val('>>')
  })

}
