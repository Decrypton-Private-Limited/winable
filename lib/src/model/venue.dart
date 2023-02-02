class Venue {
  String venueId = "";
  String name = "";
  String location = "";
  String country = "";
  String timezone = "";

  Venue({
      required this.venueId,
      required this.name,
      required this.location,
      required this.country,
      required this.timezone,});

  Venue.fromJson(dynamic json) {
    venueId = json['venue_id'];
    name = json['name'];
    location = json['location'];
    country = json['country'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['venue_id'] = venueId;
    map['name'] = name;
    map['location'] = location;
    map['country'] = country;
    map['timezone'] = timezone;
    return map;
  }

}