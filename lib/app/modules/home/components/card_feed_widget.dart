import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:valuu_app/app/config/size_config.dart';
import 'package:valuu_app/app/modules/home/models/Feed/FeedItem.dart';

class FeedCardWidget extends StatelessWidget {


  final FeedItem feedItem;

  const FeedCardWidget({Key key, this.feedItem}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          offset: Offset(2, 2),
          blurRadius: 4,
          color: Colors.black.withOpacity(0.1))],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            title: Text(
              feedItem.user.fullName,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20
                ),
              ),
            subtitle: Text(
              feedItem.activity.description,
              style: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w400,
                fontSize: 18
                ),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
              child: Text(
                feedItem.comment,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w400,
                  fontSize: 18
                  ),
                ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Icon(
                Icons.speaker_notes,
                color: Colors.grey.shade400,
                size: SizeConfig.imageSizeMultiplier * 6,
              ),
              Icon(
                Icons.thumb_up,
                size: SizeConfig.imageSizeMultiplier * 6,
                color: feedItem.userLiked ? Color(0xff512AB1): Colors.grey.shade400
              ),
              Opacity(
                opacity: feedItem.isTheUser ? 1 : 0,
                child: Icon(
                Icons.share,
                size: SizeConfig.imageSizeMultiplier * 6,
                color: Colors.grey.shade400
                )),
              SizedBox(width: SizeConfig.widthMultiplier * 3,),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "+100",
                      style: TextStyle(color: Colors.green),
                    ),
                    LinearPercentIndicator(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      progressColor: Colors.green,
                      percent: 0.8,
                      animation: true,
                      animationDuration: 500,
                      lineHeight: SizeConfig.heightMultiplier * 1.2,
                      width: SizeConfig.widthMultiplier * 15,
                    ),
                  ],
                ),
            ],),
            SizedBox(height: SizeConfig.heightMultiplier * 2.5),
        ],),
    );
  }
}