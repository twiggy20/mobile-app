import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mobile_teacher_app/services/storage_service.dart';


class FileService {

  File file;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if(result == null) return;
    // List<File> files = result.paths.map((path) => File(path)).toList();
    final path = result.files.single.path;
    File file = File(path);
    final fileName = file != null ? file.path : 'No File Selected';
    return file;
  }

  Future uploadFile() async {
    if (file == null) return;
    final fileName = file.path;
    final destination = 'files/$fileName';

    UploadTask task = StorageService.uploadFile(destination, file);
    if (task !=null) {
      final snapshot = await task.whenComplete(() => {});
      final url = await snapshot.ref.getDownloadURL();
    }
  }



}
