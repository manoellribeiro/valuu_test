// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$feedItemsListAtom = Atom(name: '_HomeControllerBase.feedItemsList');

  @override
  List<FeedItem> get feedItemsList {
    _$feedItemsListAtom.reportRead();
    return super.feedItemsList;
  }

  @override
  set feedItemsList(List<FeedItem> value) {
    _$feedItemsListAtom.reportWrite(value, super.feedItemsList, () {
      super.feedItemsList = value;
    });
  }

  final _$userAtom = Atom(name: '_HomeControllerBase.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$getUserDataAsyncAction =
      AsyncAction('_HomeControllerBase.getUserData');

  @override
  Future<dynamic> getUserData() {
    return _$getUserDataAsyncAction.run(() => super.getUserData());
  }

  final _$fetchFeedItemsAsyncAction =
      AsyncAction('_HomeControllerBase.fetchFeedItems');

  @override
  Future<dynamic> fetchFeedItems() {
    return _$fetchFeedItemsAsyncAction.run(() => super.fetchFeedItems());
  }

  @override
  String toString() {
    return '''
feedItemsList: ${feedItemsList},
user: ${user}
    ''';
  }
}
