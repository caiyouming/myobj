(function(){
  var swiper = new Swiper({
    el: '.swiper-container',
    effect : 'cube',
    cubeEffect: {
      slideShadows: true,
      shadow: true,
      shadowOffset: 100,
      shadowScale: 0.7
    },
    scrollbar: {
      el: '.swiper-scrollbar',
    },
    mousewheel: {
      enabled: true,
    },
    keyboard: {
      enabled: true,
    },
    pagination: {
      el: '.swiper-pagination',
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  })
})();