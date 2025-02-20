```dart
Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      // Return null or a specific error object for better error handling. 
      print('Error: HTTP Status code ${response.statusCode}');
      return null; // or throw Exception('Failed to load data. Status code ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Return null to signal the error, or rethrow the exception
    return null; //or rethrow;
  }
}
```