// Import necessary functions and data
import { getProductById, addToCart, products, createProductCard } from "./utils.js"

// Function to render a product detail page
function renderProductDetail() {
  // Get the product ID from the URL
  const urlParams = new URLSearchParams(window.location.search)
  const productId = Number.parseInt(urlParams.get("id"))

  if (!productId) {
    // Redirect to products page if no ID is provided
    window.location.href = "products.html"
    return
  }

  // Get the product by ID
  const product = getProductById(productId)

  if (!product) {
    // Handle product not found
    const productDetail = document.getElementById("product-detail")
    if (productDetail) {
      productDetail.innerHTML = `
                <div class="product-not-found">
                    <h2>Product Not Found</h2>
                    <p>Sorry, the product you're looking for doesn't exist.</p>
                    <a href="products.html" class="btn btn-primary">Back to Products</a>
                </div>
            `
    }
    return
  }

  // Update the page title and breadcrumb
  document.title = `${product.name} - DEVGear`
  const breadcrumb = document.getElementById("product-breadcrumb")
  if (breadcrumb) {
    breadcrumb.textContent = product.name
  }

  // Render the product detail
  const productDetail = document.getElementById("product-detail")
  if (productDetail) {
    productDetail.innerHTML = `
            <div class="product-gallery">
                <div class="product-main-image">
                    <img src="${product.image}" alt="${product.name}" id="main-product-image">
                </div>
                <div class="product-thumbnails">
                    <div class="product-thumbnail active" data-image="${product.image}">
                        <img src="${product.image}" alt="${product.name}">
                    </div>
                    <div class="product-thumbnail" data-image="/placeholder.svg?height=500&width=500&text=Angle 2">
                        <img src="/placeholder.svg?height=500&width=500&text=Angle 2" alt="${product.name} - Angle 2">
                    </div>
                    <div class="product-thumbnail" data-image="/placeholder.svg?height=500&width=500&text=Angle 3">
                        <img src="/placeholder.svg?height=500&width=500&text=Angle 3" alt="${product.name} - Angle 3">
                    </div>
                    <div class="product-thumbnail" data-image="/placeholder.svg?height=500&width=500&text=Angle 4">
                        <img src="/placeholder.svg?height=500&width=500&text=Angle 4" alt="${product.name} - Angle 4">
                    </div>
                </div>
            </div>
            <div class="product-info">
                <div class="product-category">${product.category.charAt(0).toUpperCase() + product.category.slice(1)}</div>
                <h1 class="product-title">${product.name}</h1>
                <div class="product-price">$${product.price.toFixed(2)}</div>
                <div class="product-rating">
                    <div class="rating-stars">
                        ${Array(Math.floor(product.rating)).fill('<i class="fas fa-star"></i>').join("")}
                        ${product.rating % 1 !== 0 ? '<i class="fas fa-star-half-alt"></i>' : ""}
                    </div>
                    <span class="rating-count">${product.reviews} reviews</span>
                </div>
                <div class="product-description">
                    <p>${product.description}</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc vel tincidunt lacinia, nisl nisl aliquam nisl, vel aliquam nisl nisl sit amet nisl. Sed euismod, nunc vel tincidunt lacinia, nisl nisl aliquam nisl, vel aliquam nisl nisl sit amet nisl.</p>
                </div>
                <div class="product-options">
                    <div class="option-group">
                        <label class="option-label">Size</label>
                        <div class="size-options">
                            ${product.variants.sizes
                              .map(
                                (size, index) => `
                                <div class="size-option ${index === 1 ? "active" : ""}" data-size="${size}">${size}</div>
                            `,
                              )
                              .join("")}
                        </div>
                    </div>
                    <div class="option-group">
                        <label class="option-label">Color</label>
                        <div class="color-options">
                            ${product.variants.colors
                              .map(
                                (color, index) => `
                                <div class="color-option ${index === 0 ? "active" : ""}" style="background-color: ${color};" data-color="${color}"></div>
                            `,
                              )
                              .join("")}
                        </div>
                    </div>
                </div>
                <div class="product-actions">
                    <div class="quantity-selector">
                        <button class="quantity-btn decrease-quantity">-</button>
                        <input type="number" class="quantity-input" value="1" min="1" max="10" id="product-quantity">
                        <button class="quantity-btn increase-quantity">+</button>
                    </div>
                    <button class="btn btn-primary add-to-cart-btn" data-product-id="${product.id}">Add to Cart</button>
                </div>
                <div class="product-meta">
                    <div class="meta-item">
                        <span>SKU:</span> DEV-${product.id.toString().padStart(4, "0")}
                    </div>
                    <div class="meta-item">
                        <span>Categories:</span> ${product.category.charAt(0).toUpperCase() + product.category.slice(1)}, Developer Apparel
                    </div>
                    <div class="meta-item">
                        <span>Tags:</span> Developer, Coding, Programming
                    </div>
                </div>
            </div>
        `

    // Set up event listeners for the product detail page
    setupProductDetailListeners(product)
  }

  // Render related products
  renderRelatedProducts(product)
}

