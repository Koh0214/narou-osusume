$(function(){
  // TODO わかりやすい名前をつけて関数化したい
  // TODO スマホ時にモーダル自動フォーカスを入れたい
  // 返信ボタン押したところのID番号を返信フォームに打ち込む
  $(".reply-button").on("click", function(){
    var id_number = $(this).parent().find(".row").find(".comment-id-number").text();
    var reply_number = ">> " + id_number + "\r\n";
    $(".reply-modal-text").val(reply_number);

    //一秒後に実行
    setTimeout(function(){
      $('.reply-modal-text').focus();
    },500);
  })

  // コメント自動フォーカス
  $(".comment-button").on("click", function(){
    //一秒後に実行
    setTimeout(function(){
      $('.modal-text').focus();
    },500);
  })

})
