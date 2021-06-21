import 'package:rickandmorty/models/location.dart';
import 'package:rickandmorty/models/origin.dart';

class Results {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Origin? origin;
  Location? location;
  String? image;
  List<String>? episode;
  String? url;
  String? created;

  Results(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      this.episode,
      this.url,
      this.created});

  factory Results.fromJson(dynamic json) {
    return Results(
      id: json["id"],
      name: json["name"],
      status: json["status"],
      species: json["species"],
      type: json["type"],
      gender: json["gender"],
      origin: json["origin"] != null ? Origin.fromJson(json["origin"]) : null,
      location:
          json["location"] != null ? Location.fromJson(json["location"]) : null,
      image: json["image"],
      episode: json["episode"] != null ? json["episode"].cast<String>() : [],
      url: json["url"],
      created: json["created"],
    );
  }
}
