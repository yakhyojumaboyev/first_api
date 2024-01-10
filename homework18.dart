///Task 1.
// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

// class PlayerModel {
//   final int id;
//   final String fullName;
//   final String position;

//   PlayerModel(
//       {required this.id, required this.fullName, required this.position});

//   factory PlayerModel.fromJson(Map<String, dynamic> json) {
//     return PlayerModel(
//       id: json['id'],
//       fullName: json['full_name'],
//       position: json['position'],
//     );
//   }
// }

// class TeamModel {
//   final int id;
//   final String name;
//   final String abbreviation;

//   TeamModel({required this.id, required this.name, required this.abbreviation});

//   factory TeamModel.fromJson(Map<String, dynamic> json) {
//     return TeamModel(
//       id: json['id'],
//       name: json['name'],
//       abbreviation: json['abbreviation'],
//     );
//   }
// }

// class MyFutureMethods {
//   late StreamController<List<PlayerModel>> _controller1;
//   late StreamController<List<TeamModel>> _controller2;

//   MyFutureMethods() {
//     _controller1 = StreamController<List<PlayerModel>>();
//     _controller2 = StreamController<List<TeamModel>>();
//   }

//   Future<void> getPlayers() async {
//     try {
//       final response = await HttpClient()
//           .getUrl(Uri.parse('https://www.balldontlie.io/api/v1/players'));
//       final responseBody = await response.close();
//       final jsonData = json.decode(await utf8.decodeStream(responseBody));

//       final List<PlayerModel> players = (jsonData['data'] as List)
//           .map((playerJson) => PlayerModel.fromJson(playerJson))
//           .toList();

//       _controller1.add(players);
//     } catch (error) {
//       print('Error getting players: $error');
//     }
//   }

//   Future<void> getTeams() async {
//     try {
//       final response = await HttpClient()
//           .getUrl(Uri.parse('https://www.balldontlie.io/api/v1/teams'));
//       final responseBody = await response.close();
//       final jsonData = json.decode(await utf8.decodeStream(responseBody));

//       final List<TeamModel> teams = (jsonData['data'] as List)
//           .map((teamJson) => TeamModel.fromJson(teamJson))
//           .toList();

//       _controller2.add(teams);
//     } catch (error) {
//       print('Error getting teams: $error');
//     }
//   }

//   Stream<List<PlayerModel>> get playerStream => _controller1.stream;
//   Stream<List<TeamModel>> get teamStream => _controller2.stream;
// }

// void main() async {
//   final myFutureMethods = MyFutureMethods();

//   myFutureMethods.playerStream.listen((players) {
//     print('Players: $players');
//   });

//   myFutureMethods.teamStream.listen((teams) {
//     print('Teams: $teams');
//   });

//   await myFutureMethods.getPlayers();
//   await myFutureMethods.getTeams();
// }

///Task 2.
// import 'dart:async';

// class Conveyer {
//   final StreamController<int> _controller = StreamController<int>();
//   final List<int> list1;
//   final List<String> list2;

//   Conveyer({required this.list1, required this.list2});

//   Future<void> getAllData() async {
//     for (int num in list1) {
//       await Future.delayed(Duration(seconds: 2));
//       _controller.sink.add(num);
//     }

//     for (String name in list2) {
//       await Future.delayed(Duration(seconds: 2));
//       _controller.sink.add(name.length);
//     }
//   }

//   Stream<int> get dataStream => _controller.stream;

//   void dispose() {
//     _controller.close();
//   }
// }

// void main() async {
//   final list1 = [1, 2, 3, 4, 5];
//   final list2 = ['John', 'Alice', 'Bob'];

//   final conveyer = Conveyer(list1: list1, list2: list2);

//   await conveyer.getAllData();

//   await for (int data in conveyer.dataStream) {
//     print('Received data: $data');
//   }

//   conveyer.dispose();
// }


///Task 3.
// abstract class Animal {
//   String getName();
//   int getAge();
// }

// class Dog extends Animal {
//   String color;

//   Dog({required this.color});

//   @override
//   String getName() {
//     return 'Dog';
//   }

//   @override
//   int getAge() {
//     return 2;
//   }
// }

// void main() {
//   Dog myDog = Dog(color: 'Brown');

//   print('Name: ${myDog.getName()}');
//   print('Age: ${myDog.getAge()} years');
//   print('Color: ${myDog.color}');
// }
