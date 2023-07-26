import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:search_bar_with_provider_api/models/pets.dart';
import 'package:http/http.dart' as http;

class PetsProvider extends ChangeNotifier {
  static const apiEndPoint =
      'https://jatinderji.github.io/users_pets_api/users_pets.json';

  bool isLoading = true;
  String error = '';
  DataModel pets = DataModel(data: []);
  DataModel searchedPets = DataModel(data: []);
  String searchText = '';

  getDataFromAPI() async {
    try {
      Response response = await http.get(Uri.parse(apiEndPoint));
      if (response.statusCode == 200) {
        pets = petsFromJson(response.body);
      } else {
        error = response.statusCode.toString();
      }
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;
    updateData();
  }

  updateData() {
    searchedPets.data.clear();
    if (searchText.isEmpty) {
      searchedPets.data.addAll(pets.data);
    } else {
      searchedPets.data.addAll(pets.data
          .where((element) =>
              element.userName.toLowerCase().startsWith(searchText.toLowerCase()))
          .toList());
    }
    notifyListeners();
  }

  search(String username) {
    searchText = username;
    updateData();
  }
}
