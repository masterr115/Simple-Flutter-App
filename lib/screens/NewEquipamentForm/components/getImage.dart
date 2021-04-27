import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

final picker = ImagePicker();
String image;

Future getImage() async {
  final pickerImage = await picker.getImage(source: ImageSource.camera);

  if (pickerImage != null) {
    return image = base64Encode(File(pickerImage.path).readAsBytesSync());
  } else {
    return null;
  }
}
