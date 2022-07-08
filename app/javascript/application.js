// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "popper"
import "bootstrap"

import "@hotwired/turbo-rails"
import "controllers"

const option = {
    animation : true,
    autohide : true,
    delay : 5000,
}
var toastElList = [].slice.call(document.querySelectorAll('.toast'))
var toastList = toastElList.map(function (toastEl) {
  return new bootstrap.Toast(toastEl, option)
})

toastList.forEach(toast => {
  toast.show();
});