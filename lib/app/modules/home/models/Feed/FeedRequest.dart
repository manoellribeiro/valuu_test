import 'package:valuu_app/app/modules/home/models/Feed/FeedItem.dart';

class FeedRequest {
  int pageIndex;
  int totalPages;
  List<FeedItem> items;

  FeedRequest({this.pageIndex, this.totalPages, this.items});

  FeedRequest.fromJson(Map<String, dynamic> json) {
    pageIndex = json['pageIndex'];
    totalPages = json['totalPages'];
    if (json['items'] != null) {
      items = new List<FeedItem>();
      json['items'].forEach((v) {
        items.add(new FeedItem.fromJson(v));
      });
    }
  }
  
  }