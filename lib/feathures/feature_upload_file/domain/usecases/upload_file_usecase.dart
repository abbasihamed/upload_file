import 'package:file_upload/feathures/feature_upload_file/domain/entities/upload_file_entity.dart';
import 'package:file_upload/feathures/feature_upload_file/domain/repository/upload_file_repository.dart';

class UploadFileUseCase {
  final UploadFileRepository _uploadFileRepository;
  const UploadFileUseCase(this._uploadFileRepository);

  Future<void> call(UploadFileEntity file) async {
    await _uploadFileRepository.uploadFile(file);
  }
}
