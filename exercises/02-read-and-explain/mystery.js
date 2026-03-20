// This is a simple JavaScript program that greets people

// This is a "function" — think of it like a named recipe
// It takes a "name" as an ingredient and gives back a greeting message
function greet(name) {
  return "Hello, " + name + "! Welcome to the learning lab.";
}

// Another function — this one takes two numbers and adds them together
function addNumbers(a, b) {
  return a + b; // The "return" means "give back this answer"
}

// Run the addNumbers recipe with 5 and 3 — store the answer in "result"
var result = addNumbers(5, 3);

// Run the greet recipe with "learner" — store the message in "message"
var message = greet("learner");

// Print the greeting to the screen
console.log(message);

// Print the math result to the screen
console.log("5 + 3 = " + result);
