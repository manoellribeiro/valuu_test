import 'Activity.dart';
import 'UserFeedInformation.dart';

class FeedItem {
	String id;
	String comment;
	String image;
	Activity activity;
	UserFeedInformation user;
	bool isTheUser;
	bool userLiked;

	FeedItem({this.id, this.comment, this.image, this.activity, this.user, this.isTheUser, this.userLiked});

	FeedItem.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		comment = json['comment'];
		image = json['image'];
		activity = json['activity'] != null ? new Activity.fromJson(json['activity']) : null;
		user = json['user'] != null ? new UserFeedInformation.fromJson(json['user']) : null;
		isTheUser = json['isTheUser'];
		userLiked = json['userLiked'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['comment'] = this.comment;
		data['image'] = this.image;
		if (this.activity != null) {
      data['activity'] = this.activity.toJson();
    }
		if (this.user != null) {
      data['user'] = this.user.toJson();
    }
		data['isTheUser'] = this.isTheUser;
		data['userLiked'] = this.userLiked;
		return data;
	}
}



