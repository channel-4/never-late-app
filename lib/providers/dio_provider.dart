import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
Dio dio(ref) {
  return Dio();
}
