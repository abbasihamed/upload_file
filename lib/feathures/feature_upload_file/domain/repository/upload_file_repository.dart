import 'package:file_upload/feathures/feature_upload_file/domain/entities/upload_file_entity.dart';

abstract class UploadFileRepository {
  Future<void> uploadFile(UploadFileEntity file);
}
