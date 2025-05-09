// Product data
const products = [
  {
    id: 1,
    name: "404 Not Found T-Shirt",
    description: "A classic tee with a humorous take on the infamous 404 error.",
    price: 999,
    category: "tshirts",
    image: "/placeholder.svg?height=500&width=500",
    badge: "Best Seller",
    rating: 4.8,
    reviews: 124,
    variants: {
      colors: ["black", "navy", "gray"],
      sizes: ["S", "M", "L", "XL", "XXL"],
    },
  },
  {
    id: 2,
    name: "CSS Is Awesome Hoodie",
    description: "Stay warm while acknowledging the quirks of CSS with this comfortable hoodie.",
    price: 1999,
    category: "hoodies",
    image: "/placeholder.svg?height=500&width=500",
    badge: "New",
    rating: 4.6,
    reviews: 89,
    variants: {
      colors: ["black", "gray", "blue"],
      sizes: ["S", "M", "L", "XL", "XXL"],
    },
  },
  {
    id: 3,
    name: "Git Commit Mug",
    description: "Start your day with a reminder to commit your code regularly.",
    price: 499,
    category: "accessories",
    image: "/placeholder.svg?height=500&width=500",
    badge: null,
    rating: 4.9,
    reviews: 56,
    variants: {
      colors: ["white", "black"],
      sizes: ["Standard"],
    },
  },
  {
    id: 4,
    name: "JavaScript Debugging T-Shirt",
    description: "For those days when you're deep in debugging mode.",
    price: 999,
    category: "tshirts",
    image: "/placeholder.svg?height=500&width=500",
    badge: null,
    rating: 4.7,
    reviews: 42,
    variants: {
      colors: ["black", "white", "gray"],
      sizes: ["S", "M", "L", "XL", "XXL"],
    },
  },
  {
    id: 5,
    name: "Code Sleep Repeat Hoodie",
    description: "The perfect attire for those late-night coding sessions.",
    price: 1999,
    category: "hoodies",
    image: "/placeholder.svg?height=500&width=500",
    badge: "Popular",
    rating: 4.9,
    reviews: 78,
    variants: {
      colors: ["black", "navy", "maroon"],
      sizes: ["S", "M", "L", "XL", "XXL"],
    },
  },
  {
    id: 6,
    name: "Binary Code Socks",
    description: "Keep your feet warm with these binary-patterned socks.",
    price: 299,
    category: "accessories",
    image: "/placeholder.svg?height=500&width=500",
    badge: null,
    rating: 4.5,
    reviews: 34,
    variants: {
      colors: ["black", "gray"],
      sizes: ["One Size"],
    },
  },
  {
    id: 7,
    name: "HTML Tag T-Shirt",
    description: "Show your love for semantic HTML with this stylish tee.",
    price: 999,
    category: "tshirts",
    image: "/placeholder.svg?height=500&width=500",
    badge: null,
    rating: 4.6,
    reviews: 51,
    variants: {
      colors: ["white", "black", "blue"],
      sizes: ["S", "M", "L", "XL", "XXL"],
    },
  },
  {
    id: 8,
    name: "Programmer's Beanie",
    description: "Keep your head warm during those cold debugging sessions.",
    price: 699,
    category: "accessories",
    image: "/placeholder.svg?height=500&width=500",
    badge: "New",
    rating: 4.7,
    reviews: 23,
    variants: {
      colors: ["black", "gray", "navy"],
      sizes: ["One Size"],
    },
  },
]

// Mock addToCart function (replace with your actual implementation)
function addToCart(productId, quantity) {
  console.log(`Adding product ${productId} to cart with quantity ${quantity}`)
  // In a real application, you would update the cart state here
}

// Function to create a product card
function createProductCard(product) {
  return `
        <article class="product-card">
            <div class="product-img">
                <img src="${product.image}" alt="${product.name}">
                ${product.badge ? `<div class="product-badge">${product.badge}</div>` : ""}
            </div>
            <div class="product-info">
                <div class="product-category">${product.category.charAt(0).toUpperCase() + product.category.slice(1)}</div>
                <h3 class="product-title">${product.name}</h3>
                <div class="product-price">Ksh${product.price.toFixed(2)}</div>
                <div class="product-actions">
                    <button class="add-to-cart" data-product-id="${product.id}">Add to Cart</button>
                    <div class="product-rating">
                        ${Array(Math.floor(product.rating)).fill('<i class="fas fa-star"></i>').join("")}
                        ${product.rating % 1 !== 0 ? '<i class="fas fa-star-half-alt"></i>' : ""}
                    </div>
                </div>
            </div>
        </article>
    `
}

