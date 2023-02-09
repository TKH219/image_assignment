import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'data/remote/impl/photo_client_impl.dart';
import 'data/remote/photo_client.dart';
import 'data/repositories/photo_repository_impl.dart';
import 'domain/repositories/photo_repository.dart';
import 'domain/use_cases/impl/photo_use_case_impl.dart';
import 'domain/use_cases/photo_use_case.dart';
import 'features/get_list_photos/controller/get_list_photos_controller.dart';

final getIt = GetIt.instance;

void injection() {

  /// Controller
  Get.lazyPut(() => GetListPhotosController(getIt()), fenix: true);

  /// Use case
  getIt.registerLazySingleton<PhotoUseCase>(() => PhotoUseCaseImpl(getIt()));

  /// Repository
  getIt.registerLazySingleton<PhotoRepository>(() => PhotoRepositoryImpl(getIt()));

  /// Client
  getIt.registerLazySingleton<PhotoClient>(() => PhotoClientImpl());
}
