// Contact page specific JavaScript

document.addEventListener("DOMContentLoaded", () => {
  // Initialize FAQ functionality
  initFAQ()
})

// Function to initialize FAQ functionality
function initFAQ() {
  const faqItems = document.querySelectorAll(".faq-item")

  if (faqItems.length === 0) return

  // Open the first FAQ item by default
  faqItems[0].classList.add("active")

  // Add click event listeners to FAQ questions
  faqItems.forEach((item) => {
    const question = item.querySelector(".faq-question")

    question.addEventListener("click", () => {
      // Toggle active class on clicked item
      item.classList.toggle("active")

      // Close other items (uncomment for accordion behavior)
      // faqItems.forEach(otherItem => {
      //     if (otherItem !== item) {
      //         otherItem.classList.remove('active');
      //     }
      // });
    })
  })
}
