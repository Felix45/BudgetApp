// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//import "@hotwired/turbo-rails"
import "controllers"

const btnToggle = document.querySelectorAll('.toggle-menu');

function closeMenu() {
  const menu = document.querySelector('.mobile-menu');
  menu.classList.toggle('menu-slide');
};

btnToggle.forEach((btn) => { btn.addEventListener('click', closeMenu); });
