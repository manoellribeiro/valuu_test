import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:valuu_app/app/config/size_config.dart';
import 'package:valuu_app/app/modules/home/components/card_feed_widget.dart';
import 'package:valuu_app/app/modules/home/components/home_tab.dart';
import 'package:valuu_app/app/modules/home/models/Feed/FeedItem.dart';
import 'package:valuu_app/app/modules/home/view/home/controller/home_controller.dart';


class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> with SingleTickerProviderStateMixin {

  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener((){
      if(_scrollController.position.atEdge && _scrollController.position.pixels != 0.0){
        controller.fetchMoreFeedItems();
      }
    });
    _tabController = TabController(
      vsync: this,
      length: 4
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
            )),
          title: Observer(builder: (_) {
            if(controller.user == null){
              return CircularProgressIndicator();
            }
            return Text(
              "Olá ${controller.user.fullName}",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black
                ),
            );
          }),
          backgroundColor: Colors.white,
          bottom: TabBar(
            controller: _tabController,
            labelPadding: EdgeInsets.zero,
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              HomeTabWidget(
                color: Color(0xff512AB1),
                title: "Feed",
                textColor: Colors.white
                ),
              HomeTabWidget(
                color: Colors.white,
                title: "Pontos",
                textColor: Colors.grey.shade400,
                ),
              HomeTabWidget(
                color: Colors.white,
                title: "Objetivos",
                textColor: Colors.grey.shade400,
                ),
              HomeTabWidget(
                color: Colors.white,
                title: "Prêmios",
                textColor: Colors.grey.shade400,
                ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Observer(
              builder: (_) {
                if(controller.feedItemsList == null){
                  return Center(
                    child: SpinKitFadingCube(
                      color: Color(0xff512AB1)
                    ));
                }
                return ListView.builder(
                    controller: _scrollController,
                    itemCount: controller.feedItemsList.length + 1,
                    itemBuilder: (_, index) {
                      bool isTheLastElement = (index == controller.feedItemsList.length);
                      if(isTheLastElement){
                        if(controller.thereAreMoreItems()){
                          return SpinKitThreeBounce(
                            size: SizeConfig.imageSizeMultiplier * 7,
                            color: Color(0xff512AB1)
                          );
                        } else return Container();
                      } else {
                        FeedItem feedItem = controller.feedItemsList[index];
                        return FeedCardWidget(
                          feedItem: feedItem,
                        );
                      }
                    });
              },
            ),
            Icon(
              Icons.texture
              ),
            Icon(
              Icons.texture
              ),
            Icon(
              Icons.texture
              ),
          ],
        ));
  }
}


