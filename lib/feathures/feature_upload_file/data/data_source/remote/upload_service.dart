import 'dart:typed_data';

import 'package:dio/dio.dart';

class UploadFileService {
  final Dio _dio = Dio();

  Future<void> uploadFile(Uint8List file, int type) async {
    final formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(file)
    });
    await _dio.post(
      'address',
      data: formData,
      onSendProgress: (count, total) {},
    );
  }
}
