import 'package:dio/dio.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'locator.config.dart';

final locator = GetIt.instance;

@InjectableInit()
void configureDependencies() => locator.init();

@module
abstract class ServiceModule {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(baseUrl: Constants.baseUrl));
}
