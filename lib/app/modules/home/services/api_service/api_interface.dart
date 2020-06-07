import 'package:valuu_app/app/modules/home/models/Feed/FeedItem.dart';
import 'package:valuu_app/app/modules/home/models/Feed/FeedRequest.dart';
import 'package:valuu_app/app/modules/home/models/User/User.dart';

abstract class ApiInterface{

Future<User> login(String email, String password);


Future<FeedRequest> getFeedRequest(String userToken, String organizationId, int pageNumber);

}