// import 'package:dio/dio.dart';

// class ApiService {
//   final _baseUrl = 'http://localhost:3000/api/';
//   final Dio _dio;
//   ApiService(this._dio);

//   Future<Map<String, dynamic>> get({required String endPoint}) async {
//     var response = await _dio.get('$_baseUrl$endPoint ');
//     print("????????????????????????????");
//     print(response);
//     return response.data;
//   }
// }
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final _baseUrl = 'http://10.0.2.2:3000/api/';

  Future<List<dynamic>> get(
      {required String endPoint, Map<String, dynamic>? queryParameters}) async {
    print("uri????????????????????????");
    print(Uri.parse('$_baseUrl$endPoint'));
    Uri uri = Uri.parse('$_baseUrl$endPoint');

    if (queryParameters != null && queryParameters.isNotEmpty) {
      uri = uri.replace(queryParameters: queryParameters);
    }

    var response = await http.get(uri);

    List<dynamic> responseBody = [];

    responseBody = json.decode(response.body);
    // If the server returns a 200 OK response, parse the JSON and return it

    return responseBody;
  }
}
// Future<void> fetchAdsData() async {
//     try {
//       final response =
//           await http.get(Uri.parse('http://10.0.2.2:3000/api/ads'));
//       if (response.statusCode == 200) {
//         final List<dynamic> jsonData = json.decode(response.body);
//         print("????????????????????????????");
//         print(response.body);
//         setState(() {
//           adsData = jsonData.map((json) => AdsModel.fromJson(json)).toList();
//         });
//       } else {
//         throw Exception(
//             'Failed to load data, status code: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error fetching ads data: $e');
//     }
//   }
