import 'dart:typed_data';

import 'package:equatable/equatable.dart';

class UploadFileEntity extends Equatable {
  final Uint8List file;

  const UploadFileEntity({required this.file});

  @override
  List<Object?> get props => throw UnimplementedError();
}
