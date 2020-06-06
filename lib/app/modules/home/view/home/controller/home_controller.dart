import 'package:mobx/mobx.dart';
import 'package:valuu_app/app/modules/home/models/Feed/FeedItem.dart';
import 'package:valuu_app/app/modules/home/repository/user_repository.dart';
import 'package:valuu_app/app/modules/home/services/api_service/api_interface.dart';
import '../../../models/User/User.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  
  final ApiInterface apiService;
  final UserRepository userRepository;
  
  @observable
  List<FeedItem> feedItemsList;

  @observable
  User user;


  _HomeControllerBase({this.apiService,this.userRepository}){
    getUserData().whenComplete((){
      fetchFeedItems();
    });
  }

  @action
  Future getUserData() async {
    user = await userRepository.getUserData();
  }

  @action
  Future fetchFeedItems() async {
    feedItemsList =  await apiService.getFeedItems(user.acessToken, user.teams[1].organizationId, 1);
  }

  /* @action
  fetchFeedItems() async{
    feedItemsList = apiService.getFeedItems("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6InJhaXNhc3BhZ25vbDZAZ21haWwuY29tIiwiRnVsbE5hbWUiOiJSYWlzYSBTcGFnbm9sIiwibmFtZWlkIjoiMDIzYTI2MGUtZTFmNi00MTlmLTgyMmUtN2YzODMyNGYzMjI4IiwiZW1haWwiOiJyYWlzYXNwYWdub2w2QGdtYWlsLmNvbSIsIm5iZiI6MTU5MTIwNDg2MSwiZXhwIjoxNTkyNTAwODYxLCJpYXQiOjE1OTEyMDQ4NjF9.X3tIMx4dsgPdtsFLIw9gCTMBddsKL7HTd2MPnDOQhk0", "a70b8695-db6e-4539-972a-4c8cecc60b63", 1).asObservable();
  } */
}
