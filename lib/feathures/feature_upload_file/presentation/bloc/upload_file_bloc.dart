import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_upload/core/utils/enums.dart';
import 'package:file_upload/feathures/feature_upload_file/domain/entities/upload_file_entity.dart';
import 'package:file_upload/feathures/feature_upload_file/domain/usecases/upload_file_usecase.dart';
import 'package:file_upload/locator.dart';

part 'upload_file_event.dart';
part 'upload_file_state.dart';

class UploadFileBloc extends Bloc<UploadFileEvent, UploadFileState> {
  final uploadFileUseCase = locator<UploadFileUseCase>();
  late final UploadFileEntity _uploadFileEntity;
  UploadFileBloc() : super(UploadFileInitial()) {
    on<UploadFileEvent>((event, emit) {});
    on<UploadfileSendFileEvent>(sendFile);
  }

  FutureOr<void> sendFile(
      UploadfileSendFileEvent event, Emitter<UploadFileState> emit) {
    _uploadFileEntity =
        UploadFileEntity(file: event.file, type: event.fileType.getEnumInt());
    uploadFileUseCase(_uploadFileEntity);
  }
}

extension ConvertFileEnum on FileTypeEnum {
  getEnumInt() {
    if (this == FileTypeEnum.meli) {
      return 1;
    }
    if (this == FileTypeEnum.meliBack) {
      return 2;
    }
    if (this == FileTypeEnum.signature) {
      return 3;
    } else {
      return 4;
    }
  }
}
