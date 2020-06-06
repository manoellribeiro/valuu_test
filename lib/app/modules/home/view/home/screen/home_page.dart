import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valuu_app/app/modules/home/components/card_feed_widget.dart';
import 'package:valuu_app/app/modules/home/models/Feed/FeedItem.dart';
import 'package:valuu_app/app/modules/home/view/home/controller/home_controller.dart';


class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
            title: Observer(builder: (_) {
              if(controller.user == null){
                return CircularProgressIndicator();
              }
              return Text(
                "Olá ${controller.user.fullName}",
                style: TextStyle(color: Colors.black),
              );
            }),
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelPadding: EdgeInsets.zero,
              indicatorColor: Colors.transparent,
              tabs: <Widget>[
                Tab(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 30,
                      child: Center(child: Text("Feed")),
                      decoration: BoxDecoration(
                          color: Color(0xff512AB1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 30,
                      child: Center(
                          child: Text(
                        "Pontos",
                        style: TextStyle(color: Colors.grey.shade500),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 30,
                      child: Center(
                          child: Text(
                        "Objetivos",
                        style: TextStyle(color: Colors.grey.shade500),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 30,
                      child: Center(
                          child: Text(
                        "Prêmios",
                        style: TextStyle(color: Colors.grey.shade500),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Observer(
                builder: (_) {
                  if(controller.feedItemsList == null){
                    return Center(child: CircularProgressIndicator());
                  }
                  return ListView.builder(
                      itemCount: controller.feedItemsList.length,
                      itemBuilder: (_, index) {
                        FeedItem feedItem =
                            controller.feedItemsList[index];
                        return FeedCardWidget(
                          feedItem: feedItem,
                        );
                      });
                },
              ),
              Icon(Icons.texture),
              Icon(Icons.texture),
              Icon(Icons.texture),
            ],
          )),
    );
  }
}
