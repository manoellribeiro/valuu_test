import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'dio_connectivity_request_retried.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {

  final DioConnectivityRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({
    @required this.requestRetrier
    });

  @override
  Future onError(DioError error) async {
    if(_shouldRetry(error)){
       try {
         return requestRetrier.scheduleRequestRetry(error.request);
       } catch (e) {
         return e;
       }
    }
    return error;
  }

  bool _shouldRetry(DioError error){
    return error.type == DioErrorType.DEFAULT &&
        error.error != null &&
        error.error is SocketException;  
  }
}