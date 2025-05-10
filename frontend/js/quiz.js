
document.addEventListener('DOMContentLoaded', function() {
    const generateBtn = document.getElementById('generate-btn');
    const previewSection = document.getElementById('preview-section');
    const quizPreview = document.getElementById('quiz-preview');
    const pdfInput = document.getElementById('pdf-upload');
    const fileNameDisplay = document.getElementById('file-name-display');
    const quizForm = document.getElementById('quiz-form'); // Reference to the form

    // --- Event Listener for File Input Change ---
    pdfInput.addEventListener('change', function() {
        if (pdfInput.files.length > 0) {
            fileNameDisplay.textContent = `Selected file: ${pdfInput.files[0].name}`;
            fileNameDisplay.classList.remove('hidden');
        } else {
            fileNameDisplay.textContent = '';
            fileNameDisplay.classList.add('hidden');
        }
    });

    // --- Event Listener for Generate Button Click ---
    generateBtn.addEventListener('click', function() {
        const topic = document.getElementById('quiz-topic').value.trim();
        const pdfFile = pdfInput.files[0]; // Get the selected file object

        if (!topic) {
            alert('Please enter a quiz topic.');
            document.getElementById('quiz-topic').focus(); // Focus the topic input
            return;
        }

        // Show loading state
        let loadingText = 'Generating your quiz...';
        if (pdfFile) {
            loadingText = `Generating quiz based on topic and PDF: ${pdfFile.name}... (Simulation)`;
        }

        quizPreview.innerHTML = `
            <div class="loading-indicator">
                <div class="spinner"></div>
                <div class="loading-text">${loadingText}</div>
            </div>
        `;

        previewSection.style.display = 'block';
        // Scroll smoothly to the preview section
        previewSection.scrollIntoView({ behavior: 'smooth', block: 'start' });

        // --- Simulate API call with timeout ---
        // Pass the file object (or null) to the generation function
        setTimeout(() => generateAndDisplayQuiz(pdfFile), 2000); // Reduced timeout for faster feedback
    });

    // --- Function to Generate and Display Quiz ---
    function generateAndDisplayQuiz(pdfFile = null) {
        const topic = document.getElementById('quiz-topic').value;
        const numQuestions = parseInt(document.getElementById('num-questions').value, 10); // Ensure number
        const difficulty = document.getElementById('difficulty').value;
        const details = document.getElementById('quiz-details').value; // Get additional details
        const includeExplanations = document.getElementById('include-explanations').checked;
        // Note: Randomize/TimeLimit/QuestionTypes would be handled by the AI in a real scenario

        // --- SIMULATION NOTE ---
        // In a real application, you would:
        // 1. If pdfFile exists: Upload it or use client-side parsing (pdf.js).
        // 2. Combine extracted text/info with 'topic', 'details', 'difficulty', 'numQuestions' etc.
        // 3. Send this structured request to the AI backend.
        // 4. Receive the generated quiz data (e.g., JSON).
        // 5. Parse the JSON and build the HTML using the received questions/answers.
        //
        // This simulation generates placeholder content based mainly on the topic.
        // --- END SIMULATION NOTE ---

        let quizHTML = '';
        let generationNote = '';

        // Create the note about the simulation and PDF usage
         if (pdfFile) {
             generationNote = `<p class="generation-note"><strong>Note:</strong> This quiz is simulated based on the topic '${topic}'. In a real system, content from '${pdfFile.name}' would be analyzed and used for generation along with your instructions.</p>`;
        } else {
             generationNote = `<p class="generation-note"><strong>Note:</strong> This is a simulated quiz generated based on the topic '${topic}' and selected options.</p>`;
        }

        // Generate sample quiz content based on topic (simple matching)
        if (topic.toLowerCase().includes('python')) {
            quizHTML = generatePythonQuiz(numQuestions, includeExplanations);
        } else if (topic.toLowerCase().includes('math') || topic.toLowerCase().includes('calculus')) {
            quizHTML = generateMathQuiz(numQuestions, includeExplanations);
        } else if (topic.toLowerCase().includes('history') || topic.toLowerCase().includes('world war')) {
            quizHTML = generateHistoryQuiz(numQuestions, includeExplanations);
        } else {
            // Generate a generic quiz if topic doesn't match specifics
            quizHTML = generateGenericQuiz(topic, numQuestions, difficulty, includeExplanations);
        }

        // Display the note and the generated quiz HTML
        quizPreview.innerHTML = generationNote + quizHTML;

        // --- Re-attach event listeners to action buttons (important after innerHTML change) ---
        attachActionListeners();
    }

    // --- Function to Attach Listeners to Action Buttons ---
    function attachActionListeners() {
        const downloadBtn = previewSection.querySelector('.download-btn');
        const copyBtn = previewSection.querySelector('.copy-btn');
        const regenerateBtn = previewSection.querySelector('.regenerate-btn');

        if(downloadBtn) {
            downloadBtn.onclick = function() { // Use onclick for simplicity here
                 // TODO: Implement actual PDF generation (e.g., using jsPDF or server-side)
                alert('Simulated Download: Quiz would be downloaded as PDF!');
            };
        }

        if(copyBtn) {
             copyBtn.onclick = function() {
                const quizContentElement = document.getElementById('quiz-preview');
                if(quizContentElement) {
                    // Basic text copy - might need refinement for structure
                    const textToCopy = quizContentElement.innerText || quizContentElement.textContent;
                    navigator.clipboard.writeText(textToCopy).then(() => {
                        alert('Quiz content (text only) copied to clipboard!');
                    }).catch(err => {
                        console.error('Failed to copy text: ', err);
                        alert('Failed to copy quiz content. Your browser might not support this feature or requires permissions.');
                    });
                }
            };
        }

        if(regenerateBtn) {
            regenerateBtn.onclick = function() {
                // Get current file status for regeneration message
                 const currentPdfFile = document.getElementById('pdf-upload').files[0];
                let loadingText = 'Regenerating your quiz...';
                if (currentPdfFile) {
                    loadingText = `Regenerating quiz based on topic and PDF: ${currentPdfFile.name}... (Simulation)`;
                }

                // Show loading state again
                quizPreview.innerHTML = `
                    <div class="loading-indicator">
                        <div class="spinner"></div>
                        <div class="loading-text">${loadingText}</div>
                    </div>
                `;
                // Simulate regeneration
                setTimeout(() => generateAndDisplayQuiz(currentPdfFile), 1500); // Faster regeneration simulation
            };
        }
    }


    // --- Helper Functions for Generating Sample Quiz Content ---

    // Builds HTML for a structured quiz from a questions array
    function buildQuizHtml(questions, title, includeExplanations) {
         let html = `<h3 style="margin-bottom: 20px; font-size: 1.3rem;">${title}</h3>`; // Quiz title

         questions.forEach((q, index) => {
            const questionId = `q${index + 1}`; // Unique ID prefix for the question
            html += `<div class="question-item">`;
            html += `<p class="question-text">${index + 1}. ${q.question}</p>`; // Question number and text

            // Add options (assuming multiple choice for simplicity here)
            q.options.forEach((option, optIndex) => {
                const optionId = `${questionId}_opt${optIndex}`; // Unique ID for each option
                html += `
                    <div class="answer-option">
                        <input type="radio" name="${questionId}" id="${optionId}" value="${option}">
                        <label for="${optionId}">${option}</label>
                    </div>`;
            });

            // Add explanation if requested and available
            if (includeExplanations && q.correct) { // Check if correct answer exists
                 html += `<div class="answer-correct">
                             <strong>Correct Answer:</strong> ${q.correct}
                             ${q.explanation ? `<em>${q.explanation}</em>` : ''}
                          </div>`;
            }
            html += `</div>`; // Close question-item
         });
         return html;
    }

     // Sample Data and Generation Logic (Keep these or replace with better simulation)
     function generatePythonQuiz(numQuestions, includeExplanations) {
         const allQuestions = [
            { question: "What is the output of `print(type([]))`?", options: ["<class 'list'>", "<class 'tuple'>", "<class 'dict'>", "<class 'set'>"], correct: "<class 'list'>", explanation: "`[]` creates an empty list object." },
            { question: "Which keyword is used to define a function in Python?", options: ["fun", "define", "def", "function"], correct: "def", explanation: "The `def` keyword starts a function definition." },
            { question: "What does the `append()` method do to a list?", options: ["Adds an element at the beginning", "Adds an element at the end", "Removes the last element", "Sorts the list"], correct: "Adds an element at the end", explanation: "`append(item)` adds `item` to the end of the list." },
            { question: "How do you write a single-line comment in Python?", options: ["// comment", "/* comment */", "# comment", "-- comment"], correct: "# comment", explanation: "The `#` symbol indicates a comment for the rest of the line." },
            { question: "Which operator is used for exponentiation?", options: ["^", "**", "%", "//"], correct: "**", explanation: "`**` raises the left operand to the power of the right (e.g., `2**3` is 8)." },
            { question: "What is the result of `'Hello' + ' ' + 'World'`?", options: ["HelloWorld", "Hello World", "Error", "Hello + World"], correct: "Hello World", explanation: "The `+` operator concatenates strings." },
            { question: "Which collection type is ordered, mutable, and allows duplicate elements?", options: ["Tuple", "Set", "Dictionary", "List"], correct: "List", explanation: "Lists have all these properties." },
            { question: "What function returns the number of items in a list or string?", options: ["count()", "size()", "length()", "len()"], correct: "len()", explanation: "`len(sequence)` returns its length." },
            { question: "How do you check if a key exists in a dictionary `my_dict`?", options: ["key in my_dict", "my_dict.contains(key)", "exists(my_dict, key)", "my_dict.has(key)"], correct: "key in my_dict", explanation: "The `in` operator checks for key membership." },
            { question: "What boolean operator means 'logical AND'?", options: ["or", "not", "and", "&"], correct: "and", explanation: "`and` returns True only if both operands are True." }
         ];
         // Select the requested number of questions (simple slice)
         const selectedQuestions = allQuestions.slice(0, Math.min(numQuestions, allQuestions.length));
         return buildQuizHtml(selectedQuestions, "Python Basics Quiz", includeExplanations);
     }

     function generateMathQuiz(numQuestions, includeExplanations) {
         const allQuestions = [
            { question: "What is the derivative of `3x^2 + 5x - 2`?", options: ["6x + 5", "3x + 5", "6x^2 + 5", "x^3 + (5/2)x^2 - 2x"], correct: "6x + 5", explanation: "Apply the power rule: d/dx(ax^n) = anx^(n-1)." },
            { question: "Calculate the integral of `2x` dx.", options: ["x^2 + C", "2 + C", "2x^2 + C", "x + C"], correct: "x^2 + C", explanation: "The antiderivative of 2x is x^2. Don't forget the constant of integration C." },
            { question: "What is the value of sin(0)?", options: ["1", "0", "-1", "undefined"], correct: "0", explanation: "On the unit circle, the y-coordinate at 0 radians is 0." },
            { question: "What is `log₁₀(100)`?", options: ["1", "2", "10", "100"], correct: "2", explanation: "Log base 10 asks '10 to what power equals 100?'. 10² = 100." },
            { question: "Solve for x: `4x - 7 = 5`", options: ["x = 1", "x = 2", "x = 3", "x = 12"], correct: "x = 3", explanation: "4x = 5 + 7 => 4x = 12 => x = 12 / 4 = 3." },
            { question: "What is the area of a triangle with base 10 and height 5?", options: ["15", "25", "50", "100"], correct: "25", explanation: "Area = (1/2) * base * height = (1/2) * 10 * 5 = 25." },
            { question: "What is `i^2` where `i` is the imaginary unit?", options: ["1", "-1", "i", "-i"], correct: "-1", explanation: "By definition, the imaginary unit `i` is the square root of -1." },
            { question: "What is the slope of the line `y = -2x + 3`?", options: ["3", "2", "-2", "1/3"], correct: "-2", explanation: "In the slope-intercept form y = mx + b, 'm' is the slope." },
            { question: "Simplify `(x^5) / (x^2)`", options: ["x^7", "x^2.5", "x^3", "x^10"], correct: "x^3", explanation: "When dividing powers with the same base, subtract the exponents: 5 - 2 = 3." },
            { question: "What is 6 factorial (6!)?", options: ["36", "120", "720", "600"], correct: "720", explanation: "6! = 6 * 5 * 4 * 3 * 2 * 1 = 720." }
         ];
         const selectedQuestions = allQuestions.slice(0, Math.min(numQuestions, allQuestions.length));
         return buildQuizHtml(selectedQuestions, "General Mathematics Quiz", includeExplanations);
     }

    function generateHistoryQuiz(numQuestions, includeExplanations) {
         const allQuestions = [
            { question: "In what year did the Battle of Hastings occur?", options: ["1066", "1492", "1776", "800"], correct: "1066", explanation: "William the Conqueror defeated King Harold Godwinson, leading to the Norman conquest of England." },
            { question: "Who was the first President of the United States?", options: ["Thomas Jefferson", "Benjamin Franklin", "George Washington", "John Adams"], correct: "George Washington", explanation: "He served from 1789 to 1797." },
            { question: "The Magna Carta was signed by which English King?", options: ["Henry VIII", "Richard the Lionheart", "John", "Edward I"], correct: "John", explanation: "Signed in 1215, it limited the king's power and established certain legal rights." },
            { question: "Which empire was ruled by Julius Caesar before its transition to an Empire?", options: ["Greek Empire", "Persian Empire", "Roman Republic", "Egyptian Empire"], correct: "Roman Republic", explanation: "Caesar played a critical role in the events that led to the demise of the Roman Republic and the rise of the Roman Empire." },
            { question: "The Renaissance period originated primarily in which country?", options: ["France", "England", "Italy", "Spain"], correct: "Italy", explanation: "Flourishing in cities like Florence from the 14th to the 16th century." },
            { question: "What event is commonly considered the start of World War I?", options: ["Invasion of Poland", "Assassination of Archduke Franz Ferdinand", "Attack on Pearl Harbor", "Sinking of the Lusitania"], correct: "Assassination of Archduke Franz Ferdinand", explanation: "His assassination in Sarajevo in June 1914 triggered a series of alliances." },
            { question: "Who led the Bolshevik Revolution in Russia?", options: ["Joseph Stalin", "Leon Trotsky", "Vladimir Lenin", "Mikhail Gorbachev"], correct: "Vladimir Lenin", explanation: "He led the Bolsheviks to overthrow the provisional government in October 1917." },
            { question: "The 'Age of Exploration' was significantly driven by the search for sea routes to where?", options: ["The Americas", "Africa", "Asia (specifically India and the East Indies)", "Australia"], correct: "Asia (specifically India and the East Indies)", explanation: "European powers sought new routes to the spice trade." },
            { question: "Which ancient civilization built the pyramids at Giza?", options: ["Mesopotamians", "Greeks", "Romans", "Egyptians"], correct: "Egyptians", explanation: "These tombs were built for pharaohs during the Old Kingdom period." },
            { question: "The Cold War was primarily a geopolitical struggle between which two superpowers?", options: ["UK and France", "USA and Soviet Union", "China and Japan", "Germany and Russia"], correct: "USA and Soviet Union", explanation: "Lasting from the end of WWII until the early 1990s." }
         ];
         const selectedQuestions = allQuestions.slice(0, Math.min(numQuestions, allQuestions.length));
        return buildQuizHtml(selectedQuestions, "World History Quiz", includeExplanations);
     }

     // Fallback for unmatched topics
     function generateGenericQuiz(topic, numQuestions, difficulty, includeExplanations) {
         let questions = [];
         for (let i = 1; i <= numQuestions; i++) {
             questions.push({
                 question: `This is sample question ${i} about '${topic}' at a ${difficulty} level. What is the correct choice?`,
                 options: [`Option A for Q${i}`, `Option B (Simulated Correct)`, `Option C for Q${i}`, `Option D for Q${i}`],
                 correct: `Option B (Simulated Correct)`,
                 explanation: `This is a placeholder explanation for why Option B is the correct answer to question ${i} regarding ${topic}.`
             });
         }
         return buildQuizHtml(questions, `Generic Quiz: ${topic}`, includeExplanations);
     }

}); // End DOMContentLoaded