class Activity {
	String id;
	String description;

	Activity({this.id, this.description});

	Activity.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		description = json['description'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['description'] = this.description;
		return data;
	}
}