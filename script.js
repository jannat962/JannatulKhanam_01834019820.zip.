
// Add event listener for form submission
document.querySelector('#checkout-form').addEventListener('submit', function (event) {
  event.preventDefault(); // Prevent form submission to check the validation first
  
  // Get all required fields
  const requiredFields = document.querySelectorAll('[required]');
  
  // Loop through the required fields and validate them
  requiredFields.forEach(function (field) {
    if (field.value.trim() === '') {
      // Add the invalid class if the field is empty
      field.classList.add('is-invalid');
    } else {
      // Remove the invalid class if the field is filled
      field.classList.remove('is-invalid');
    }
  });

  // Check if the form is valid (if all required fields are completed)
  const isFormValid = document.querySelectorAll('.is-invalid').length === 0;

  if (isFormValid) {
    // Submit the form if all required fields are valid
    this.reset(); // Reset the form fields
    alert('Form submitted successfully!');
  }
});
