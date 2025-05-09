// utils.js

// Product data (This should ideally come from an API or database)
const products = [
  {
    id: 1,
    name: "404 Not Found T-Shirt",
    description: "A classic tee with a humorous take on the infamous 404 error.",
    price: 24.99,
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
    price: 49.99,
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
    price: 14.99,
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
    price: 24.99,
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
    price: 54.99,
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
    price: 9.99,
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
    price: 22.99,
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
    price: 19.99,
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
function addToCart(productId, quantity, size = null, color = null) {
  console.log(`Adding product ${productId} to cart with quantity ${quantity}, size: ${size}, color: ${color}`)
  // In a real application, you would update the cart state here
  // and potentially save it to local storage or send it to a server.
}

// Function to get a product by ID
function getProductById(productId) {
  return products.find((product) => product.id === productId)
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
                <div class="product-price">$${product.price.toFixed(2)}</div>
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

export { getProductById, addToCart, products, createProductCard }
