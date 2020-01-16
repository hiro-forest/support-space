$(function(){
  function buildHTML(gift){
    let = img = gift.image ? `<img src = ${gift.image}>` : "";


  }
    $('#new_gift').on('submit', function(e){
      e.preventDefault();
      let formData = new FormData(this);
      let url = $(this).attr('action')
      $.ajax({
        url: url,
        type: "POST",
        data: formData,
        dataType: 'json',
        processData: false,
        contentType: false
      })
      .done(function(data){
        let html = buildHTML(data);
        $('.gifts').append(html);
        $('.gifts').animate({scrollTop: $('.gifts')[0].scrollHeight}, 'fast'); 
        $('form')[0].reset();
        $('.gifts__form__box__submit').prop('disabled',false)
      })
      .fail(function(){
        alert('error');
      })
    });
})


