// Wait for the DOM to be fully loaded before running the JavaScript
document.addEventListener('DOMContentLoaded', function() {
  const banner = document.getElementById("banner");
  const prevBtn = document.getElementById("prevBtn");
  const nextBtn = document.getElementById("nextBtn");
  const bannerItems = document.querySelectorAll(".banner-item");

  let currentIndex = 0;
  const bannerWidth = banner.clientWidth;
  const totalItems = bannerItems.length;

  function goToSlide(index) {
      if (index < 0) {
          index = totalItems - 1;
      } else if (index >= totalItems) {
          index = 0;
      }

      banner.style.transform = `translateX(-${index * bannerWidth}px)`;
      currentIndex = index;
  }

  function nextSlide() {
      goToSlide(currentIndex + 1);
  }

  function prevSlide() {
      goToSlide(currentIndex - 1);
  }

  nextBtn.addEventListener("click", nextSlide);
  prevBtn.addEventListener("click", prevSlide);

  // Auto-scrolling
  const autoScrollInterval = 3000; // Adjust the interval as needed

  function autoScroll() {
      nextSlide();
  }

  let autoScrollTimer = setInterval(autoScroll, autoScrollInterval);

  banner.addEventListener("mouseenter", () => {
      clearInterval(autoScrollTimer);
  });

  banner.addEventListener("mouseleave", () => {
      autoScrollTimer = setInterval(autoScroll, autoScrollInterval);
  });
});
