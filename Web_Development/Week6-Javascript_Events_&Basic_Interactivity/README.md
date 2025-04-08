# Kalenjin Heritage Showcase Webpage

## Description

This project is a simple informational webpage dedicated to the Kalenjin people of Kenya. It serves as a practical demonstration of fundamental front-end web development concepts, particularly focusing on **JavaScript** for interactivity and form handling, alongside **HTML5** for structure and **CSS3** for styling.

The webpage provides introductory information about the Kalenjin ethnic group, their culture, athletic achievements, and includes interactive elements like a knowledge quiz and a contact form.


## Features

* **Informational Sections:** Content on Kalenjin introduction, culture, and athletic prowess.
* **Interactive Subgroup Details:** A button to toggle the visibility of Kalenjin subgroups.
* **Image Hover Effect:** Simple interaction on the cultural image caption.
* **Knowledge Quiz:** A short, interactive quiz about Kalenjin facts with immediate feedback.
* **Contact Form:** Includes client-side validation for name, email format, and message presence.
* **Dynamic Footer Year:** Automatically updates the copyright year.
* **Styled Header:** Features a background image with a text overlay, based on user request.

## Technologies Used

* **HTML5:** For structuring the web content.
* **CSS3:** For styling the appearance, layout (including Flexbox for centering), and responsiveness hints.
* **Vanilla JavaScript (ES6+):** For DOM manipulation, event handling, form validation, and general interactivity. No external libraries or frameworks were used.

## Setup and Installation

No complex setup is required. Simply clone or download the repository files.

1.  Ensure you have all three files (`index.html`, `style.css`, `script.js`) in the same directory.
2.  Open the `index.html` file in your preferred web browser (e.g., Chrome, Firefox, Edge, Safari).

## Usage

1.  Open `index.html` in your browser.
2.  Read through the different sections.
3.  Click the "Learn More About Subgroups" button to show/hide additional details.
4.  Hover over the image in the "Culture" section to see the caption change.
5.  Attempt the "Test Your Knowledge!" quiz and click "Check Answers" to see your score.
6.  Fill out the "Share Your Story" contact form. Try submitting with empty fields or an invalid email format to observe the validation messages. Submit with valid data to see the success message (Note: This form is front-end only; no data is actually sent to a server).

## Key JavaScript Concepts Demonstrated

This project explicitly demonstrates the following JavaScript concepts:

1.  **Event Listeners:**
    * `DOMContentLoaded`: Ensures the script runs only after the HTML is fully loaded.
    * `click`: Used on the "Learn More" button and form submit buttons.
    * `submit`: Used on the quiz and contact forms to intercept default submission and run custom logic (`event.preventDefault()`).
    * `mouseover` / `mouseout`: Used for the image caption hover effect.

2.  **DOM Manipulation:**
    * Selecting elements using `getElementById`, `querySelector`, `querySelectorAll`.
    * Modifying element styles (`element.style.display`, `element.style.fontWeight`).
    * Changing element content (`element.textContent`, `element.innerHTML`).
    * Adding/Removing CSS classes (`element.classList.add`, `element.classList.remove`).
    * Getting form input values (`input.value`, `select.value`, `radio:checked`).
    * Resetting forms (`form.reset()`).

3.  **Form Validation:**
    * Checking for empty required fields (`input.value.trim() === ''`).
    * Basic email format validation using a regular expression (`/\S+@\S+\.\S+/.test()`).
    * Conditional logic (`if`/`else if`/`else`) to check answers and validation rules.
    * Displaying dynamic error and success messages based on validation status.

## Future Enhancements (Potential Ideas)

* Add more detailed content sections (e.g., History, Language, Specific Rituals).
* Implement an image gallery for cultural visuals.
* Make the design more responsive for various screen sizes.
* Connect the contact form to a backend service (e.g., using Node.js, Python/Flask, or a serverless function) to actually send emails or store messages.
