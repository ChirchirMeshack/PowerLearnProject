
document.addEventListener('DOMContentLoaded', () => {

    // --- 1. Event Listener & Interactive Element: Toggle Subgroup Details ---
    const toggleButton = document.getElementById('toggleDetailsBtn');
    const detailsDiv = document.getElementById('subgroupDetails');

    if (toggleButton && detailsDiv) {
        toggleButton.addEventListener('click', () => {
            // Check if currently hidden (or has no display style set)
            if (detailsDiv.style.display === 'none' || detailsDiv.style.display === '') {
                detailsDiv.style.display = 'block'; // Show the details
                toggleButton.textContent = 'Hide Subgroup Details'; // Change button text
            } else {
                detailsDiv.style.display = 'none'; // Hide the details
                toggleButton.textContent = 'Learn More About Subgroups'; // Change back button text
            }
        });
    }

    // --- Interactive Element Example: Image Caption Change on Hover ---
    const culturalImage = document.querySelector('#culture img');
    const imageCaption = document.getElementById('imageCaption');
    const originalCaption = imageCaption ? imageCaption.textContent : ''; // Store original caption

    if (culturalImage && imageCaption) {
        culturalImage.addEventListener('mouseover', () => {
            imageCaption.textContent = 'Fact: Mursik (fermented milk) is often stored in traditional gourds!';
            imageCaption.style.fontWeight = 'bold';
        });

        culturalImage.addEventListener('mouseout', () => {
            imageCaption.textContent = originalCaption; // Restore original text
             imageCaption.style.fontWeight = 'normal';
        });
    }


    // --- 2. Event Listener & Form Validation: Kalenjin Quiz ---
    const quizForm = document.getElementById('kalenjinQuiz');
    const quizResultDiv = document.getElementById('quizResult');

    if (quizForm && quizResultDiv) {
        quizForm.addEventListener('submit', (event) => {
            event.preventDefault(); // Prevent the default form submission

            let score = 0;
            const totalQuestions = 2;
            let feedback = '';

            // Get answers
            const answer1 = quizForm.q1.value;
            const answer2 = quizForm.querySelector('input[name="q2"]:checked'); // Get the checked radio button

            // Check answers
            if (answer1 === 'riftvalley') {
                score++;
            }
            if (answer2 && answer2.value === 'milk') {
                score++;
            }

             // Provide feedback
            quizResultDiv.className = 'feedback'; // Reset classes
            if (score === totalQuestions) {
                feedback = `Excellent! You got ${score} out of ${totalQuestions} correct. You know your Kalenjin facts!`;
                quizResultDiv.classList.add('success');
            } else if (score > 0) {
                 feedback = `Good try! You got ${score} out of ${totalQuestions} correct.`;
                 quizResultDiv.classList.add('success'); // Still somewhat positive
            } else {
                feedback = `You got ${score} out of ${totalQuestions}. Keep learning! The Rift Valley is their home, and Mursik is fermented milk.`;
                quizResultDiv.classList.add('error');
            }

            quizResultDiv.innerHTML = feedback;
            quizResultDiv.style.display = 'block'; // Make sure feedback is visible
        });
    }


    // --- 3. Event Listener & Form Validation: Contact Form ---
    const contactForm = document.getElementById('contactForm');
    const formStatusDiv = document.getElementById('formStatus');
    const nameInput = document.getElementById('userName');
    const emailInput = document.getElementById('userEmail');
    const messageInput = document.getElementById('userMessage');
    const nameError = document.getElementById('nameError');
    const emailError = document.getElementById('emailError');
    const messageError = document.getElementById('messageError');

    if (contactForm) {
        contactForm.addEventListener('submit', (event) => {
            event.preventDefault(); // Stop default submission

            let isValid = true;

            // Clear previous statuses/errors
            formStatusDiv.innerHTML = '';
            formStatusDiv.className = 'feedback'; // Reset class
            formStatusDiv.style.display = 'none';
            nameError.textContent = ''; nameError.style.display = 'none';
            emailError.textContent = ''; emailError.style.display = 'none';
            messageError.textContent = ''; messageError.style.display = 'none';


            // Validate Name
            if (nameInput.value.trim() === '') {
                nameError.textContent = 'Name is required.';
                nameError.style.display = 'block';
                isValid = false;
            }

            // Validate Email
            const emailValue = emailInput.value.trim();
            if (emailValue === '') {
                emailError.textContent = 'Email is required.';
                 emailError.style.display = 'block';
                isValid = false;
            } else if (!/\S+@\S+\.\S+/.test(emailValue)) { // Simple email pattern check
                emailError.textContent = 'Please enter a valid email address.';
                emailError.style.display = 'block';
                isValid = false;
            }

             // Validate Message
            if (messageInput.value.trim() === '') {
                messageError.textContent = 'Message cannot be empty.';
                messageError.style.display = 'block';
                isValid = false;
            }

            // If all valid
            if (isValid) {
                formStatusDiv.textContent = 'Kongoi(Thank you in Kalenjin)! Your message has been sent.';
                formStatusDiv.classList.add('success');
                formStatusDiv.style.display = 'block';
                contactForm.reset(); // Clear the form fields
            } else {
                 formStatusDiv.textContent = 'Please correct the errors above.';
                 formStatusDiv.classList.add('error');
                 formStatusDiv.style.display = 'block';
            }
        });
    }

     // --- Small Utility: Update Footer Year ---
     const yearSpan = document.getElementById('currentYear');
     if (yearSpan) {
         yearSpan.textContent = new Date().getFullYear();
     }

}); // End DOMContentLoaded