// Function to set up event listeners for the product detail page
function setupProductDetailListeners(product) {
  // Thumbnail image switching
  const thumbnails = document.querySelectorAll(".product-thumbnail")
  const mainImage = document.getElementById("main-product-image")

  thumbnails.forEach((thumbnail) => {
    thumbnail.addEventListener("click", function () {
      // Remove active class from all thumbnails
      thumbnails.forEach((thumb) => thumb.classList.remove("active"))
      // Add active class to clicked thumbnail
      this.classList.add("active")
      // Update main image
      const imageUrl = this.getAttribute("data-image")
      mainImage.src = imageUrl
    })
  })

  // Size selection
  const sizeOptions = document.querySelectorAll(".size-option")
  sizeOptions.forEach((option) => {
    option.addEventListener("click", function () {
      // Remove active class from all size options
      sizeOptions.forEach((opt) => opt.classList.remove("active"))
      // Add active class to clicked option
      this.classList.add("active")
    })
  })

  // Color selection
  const colorOptions = document.querySelectorAll(".color-option")
  colorOptions.forEach((option) => {
    option.addEventListener("click", function () {
      // Remove active class from all color options
      colorOptions.forEach((opt) => opt.classList.remove("active"))
      // Add active class to clicked option
      this.classList.add("active")
    })
  })

  // Quantity buttons
  const decreaseBtn = document.querySelector(".decrease-quantity")
  const increaseBtn = document.querySelector(".increase-quantity")
  const quantityInput = document.getElementById("product-quantity")

  decreaseBtn.addEventListener("click", () => {
    const quantity = Number.parseInt(quantityInput.value)
    if (quantity > 1) {
      quantityInput.value = quantity - 1
    }
  })

  increaseBtn.addEventListener("click", () => {
    const quantity = Number.parseInt(quantityInput.value)
    if (quantity < 10) {
      quantityInput.value = quantity + 1
    }
  })

  // Add to cart button
  const addToCartBtn = document.querySelector(".add-to-cart-btn")
  addToCartBtn.addEventListener("click", function () {
    const productId = Number.parseInt(this.getAttribute("data-product-id"))
    const quantity = Number.parseInt(quantityInput.value)
    const selectedSize = document.querySelector(".size-option.active").getAttribute("data-size")
    const selectedColor = document.querySelector(".color-option.active").getAttribute("data-color")

    addToCart(productId, quantity, selectedSize, selectedColor)
  })
}

// Function to render related products
function renderRelatedProducts(currentProduct) {
  const relatedProductsContainer = document.getElementById("related-products")
  if (!relatedProductsContainer) return

  // Get products in the same category, excluding the current product
  let relatedProducts = products.filter(
    (product) => product.category === currentProduct.category && product.id !== currentProduct.id,
  )

  // If there are less than 4 products in the same category, add some from other categories
  if (relatedProducts.length < 4) {
    const otherProducts = products.filter(
      (product) => product.category !== currentProduct.category && product.id !== currentProduct.id,
    )

    // Randomly select products to fill up to 4
    const neededCount = 4 - relatedProducts.length
    const randomOtherProducts = otherProducts.sort(() => 0.5 - Math.random()).slice(0, neededCount)

    relatedProducts = [...relatedProducts, ...randomOtherProducts]
  } else {
    // If there are more than 4 products in the same category, take only 4
    relatedProducts = relatedProducts.slice(0, 4)
  }

  // Render the related products
  relatedProductsContainer.innerHTML = relatedProducts.map((product) => createProductCard(product)).join("")

  // Add event listeners to the "Add to Cart" buttons
  document.querySelectorAll(".add-to-cart").forEach((button) => {
    button.addEventListener("click", function () {
      const productId = Number.parseInt(this.getAttribute("data-product-id"))
      addToCart(productId, 1)
    })
  })
}

// Initialize the product detail page
document.addEventListener("DOMContentLoaded", () => {
  renderProductDetail()
})
