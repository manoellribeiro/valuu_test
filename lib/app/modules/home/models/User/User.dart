import 'package:valuu_app/app/modules/home/models/User/Ranking.dart';
import 'package:valuu_app/app/modules/home/models/User/Team.dart';

class User {
  String id;
  String fullName;
  String photo;
  String email;
  Ranking ranking;
  List<Teams> teams;
  String acessToken;
  String refreshToken;
  String expiration;

  User(
      {this.id,
      this.fullName,
      this.photo,
      this.email,
      this.ranking,
      this.teams,
      this.acessToken,
      this.refreshToken,
      this.expiration});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    photo = json['photo'];
    email = json['email'];
    ranking =
        json['ranking'] != null ? new Ranking.fromJson(json['ranking']) : null;
    if (json['teams'] != null) {
      teams = new List<Teams>();
      json['teams'].forEach((v) {
        teams.add(new Teams.fromJson(v));
      });
    }
    acessToken = json['acessToken'];
    refreshToken = json['refreshToken'];
    expiration = json['expiration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullName'] = this.fullName;
    data['photo'] = this.photo;
    data['email'] = this.email;
    if (this.ranking != null) {
      data['ranking'] = this.ranking.toJson();
    }
    if (this.teams != null) {
      data['teams'] = this.teams.map((v) => v.toJson()).toList();
    }
    data['acessToken'] = this.acessToken;
    data['refreshToken'] = this.refreshToken;
    data['expiration'] = this.expiration;
    return data;
  }
}




