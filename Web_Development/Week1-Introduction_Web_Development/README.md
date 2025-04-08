# HTML5 Tutorial

This repository contains a simple introduction to HTML5 structure and semantic elements.

## Overview

This tutorial demonstrates how to create a well-structured HTML5 document using semantic elements for better accessibility and SEO performance.

## Example Code

Below is a complete HTML5 document that demonstrates proper structure and semantic markup:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My First HTML5 Webpage</title>
    <!-- External stylesheet reference (not required for this exercise) -->
    <!-- <link rel="stylesheet" href="styles.css"> -->
</head>
<body>
    <!-- Header section with page title and subtitle -->
    <header>
        <h1>Welcome to My Website</h1>
        <p>A simple demonstration of HTML5 structure</p>
    </header>

    <!-- Navigation section -->
    <nav>
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

    <!-- Main content area -->
    <main>
        <section id="home">
            <h2>Home</h2>
            <p>Welcome to this example webpage that demonstrates the proper structure of an HTML5 document. This page uses semantic HTML elements to improve accessibility and SEO.</p>
        </section>

        <section id="about">
            <h2>About</h2>
            <article>
                <h3>Our Story</h3>
                <p>This is an example of an article element inside a section. Articles represent self-contained compositions that could potentially be distributed independently.</p>
            </article>
        </section>

        <section id="services">
            <h2>Our Services</h2>
            <ul>
                <li>Web Design</li>
                <li>Web Development</li>
                <li>SEO Optimization</li>
            </ul>
        </section>
    </main>

    <!-- Aside content (complementary to main content) -->
    <aside>
        <h3>Latest News</h3>
        <p>This is an example of content that is tangentially related to the main content.</p>
    </aside>

    <!-- Footer with contact information -->
    <footer id="contact">
        <h3>Contact Us</h3>
        <address>
            Email: <a href="mailto:example@example.com">example@example.com</a><br>
            Phone: <a href="tel:+1234567890">(123) 456-7890</a><br>
            Address: 123 Web Dev Lane, Internet City
        </address>
        <p>&copy; 2025 My Website. All rights reserved.</p>
    </footer>
</body>
</html>
```

## Key Elements Explained

### Document Structure
- `<!DOCTYPE html>`: Declares the document as HTML5
- `<html lang="en">`: Root element with language attribute for accessibility
- `<head>`: Contains metadata about the document
- `<body>`: Contains all visible content

### Semantic Elements

| Element | Description |
|---------|-------------|
| `<header>` | Page header containing the main title |
| `<nav>` | Navigation menu with links |
| `<main>` | Primary content of the page |
| `<section>` | Thematic grouping of content |
| `<article>` | Self-contained composition |
| `<aside>` | Content related to but separate from the main content |
| `<footer>` | Contains contact information and copyright notice |
| `<address>` | Specifically designed for contact information |

## Benefits of Using Semantic HTML

1. **Accessibility**: Screen readers can better interpret the page structure
2. **SEO**: Search engines understand the content hierarchy more effectively
3. **Maintainability**: Code is more organized and easier to understand
4. **Future-proofing**: Semantic markup adapts better to different devices

## Getting Started

1. Create a new file named `index.html`
2. Copy the example code into the file
3. Open the file in your browser to see the result
4. Modify the content to create your own webpage

## Learning Objectives

- Understand the structure of an HTML5 document
- Use essential HTML5 elements to create a simple webpage
- Implement semantic HTML for better accessibility and SEO

## Next Steps

After mastering the basic structure, consider learning:
- CSS for styling your HTML document
- JavaScript for adding interactivity
- More advanced HTML5 features like forms, multimedia, and canvas

Happy coding! 💻✨