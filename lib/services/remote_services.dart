import 'package:http/http.dart' as http;
import 'package:ceibatest/models/user.dart';

class RemoteServices {
  
  static var client = http.Client();

  static Future<List<User>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      return [];
    }
  }
}
