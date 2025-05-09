// Cart functionality
let cart = JSON.parse(localStorage.getItem("cart")) || []

// Mock getProductById function (replace with your actual implementation)
function getProductById(productId) {
  // This is a placeholder - replace with your actual product data retrieval
  const products = [
    {
      id: 1,
      name: "Product 1",
      price: 20.0,
      image: "image1.jpg",
      variants: { sizes: ["S", "M", "L"], colors: ["Red", "Blue"] },
    },
    {
      id: 2,
      name: "Product 2",
      price: 30.0,
      image: "image2.jpg",
      variants: { sizes: ["S", "M"], colors: ["Green", "Yellow"] },
    },
  ]
  return products.find((product) => product.id === productId)
}

// Function to add a product to the cart
function addToCart(productId, quantity, size = null, color = null) {
  const product = getProductById(productId)

  if (!product) {
    console.error("Product not found")
    return
  }

  // Check if the product is already in the cart
  const existingItemIndex = cart.findIndex(
    (item) => item.id === productId && (size ? item.size === size : true) && (color ? item.color === color : true),
  )

  if (existingItemIndex !== -1) {
    // Update quantity if the product is already in the cart
    cart[existingItemIndex].quantity += quantity
  } else {
    // Add new item to cart
    cart.push({
      id: productId,
      name: product.name,
      price: product.price,
      image: product.image,
      quantity: quantity,
      size: size || (product.variants.sizes ? product.variants.sizes[0] : null),
      color: color || (product.variants.colors ? product.variants.colors[0] : null),
    })
  }

  // Save cart to localStorage
  saveCart()

  // Update cart count
  updateCartCount()

  // Show success message
  showNotification(`${product.name} added to cart!`)
}

// Function to remove an item from the cart
function removeFromCart(index) {
  cart.splice(index, 1)
  saveCart()
  updateCartCount()
  renderCart()
}

// Function to update item quantity in the cart
function updateCartItemQuantity(index, quantity) {
  if (quantity < 1) quantity = 1
  if (quantity > 10) quantity = 10

  cart[index].quantity = quantity
  saveCart()
  renderCart()
}

// Function to save the cart to localStorage
function saveCart() {
  localStorage.setItem("cart", JSON.stringify(cart))
}

// Function to update the cart count in the header
function updateCartCount() {
  const cartCount = document.querySelector(".cart-count")
  if (cartCount) {
    const totalItems = cart.reduce((total, item) => total + item.quantity, 0)
    cartCount.textContent = totalItems
  }
}

// Function to calculate cart totals
function calculateCartTotals() {
  const subtotal = cart.reduce((total, item) => total + item.price * item.quantity, 0)
  const shipping = cart.length > 0 ? 5.99 : 0
  const tax = subtotal * 0.08 // 8% tax rate
  const total = subtotal + shipping + tax

  return {
    subtotal,
    shipping,
    tax,
    total,
  }
}

// Function to render the cart page
function renderCart() {
  const cartContainer = document.getElementById("cart-container")
  const cartEmpty = document.getElementById("cart-empty")
  const cartSummary = document.getElementById("cart-summary")

  if (!cartContainer || !cartEmpty || !cartSummary) return

  if (cart.length === 0) {
    // Show empty cart message
    cartContainer.style.display = "none"
    cartEmpty.style.display = "block"
    cartSummary.style.display = "none"
  } else {
    // Show cart items
    cartContainer.style.display = "grid"
    cartEmpty.style.display = "none"
    cartSummary.style.display = "block"

    // Render cart items
    cartContainer.innerHTML = `
            <div class="cart-items">
                ${cart
                  .map(
                    (item, index) => `
                    <div class="cart-item">
                        <div class="cart-item-image">
                            <img src="${item.image}" alt="${item.name}">
                        </div>
                        <div class="cart-item-details">
                            <h3 class="cart-item-title">${item.name}</h3>
                            <div class="cart-item-variant">
                                ${item.size ? `Size: ${item.size}` : ""}
                                ${item.size && item.color ? " | " : ""}
                                ${item.color ? `Color: ${item.color}` : ""}
                            </div>
                            <div class="cart-item-price">$${item.price.toFixed(2)}</div>
                            <div class="cart-item-quantity">
                                <button class="quantity-btn decrease-cart-quantity" data-index="${index}">-</button>
                                <input type="number" class="quantity-input" value="${item.quantity}" min="1" max="10" data-index="${index}">
                                <button class="quantity-btn increase-cart-quantity" data-index="${index}">+</button>
                            </div>
                        </div>
                        <div class="cart-item-actions">
                            <div class="cart-item-total">$${(item.price * item.quantity).toFixed(2)}</div>
                            <button class="remove-item" data-index="${index}">
                                <i class="fas fa-trash-alt"></i> Remove
                            </button>
                        </div>
                    </div>
                `,
                  )
                  .join("")}
            </div>
        `

    // Calculate and display cart totals
    const totals = calculateCartTotals()
    document.getElementById("cart-subtotal").textContent = `$${totals.subtotal.toFixed(2)}`
    document.getElementById("cart-shipping").textContent = `$${totals.shipping.toFixed(2)}`
    document.getElementById("cart-tax").textContent = `$${totals.tax.toFixed(2)}`
    document.getElementById("cart-total").textContent = `$${totals.total.toFixed(2)}`

    // Add event listeners to cart item buttons
    setupCartEventListeners()
  }
}

