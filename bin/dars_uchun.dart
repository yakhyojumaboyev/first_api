// import 'dart:convert';
// import 'package:http/http.dart' as http;

// Future<void> main() async {
//   http.Response response = await http.get(Uri.parse('https://catfact.ninja/fact'));

//   Map<String, Object?> json = jsonDecode(response.body) as Map<String, Object?>;

//   CatFact cat = CatFact.fromJson(json);

//   print(cat.fact);
//   print(cat.length);
// }

// class CatFact {
//   final String fact;
//   final int length;

//   CatFact({required this.fact, required this.length});

//   factory CatFact.fromJson(Map<String, dynamic> json) {
//     return CatFact(
//       fact: json['fact'],
//       length: json['length'],
//     );
//   }
// }

///Task 2.
// class CountryData {
//   final String? postCode;
//   final String countryName;
//   final String countryAbbreviation;
//   final List<PlacesModule> places;

//   CountryData({
//     required this.postCode,
//     required this.countryName,
//     required this.countryAbbreviation,
//     required this.places,
//   });

//   factory CountryData.fromJson(Map<String, dynamic> json) {
//     return CountryData(
//       postCode: json['post code'],
//       countryName: json['country'],
//       countryAbbreviation: json['country abbreviation'],
//       places: List<PlacesModule>.from(
//           json['places'].map((e) => PlacesModule.fromJson(e))).toList(),
//     );
//   }
// }

// class PlacesModule {
//   final String placeName;
//   final String longitude;
//   final String state;
//   final String stateAbbreviation;
//   final String latitude;

//   PlacesModule({
//     required this.placeName,
//     required this.longitude,
//     required this.state,
//     required this.stateAbbreviation,
//     required this.latitude,
//   });

//   factory PlacesModule.fromJson(Map<String, dynamic> json) {
//     return PlacesModule(
//       placeName: json['place name'],
//       longitude: json['longitude'],
//       state: json['state'],
//       stateAbbreviation: json['state abbreviation'],
//       latitude: json['latitude'],
//     );
//   }
// }

// Future<void> main() async {
//   http.Response response =
//       await http.get(Uri.parse('https://api.zippopotam.us/us/33162'));

//   Map<String, Object?> json = jsonDecode(response.body) as Map<String, Object?>;

//   CountryData countryData = CountryData.fromJson(json);

//   print(countryData.countryName);
// }

///Task 3.
// class UniversityData {
//   final List<dynamic> webPages;
//   final String alphaTwoCode;
//   final List<dynamic> domains;
//   final Object? stateProvince;
//   final String country;
//   final String name;

//   UniversityData(this.stateProvince,
//       {required this.webPages,
//       required this.alphaTwoCode,
//       required this.domains,
//       required this.country,
//       required this.name});

//   factory UniversityData.fromJson(Map<String, dynamic> json) {
//     return UniversityData(
//       json['state-province'] ?? '',
//       webPages: json['web pages'] ?? [],
//       alphaTwoCode: json['alphaTwoCode'] ?? '',
//       domains: json['domains'] ?? [],
//       country: json['country'] ?? '',
//       name: json['name'] ?? '',
//     );
//   }
// }

// Future<void> main() async {
//   http.Response response = await http.get(Uri.parse(
//       'http://universities.hipolabs.com/search?country=United+States'));

//   final decodeData = jsonDecode(response.body);

//   if (response.statusCode == 200) {
//     List<UniversityData> universities =
//         (decodeData as List).map((e) => UniversityData.fromJson(e)).toList();
//     print(universities[0].name);
//   } else {
//     throw Exception();
//   }
// }
