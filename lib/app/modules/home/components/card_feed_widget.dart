import 'package:flutter/material.dart';
import 'package:valuu_app/app/config/size_config.dart';
import 'package:valuu_app/app/modules/home/models/Feed/FeedItem.dart';

class FeedCardWidget extends StatelessWidget {


  final FeedItem feedItem;

  const FeedCardWidget({Key key, this.feedItem}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          offset: Offset(2, 2),
          blurRadius: 1,
          color: Colors.black.withOpacity(0.2))],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          ListTile(
            leading: Container(
              height: SizeConfig.imageSizeMultiplier * 15,
              width: SizeConfig.imageSizeMultiplier * 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(feedItem.user.photo)
                )
              ),
            ),
            title: Text(feedItem.user.fullName),
            subtitle: Text(feedItem.activity.description),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 5),
            Text(feedItem.comment),
            SizedBox(height: SizeConfig.heightMultiplier * 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Icon(
                Icons.textsms,
                color: Colors.grey),
              Icon(Icons.thumb_up, color: feedItem.userLiked ? Color(0xff512AB1): Colors.grey ),
              Icon(Icons.share, color: Colors.grey,),
            ],),
            SizedBox(height: SizeConfig.heightMultiplier * 2.5),
        ],),
    );
  }
}