// Function to render featured products on the home page
function renderFeaturedProducts() {
  const featuredProductsGrid = document.getElementById("featured-products-grid")
  if (!featuredProductsGrid) return

  // Get 4 random products for the featured section
  const featuredProducts = [...products].sort(() => 0.5 - Math.random()).slice(0, 4)

  featuredProductsGrid.innerHTML = featuredProducts.map((product) => createProductCard(product)).join("")

  // Add event listeners to the "Add to Cart" buttons
  document.querySelectorAll(".add-to-cart").forEach((button) => {
    button.addEventListener("click", function () {
      const productId = Number.parseInt(this.getAttribute("data-product-id"))
      addToCart(productId, 1)
    })
  })
}

// Function to render all products on the products page
function renderProducts(filteredProducts = products) {
  const productsGrid = document.getElementById("products-grid")
  if (!productsGrid) return

  productsGrid.innerHTML = filteredProducts.map((product) => createProductCard(product)).join("")

  // Update the products count
  const productsCount = document.getElementById("products-count")
  if (productsCount) {
    productsCount.textContent = filteredProducts.length
  }

  // Add event listeners to the "Add to Cart" buttons
  document.querySelectorAll(".add-to-cart").forEach((button) => {
    button.addEventListener("click", function () {
      const productId = Number.parseInt(this.getAttribute("data-product-id"))
      addToCart(productId, 1)
    })
  })
}

// Function to filter products based on selected filters
function filterProducts() {
  const categoryCheckboxes = document.querySelectorAll('input[name="category"]:checked')
  const priceRange = document.getElementById("price-range")
  const sortBy = document.getElementById("sort-by")

  // Get selected categories
  const selectedCategories = Array.from(categoryCheckboxes).map((checkbox) => checkbox.value)

  // Filter by category
  let filteredProducts = products
  if (!selectedCategories.includes("all")) {
    filteredProducts = products.filter((product) => selectedCategories.includes(product.category))
  }

  // Filter by price
  if (priceRange) {
    const maxPrice = Number.parseInt(priceRange.value)
    filteredProducts = filteredProducts.filter((product) => product.price <= maxPrice)
  }

  // Sort products
  if (sortBy) {
    const sortValue = sortBy.value
    switch (sortValue) {
      case "price-low":
        filteredProducts.sort((a, b) => a.price - b.price)
        break
      case "price-high":
        filteredProducts.sort((a, b) => b.price - a.price)
        break
      case "newest":
        //sort by date for real world application
        filteredProducts.sort((a, b) => b.id - a.id)
        break
      default:
        // 'featured' - no specific sorting
        break
    }
  }

  renderProducts(filteredProducts)
}

// Initialize the products page
function initProductsPage() {
  // Render all products initially
  renderProducts()

  // Set up event listeners for filters
  const applyFiltersBtn = document.querySelector(".apply-filters")
  if (applyFiltersBtn) {
    applyFiltersBtn.addEventListener("click", filterProducts)
  }

  // Set up price range slider
  const priceRange = document.getElementById("price-range")
  const priceValue = document.getElementById("price-value")
  if (priceRange && priceValue) {
    priceRange.addEventListener("input", function () {
      priceValue.textContent = `$${this.value}`
    })
  }

  // Set up sort select
  const sortBy = document.getElementById("sort-by")
  if (sortBy) {
    sortBy.addEventListener("change", filterProducts)
  }

  // Check if there's a category parameter in the URL
  const urlParams = new URLSearchParams(window.location.search)
  const categoryParam = urlParams.get("category")
  if (categoryParam) {
    // Find the checkbox for this category and check it
    const checkbox = document.querySelector(`input[name="category"][value="${categoryParam}"]`)
    if (checkbox) {
      checkbox.checked = true
      // Uncheck the "all" checkbox
      const allCheckbox = document.querySelector('input[name="category"][value="all"]')
      if (allCheckbox) {
        allCheckbox.checked = false
      }
      // Apply the filters
      filterProducts()
    }
  }
}

// Function to get a product by ID
function getProductById(productId) {
  return products.find((product) => product.id === productId)
}

// Initialize the application
document.addEventListener("DOMContentLoaded", () => {
  // Render featured products on the home page
  renderFeaturedProducts()

  // Initialize the products page
  initProductsPage()
})
