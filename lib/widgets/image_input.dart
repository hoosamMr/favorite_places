import'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInput();
}

class _ImageInput extends State<ImageInput> {
   File? _selectedImage;
  void _takePicture()async{
    final imagePicker = ImagePicker();
    final pickImage = await imagePicker.pickImage(source: ImageSource.camera,maxWidth: 600);
    if(pickImage == null){

    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        ),
      ),
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: TextButton.icon(
        icon: const Icon(Icons.camera),
        label: const Text('Take Picture'),
        onPressed: _takePicture,
      ),
    );
  }
}
