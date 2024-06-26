import 'package:nba/model/player.dart';

class Team {
  final int id;
  final String conference;
  final String name;
  final String imageUrl;
  List<Player> players;

  Team({
    required this.id,
    required this.conference,
    required this.name,
    required this.imageUrl,
    this.players = const [],
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    String additive = "";
    if (json['full_name'].replaceAll(' ', '-').toLowerCase() ==
        "denver-nuggets") {
      additive = "-2018";
    }
    return Team(
      id: json['id'],
      conference: json['conference'],
      name: json['full_name'],
      imageUrl:
          'https://loodibee.com/wp-content/uploads/nba-${json['full_name'].replaceAll(' ', '-').toLowerCase()}-logo$additive-150x150.png',
    );
  }
}
