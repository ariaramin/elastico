import 'package:dio/dio.dart';
import 'package:elastico/app/core/constants/constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zarinpal/zarinpal.dart';
import 'locator.config.dart';

final locator = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies() async => await locator.init();

@module
abstract class ServiceModule {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(baseUrl: Constants.baseUrl));

  @lazySingleton
  PocketBase get pb => PocketBase(Constants.baseUrl);

  @injectable
  PaymentRequest get paymentRequest => PaymentRequest();

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();
}
