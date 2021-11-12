// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// class FetchData {
//   Future<List<dynamic>> getResult() async {
//     var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
//     http.Response response = await http.get(url);
//     var data;
//     if (response.statusCode == 200) {
//       var body = convert.jsonEncode(response.body);
//       data = body["completed"];
//     } else {
//       print('request failed ${response.statusCode}');
//     }

//     return data;
//   }
// }
