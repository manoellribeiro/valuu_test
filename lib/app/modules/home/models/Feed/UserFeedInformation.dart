class UserFeedInformation {
	String id;
	String fullName;
	String photo;

	UserFeedInformation({this.id, this.fullName, this.photo});

	UserFeedInformation.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		fullName = json['fullName'];
		photo = json['photo'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['fullName'] = this.fullName;
		data['photo'] = this.photo;
		return data;
	}
}
