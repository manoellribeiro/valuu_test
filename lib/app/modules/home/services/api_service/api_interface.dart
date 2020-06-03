import 'package:valuu_app/app/modules/home/models/Feed/FeedItem.dart';
import 'package:valuu_app/app/modules/home/models/User/User.dart';

abstract class ApiInterface{

Future<User> login(String email, String password);


Future<List<FeedItem>> getFeedItems(String userToken, String organizationId, int pageNumber);

}