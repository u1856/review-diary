document.addEventListener('DOMContentLoaded', function(){
  const postForm = document.getElementById('new_movie');
  const previewList = document.getElementById('previews');

  if (!postForm) return null;
    const fileField = document.querySelector('input[type="file"]');
    fileField.addEventListener('change', function(e){
      console.log(e.target.files[0]);
      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);
      const previewWrapper = document.createElement('div');
      previewWrapper.setAttribute('class', 'preview');
      const previewImage = document.createElement('img');
      previewImage.setAttribute('class', 'preview-image');
      previewImage.setAttribute('src', blob);

      previewWrapper.appendChild(previewImage);
      previewList.appendChild(previewWrapper);
      });
});