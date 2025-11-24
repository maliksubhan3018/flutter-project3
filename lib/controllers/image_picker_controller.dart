// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString imagepath = ''.obs;

  Future getimage() async {
    final ImagePicker _picker = ImagePicker();
    final Image = await _picker.pickImage(source: ImageSource.gallery);
    if (Image != null) {
      imagepath.value = Image.path.toString();
    }
  }
}
