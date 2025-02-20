# Improper Exception Handling in Asynchronous Dart

This repository demonstrates a common error in Dart: improper exception handling within asynchronous functions using `async` and `await`. The `fetchData` function fetches data from an API.  The original code lacks robust error handling, potentially causing issues for calling functions.

The `bug.dart` file contains the buggy code.  `bugSolution.dart` provides an improved version with better error handling. The solution uses a `try-catch` block to handle potential exceptions during the API call and provides a more informative error message.