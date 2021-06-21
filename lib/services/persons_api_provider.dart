import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rickandmorty/models/persons.dart';

class PersonsProvider {
  Future<Persons> getPersons() async {
    final response = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );
    if (response.statusCode == 200) {
      final dynamic personsJson = json.decode(response.body);
      print(Persons.fromJson(personsJson).results![3].name);
      return Persons.fromJson(personsJson);
    } else {
      throw Exception('Error fetching Persons');
    }
  }
}