// Function to set up event listeners for cart items
function setupCartEventListeners() {
  // Remove item buttons
  document.querySelectorAll(".remove-item").forEach((button) => {
    button.addEventListener("click", function () {
      const index = Number.parseInt(this.getAttribute("data-index"))
      removeFromCart(index)
    })
  })

  // Decrease quantity buttons
  document.querySelectorAll(".decrease-cart-quantity").forEach((button) => {
    button.addEventListener("click", function () {
      const index = Number.parseInt(this.getAttribute("data-index"))
      const currentQuantity = cart[index].quantity
      updateCartItemQuantity(index, currentQuantity - 1)
    })
  })

  // Increase quantity buttons
  document.querySelectorAll(".increase-cart-quantity").forEach((button) => {
    button.addEventListener("click", function () {
      const index = Number.parseInt(this.getAttribute("data-index"))
      const currentQuantity = cart[index].quantity
      updateCartItemQuantity(index, currentQuantity + 1)
    })
  })

  // Quantity input fields
  document.querySelectorAll(".cart-item .quantity-input").forEach((input) => {
    input.addEventListener("change", function () {
      const index = Number.parseInt(this.getAttribute("data-index"))
      const quantity = Number.parseInt(this.value)
      updateCartItemQuantity(index, quantity)
    })
  })
}

// Function to render the checkout page
function renderCheckout() {
  const checkoutItems = document.getElementById("checkout-items")
  if (!checkoutItems) return

  // Render checkout items
  checkoutItems.innerHTML = cart
    .map(
      (item) => `
        <div class="checkout-item">
            <div class="checkout-item-image">
                <img src="${item.image}" alt="${item.name}">
            </div>
            <div class="checkout-item-details">
                <div class="checkout-item-title">${item.name}</div>
                <div class="checkout-item-variant">
                    ${item.size ? `Size: ${item.size}` : ""}
                    ${item.size && item.color ? " | " : ""}
                    ${item.color ? `Color: ${item.color}` : ""}
                </div>
                <div class="checkout-item-price">$${item.price.toFixed(2)} x ${item.quantity}</div>
            </div>
        </div>
    `,
    )
    .join("")

  // Calculate and display checkout totals
  const totals = calculateCartTotals()
  document.getElementById("checkout-subtotal").textContent = `$${totals.subtotal.toFixed(2)}`
  document.getElementById("checkout-shipping").textContent = `$${totals.shipping.toFixed(2)}`
  document.getElementById("checkout-tax").textContent = `$${totals.tax.toFixed(2)}`
  document.getElementById("checkout-total").textContent = `$${totals.total.toFixed(2)}`

  // Set up checkout form submission
  const checkoutForm = document.getElementById("checkout-form")
  if (checkoutForm) {
    checkoutForm.addEventListener("submit", (e) => {
      e.preventDefault()

      // In a real application, you would process the payment here

      // Clear the cart
      cart = []
      saveCart()
      updateCartCount()

      // Redirect to a thank you page
      window.location.href = "thank-you.html"
    })
  }
}

// Function to show a notification
function showNotification(message) {
  // Create notification element if it doesn't exist
  let notification = document.querySelector(".notification")
  if (!notification) {
    notification = document.createElement("div")
    notification.className = "notification"
    document.body.appendChild(notification)
  }

  // Set message and show notification
  notification.textContent = message
  notification.classList.add("show")

  // Hide notification after 3 seconds
  setTimeout(() => {
    notification.classList.remove("show")
  }, 3000)
}

// Initialize cart functionality
document.addEventListener("DOMContentLoaded", () => {
  // Update cart count
  updateCartCount()

  // Render cart page if on cart.html
  if (window.location.pathname.includes("cart.html")) {
    renderCart()
  }

  // Render checkout page if on checkout.html
  if (window.location.pathname.includes("checkout.html")) {
    renderCheckout()
  }
})
