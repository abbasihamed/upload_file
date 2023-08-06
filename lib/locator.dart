import 'package:file_upload/feathures/feature_upload_file/data/data_source/remote/upload_service.dart';
import 'package:file_upload/feathures/feature_upload_file/data/repository_impl/upload_file_repository_impl.dart';
import 'package:file_upload/feathures/feature_upload_file/domain/repository/upload_file_repository.dart';
import 'package:file_upload/feathures/feature_upload_file/domain/usecases/upload_file_usecase.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setup() {
  uploadLocator();
}

uploadLocator() {
  locator.registerLazySingleton<UploadFileService>(() => UploadFileService());
  locator.registerLazySingleton<UploadFileRepository>(
      () => UploadFileRepositoryImpl(locator()));
  locator.registerLazySingleton<UploadFileUseCase>(
      () => UploadFileUseCase(locator()));
}
