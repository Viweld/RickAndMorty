class Location {
  final String? name;
  final String? url;

  Location({this.name, this.url});

  factory Location.fromJson(dynamic json) {
    return Location(
      name: json["name"],
      url: json["url"],
    );
  }
}
