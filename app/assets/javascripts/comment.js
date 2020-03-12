// $(function(){
//   function buildHTML(comment){
//     var html = `
//                   <div class="comment" data-message-id=${comment.id}>
//                     <div class="comment-user">
//                       <img class="comment-user__image" src=${comment.user_image}>
//                         <div class="comment-user__name">
//                           <a class="comment-user__name" href=/users/${comment.user_id}>${comment.user_name}</a>
//                             ：
//                         </div>
//                         <div class="comment-user__message">
//                           <p>${comment.text}</p>
//                         </div>
//                     </div>
//                     <div class="comment-edit">
//                       <a rel="nofollow" data-method="delete" href=/contents/${comment.content_id}/comments/${comment.id}>削除</a>
//                     </div>
//                   </div>
//                 `
//     return html;
//   }
//   $('#new_comment').on('submit', function(e){
//     e.preventDefault();
//     var formData = new FormData(this);
//     var url = $(this).attr('action');
//     $.ajax({
//       url: url,
//       type: "POST",
//       data: formData,
//       dataType: 'json',
//       processData: false,
//       contentType: false
//     })
//     .done(function(data){
//       var html = buildHTML(data);
//       $('.comment-list').append(html);
//       $('.comment-input').val('');
//       $('.comment-submit').prop('disabled', false);
//     })
//     .fail(function(){
//       alert('error');
//     })
//   })
// });