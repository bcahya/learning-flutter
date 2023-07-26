import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider_with_rest_api/models/data_model.dart';

class Services {
  Future<DataModel> getData(context) async {
    late DataModel data;
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments/1'),
      );
      if (response.statusCode == 200) {
        final item = json.decode(response.body);
        data = DataModel.fromJson(item);
      } else {
        print('Error occured');
      }
    } catch (e) {
      print('Error occured$e');
    }
    return data;
  }
}
