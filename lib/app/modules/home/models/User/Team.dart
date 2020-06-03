class Teams {
  String id;
  String name;
  String organizationId;
  String organizationName;
  String image;

  Teams(
      {this.id,
      this.name,
      this.organizationId,
      this.organizationName,
      this.image});

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    organizationId = json['organizationId'];
    organizationName = json['organizationName'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['organizationId'] = this.organizationId;
    data['organizationName'] = this.organizationName;
    data['image'] = this.image;
    return data;
  }
}