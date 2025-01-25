import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

class VendorRegisterController {
  Future<Uint8List?> pickStorageImage(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();

    try {
      XFile? imageFile = await imagePicker.pickImage(source: source);

      if (imageFile != null) {
        return await imageFile.readAsBytes();
      } else {
        print('No Image Selected');
        return null;
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      return null;
    }
  }
}
