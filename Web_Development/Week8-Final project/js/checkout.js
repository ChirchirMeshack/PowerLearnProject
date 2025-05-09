// Checkout page specific JavaScript

document.addEventListener("DOMContentLoaded", () => {
  // Initialize payment method toggle
  initPaymentMethodToggle()

  // Form validation
  initFormValidation()
})

// Function to initialize payment method toggle
function initPaymentMethodToggle() {
  const paymentMethods = document.querySelectorAll('input[name="payment-method"]')
  const creditCardFields = document.getElementById("credit-card-fields")

  if (!paymentMethods.length || !creditCardFields) return

  paymentMethods.forEach((method) => {
    method.addEventListener("change", function () {
      if (this.value === "credit-card") {
        creditCardFields.style.display = "block"
      } else {
        creditCardFields.style.display = "none"
      }
    })
  })
}

// Function to initialize form validation
function initFormValidation() {
  const checkoutForm = document.getElementById("checkout-form")

  if (!checkoutForm) return

  checkoutForm.addEventListener("submit", function (e) {
    let isValid = true

    // Get all required fields
    const requiredFields = this.querySelectorAll("[required]")

    // Check if all required fields are filled
    requiredFields.forEach((field) => {
      if (!field.value.trim()) {
        isValid = false
        field.classList.add("error")
      } else {
        field.classList.remove("error")
      }
    })

    // Validate email format
    const emailField = document.getElementById("email")
    if (emailField && emailField.value.trim()) {
      const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
      if (!emailPattern.test(emailField.value.trim())) {
        isValid = false
        emailField.classList.add("error")
      }
    }

    // Validate credit card fields if credit card payment is selected
    const creditCardPayment = document.getElementById("credit-card")
    if (creditCardPayment && creditCardPayment.checked) {
      // Validate card number (simple validation for demo)
      const cardNumber = document.getElementById("card-number")
      if (cardNumber && cardNumber.value.trim()) {
        if (cardNumber.value.replace(/\s/g, "").length !== 16) {
          isValid = false
          cardNumber.classList.add("error")
        }
      }

      // Validate expiry date (MM/YY format)
      const expiry = document.getElementById("expiry")
      if (expiry && expiry.value.trim()) {
        const expiryPattern = /^(0[1-9]|1[0-2])\/\d{2}$/
        if (!expiryPattern.test(expiry.value.trim())) {
          isValid = false
          expiry.classList.add("error")
        }
      }

      // Validate CVV (3 or 4 digits)
      const cvv = document.getElementById("cvv")
      if (cvv && cvv.value.trim()) {
        if (!/^\d{3,4}$/.test(cvv.value.trim())) {
          isValid = false
          cvv.classList.add("error")
        }
      }
    }

    // If form is not valid, prevent submission
    if (!isValid) {
      e.preventDefault()
      // Show notification
      function showNotification(message) {
        const notificationDiv = document.createElement("div")
        notificationDiv.classList.add("notification")
        notificationDiv.textContent = message
        document.body.appendChild(notificationDiv)

        // Style the notification
        notificationDiv.style.cssText = `
                    position: fixed;
                    top: 20px;
                    left: 50%;
                    transform: translateX(-50%);
                    background-color: #f44336;
                    color: white;
                    padding: 15px;
                    border-radius: 5px;
                    z-index: 1000;
                `

        // Remove the notification after 3 seconds
        setTimeout(() => {
          notificationDiv.remove()
        }, 3000)
      }
      showNotification("Please fill in all required fields correctly.")

      // Scroll to the first error field
      const firstError = document.querySelector(".error")
      if (firstError) {
        firstError.scrollIntoView({ behavior: "smooth", block: "center" })
      }
    }
  })

  // Add error class styling
  const style = document.createElement("style")
  style.textContent = `
        .error {
            border-color: var(--error-color) !important;
        }
    `
  document.head.appendChild(style)
}
