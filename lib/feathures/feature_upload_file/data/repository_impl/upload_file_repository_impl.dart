import 'package:file_upload/feathures/feature_upload_file/data/data_source/remote/upload_service.dart';
import 'package:file_upload/feathures/feature_upload_file/domain/entities/upload_file_entity.dart';
import 'package:file_upload/feathures/feature_upload_file/domain/repository/upload_file_repository.dart';

class UploadFileRepositoryImpl implements UploadFileRepository {
  final UploadFileService _uploadFileService;
  const UploadFileRepositoryImpl(this._uploadFileService);

  @override
  uploadFile(UploadFileEntity file) async {
    await _uploadFileService.uploadFile(file.file, file.type);
  }
}
