// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$feedRequestAtom = Atom(name: '_HomeControllerBase.feedRequest');

  @override
  FeedRequest get feedRequest {
    _$feedRequestAtom.reportRead();
    return super.feedRequest;
  }

  @override
  set feedRequest(FeedRequest value) {
    _$feedRequestAtom.reportWrite(value, super.feedRequest, () {
      super.feedRequest = value;
    });
  }

  final _$feedItemsListAtom = Atom(name: '_HomeControllerBase.feedItemsList');

  @override
  ObservableList<FeedItem> get feedItemsList {
    _$feedItemsListAtom.reportRead();
    return super.feedItemsList;
  }

  @override
  set feedItemsList(ObservableList<FeedItem> value) {
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

  final _$fetchMoreFeedItemsAsyncAction =
      AsyncAction('_HomeControllerBase.fetchMoreFeedItems');

  @override
  Future<dynamic> fetchMoreFeedItems() {
    return _$fetchMoreFeedItemsAsyncAction
        .run(() => super.fetchMoreFeedItems());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  bool thereAreMoreItems() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.thereAreMoreItems');
    try {
      return super.thereAreMoreItems();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
feedRequest: ${feedRequest},
feedItemsList: ${feedItemsList},
user: ${user}
    ''';
  }
}
