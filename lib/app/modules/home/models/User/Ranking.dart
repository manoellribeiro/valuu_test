class Ranking {
  int points;
  int position;

  Ranking({this.points, this.position});

  Ranking.fromJson(Map<String, dynamic> json) {
    points = json['points'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['points'] = this.points;
    data['position'] = this.position;
    return data;
  }
}