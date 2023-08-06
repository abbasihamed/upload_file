part of 'upload_file_bloc.dart';

sealed class UploadFileEvent extends Equatable {
  const UploadFileEvent();

  @override
  List<Object> get props => [];
}

class UploadfileSendFileEvent extends UploadFileEvent {
  final Uint8List file;
  const UploadfileSendFileEvent(this.file);

  @override
  List<Object> get props => [file];
}
