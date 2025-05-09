// Main JavaScript file for DEVGear website

// Function to show a notification message
function showNotification(message) {
  const notification = document.createElement("div")
  notification.classList.add("notification")
  notification.textContent = message
  document.body.appendChild(notification)

  // Trigger reflow to ensure the transition works
  void notification.offsetWidth

  notification.classList.add("show")

  // Remove the notification after a delay
  setTimeout(() => {
    notification.classList.remove("show")
    setTimeout(() => {
      notification.remove()
    }, 300) // Wait for the fade-out transition
  }, 3000)
}

document.addEventListener("DOMContentLoaded", () => {
  // Mobile menu toggle
  const mobileMenuToggle = document.querySelector(".mobile-menu-toggle")
  const navLinks = document.querySelector(".nav-links")

  if (mobileMenuToggle && navLinks) {
    mobileMenuToggle.addEventListener("click", function () {
      navLinks.classList.toggle("active")
      this.classList.toggle("active")
    })
  }

  // Search toggle
  const searchToggle = document.querySelector(".search-toggle")
  const searchOverlay = document.querySelector(".search-overlay")
  const closeSearch = document.querySelector(".close-search")

  if (searchToggle && searchOverlay && closeSearch) {
    searchToggle.addEventListener("click", (e) => {
      e.preventDefault()
      searchOverlay.classList.add("active")
      document.body.style.overflow = "hidden"
      searchOverlay.querySelector("input").focus()
    })

    closeSearch.addEventListener("click", () => {
      searchOverlay.classList.remove("active")
      document.body.style.overflow = ""
    })
  }

  // Search form submission
  const searchForm = document.querySelector(".search-form")
  if (searchForm) {
    searchForm.addEventListener("submit", function (e) {
      e.preventDefault()
      const searchTerm = this.querySelector("input").value.trim()
      if (searchTerm) {
        // In a real application, you would redirect to a search results page
        window.location.href = `products.html?search=${encodeURIComponent(searchTerm)}`
      }
    })
  }

  // Newsletter form submission
  const newsletterForm = document.querySelector(".newsletter-form")
  if (newsletterForm) {
    newsletterForm.addEventListener("submit", function (e) {
      e.preventDefault()
      const email = this.querySelector("input").value.trim()
      if (email) {
        // In a real application, you would send this to your server
        showNotification("Thank you for subscribing to our newsletter!")
        this.reset()
      }
    })
  }

  // Contact form submission
  const contactForm = document.getElementById("contact-form")
  if (contactForm) {
    contactForm.addEventListener("submit", function (e) {
      e.preventDefault()
      // In a real application, you would send this to your server
      showNotification("Your message has been sent. We'll get back to you soon!")
      this.reset()
    })
  }

  // FAQ toggles
  const faqToggles = document.querySelectorAll(".faq-toggle")
  if (faqToggles.length > 0) {
    faqToggles.forEach((toggle) => {
      toggle.addEventListener("click", function () {
        const faqItem = this.closest(".faq-item")
        faqItem.classList.toggle("active")
      })
    })
  }

  // Add notification styles
  addNotificationStyles()
})

// Function to add notification styles
function addNotificationStyles() {
  const style = document.createElement("style")
  style.textContent = `
        .notification {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: var(--primary-color);
            color: white;
            padding: 1rem 1.5rem;
            border-radius: 0.25rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transform: translateY(100%);
            opacity: 0;
            transition: transform 0.3s ease, opacity 0.3s ease;
            z-index: 1000;
        }
        
        .notification.show {
            transform: translateY(0);
            opacity: 1;
        }
    `
  document.head.appendChild(style)
}
