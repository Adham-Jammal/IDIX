let tabs = document.querySelectorAll(".tabs li");
let tabsArray = Array.from(tabs);
let divs = document.querySelectorAll(".service-content > div");
let divsArray = Array.from(divs);

tabsArray.forEach((ele) => {
  ele.addEventListener("click", function (e) {
    tabsArray.forEach((ele) => {
      ele.classList.remove("active");
    });
    e.currentTarget.classList.add("active");
    divsArray.forEach((div) => {
      div.style.display = "none";
    });
    document.querySelector(e.currentTarget.dataset.cont).style.display = "block";
  });
});

$('#owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    dots: false,
    navText : ["<div class='hero-next-slide'>  التالي  <i class='fa fa-arrow-right'></i></div>","<i></i>"],
    nav: true,
    rtl: false,
    items: 1,
})

