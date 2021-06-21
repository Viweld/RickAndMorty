import 'package:rickandmorty/models/info.dart';
import 'package:rickandmorty/models/results.dart';

class Persons {
  Info? info;
  List<Results>? results;

  Persons({
    this.info,
    this.results,
  });

  factory Persons.fromJson(dynamic json) {
    final List<Results> listPersons = [];
    if (json["results"] != null) {
      json["results"].forEach((v) {
        listPersons.add(Results.fromJson(v));
      });
    }

    return Persons(
      info: json["info"] != null ? Info.fromJson(json["info"]) : null,
      results: listPersons,
    );
  }
}
