import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  http.Response response =
      await http.get(Uri.parse("https://ipinfo.io/161.185.160.93/geo"));

  Map<String, Object?> json = jsonDecode(response.body) as Map<String, Object?>;

  Country country = Country.fromJson(json);

  print(country.ip);
}

class Country {
  final String ip;
  final String city;
  final String region;
  final String country;
  final String loc;
  final String org;
  final String postal;
  final String timezone;
  final String readme;

  Country(
      {required this.ip,
      required this.city,
      required this.country,
      required this.region,
      required this.readme,
      required this.loc,
      required this.org,
      required this.postal,
      required this.timezone});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      ip: json['ip'] ?? "",
      city: json['city'] ?? "",
      country: json['country'] ?? "",
      region: json['region'] ?? "",
      readme: json['readme'] ?? "",
      loc: json['loc'] ?? "",
      org: json['org'] ?? "",
      postal: json['postal'] ?? "",
      timezone: json['timezone'] ?? "",
    );
  }
}
