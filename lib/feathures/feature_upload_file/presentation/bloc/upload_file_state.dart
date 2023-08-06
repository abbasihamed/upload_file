part of 'upload_file_bloc.dart';

sealed class UploadFileState extends Equatable {
  const UploadFileState();
  
  @override
  List<Object> get props => [];
}

final class UploadFileInitial extends UploadFileState {}
