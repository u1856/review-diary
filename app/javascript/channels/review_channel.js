import consumer from "./consumer"

if(location.pathname.match(/\/movies\/\d/)){
  consumer.subscriptions.create({
    channel: "ReviewChannel",
    movie_id: location.pathname.match(/\d+/)[0]
  }, {

  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `
        <div class="review">
          <p class="user-info">${data.user.name}： </p>
          <p>${data.review.title}</p>
          <p>${data.review.text}</p>
        </div>`
      const reviews = document.getElementById("reviews")
      comments.insertAdjacentHTML('beforeend', html)
      const commentForm = document.getElementById("review-form")
      commentForm.reset();
  }
});
}
