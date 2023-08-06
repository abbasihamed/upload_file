import 'package:file_picker/file_picker.dart';
import 'package:file_upload/core/utils/enums.dart';
import 'package:file_upload/feathures/feature_upload_file/presentation/bloc/upload_file_bloc.dart';
import 'package:file_upload/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UploadFileBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _imagePicker();
        },
      ),
    );
  }

  _imagePicker() async {
    FilePickerResult? image = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (mounted) {
      BlocProvider.of<UploadFileBloc>(context).add(UploadfileSendFileEvent(
          image!.files.first.bytes!, FileTypeEnum.meli));
    }
  }
}
