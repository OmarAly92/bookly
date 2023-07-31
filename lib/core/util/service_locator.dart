import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home_view/data/data_source/home_view_api_request/home_view_api_request.dart';
import '../../features/home_view/data/repository/home_repository.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerLazySingleton<HomeViewApiRequest>(() => HomeViewApiRequest(Dio()));
  sl.registerLazySingleton<HomeRepository>(() => HomeRepository(sl.get()));
}
