/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import 'bootstrap';

document.addEventListener("turbolinks:load", () => {
  listeners();
});

const listeners = () => {
  const allCollapsable = document.querySelectorAll('.collapsable');
  const allChecks = document.querySelectorAll('.check-form');

  const collapse = (event) => {
    const tgt = event.currentTarget;
    tgt.classList.toggle("active");
    const content = tgt.nextElementSibling;
    const icon = tgt.querySelector('i');
    if (content.style.maxHeight){
      if (icon != null && icon.classList == "fas fa-minus") {
        icon.classList.remove("fa-minus");
        icon.classList.add("fa-plus");
      }
      content.style.maxHeight = null;
    } else {
      if (icon != null && icon.classList == "fas fa-plus") {
        icon.classList.remove("fa-plus");
        icon.classList.add("fa-minus");
      }
      content.style.maxHeight = content.scrollHeight + "px";
    }
  }

  allCollapsable.forEach ((collapsable) => {
    collapsable.addEventListener('click', collapse);
  });

  allChecks.forEach ((oneCheck) => {
    oneCheck.addEventListener('click', submit);
  });

}
