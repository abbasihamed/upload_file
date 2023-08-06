import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
    print(event.file);
    _uploadFileEntity = UploadFileEntity(file: event.file);
    uploadFileUseCase(_uploadFileEntity);
  }
}
