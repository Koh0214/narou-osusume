$(document).on('turbolinks:load',function(){

  $(".like-button").on("click", function(){
    var like_number = parseInt($(this).find(".comment-like-number").text());
    // ボタン押した時にいいね数を+1する
    $(this).find(".comment-like-number").text(like_number + 1);

    //ハートを中抜きから中ぬりに変えて赤くする
    $(this).removeClass("fa-heart-o").addClass("fa-heart");
    $(this).css({"color": "red"});

    //押した時になぜかハートアイコンと数字の間が詰まるので、その分スペースを開ける
    $(this).find(".comment-like-number").css({"padding-left": "5px"});

    //submitした後にdisabledに変わる
    //連打防止。最初から変えてしまうとsubmitができなくていいねレコードが作られない
    setTimeout($.proxy(function(){
      $("なんでも良い").load('なんでも良い', {value: $(this).parent().find("button").prop("disabled", "true")});
    }, this), 500);
  })

})
