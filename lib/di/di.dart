import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:texnomart_clone_flutter/data/repository/app_repository.dart';
import 'package:texnomart_clone_flutter/data/repository/app_repository_impl.dart';
import 'package:texnomart_clone_flutter/data/source/network/api_client.dart';


final getIt = GetIt.instance;
final  dio = Dio(
  BaseOptions(
    //baseUrl: 'https://gateway.texnomart.uz',
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    contentType: 'application/json',
    receiveDataWhenStatusError: true
  )
);

void setup() {
  getIt.registerSingleton<ApiClient>(ApiClient(dio));
  getIt.registerSingleton<AppRepository>(AppRepositoryImpl());
}