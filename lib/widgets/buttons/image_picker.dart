import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ButtonImagePicker extends StatelessWidget {
  final Function(File) onImageSelected;
  final ImagePicker picker = ImagePicker();

  ButtonImagePicker({super.key, required this.onImageSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
            context: context,
            builder: (context) {
              return Container(
                width: double.infinity,
                height: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        getFromCamera();
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 64,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const Text(
                          'Tirar foto',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const Divider(height: 1),
                    InkWell(
                      onTap: () {
                        getFromGallery();
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 64,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const Text(
                          'Galeria',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Icon(Icons.image_outlined, size: 32),
      ),
    );
  }

  Future<void> getFromCamera() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    if (photo == null) return;

    onImageSelected(File(photo.path));
  }

  Future<void> getFromGallery() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    onImageSelected(File(image.path));
    //final File file = File(image.path);
    //imageCrop(file);
  }

  Future<void> imageCrop(File file) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: file.path,
      aspectRatio: const CropAspectRatio(ratioX: 1.5, ratioY: 1),
    );

    if (croppedFile == null) return;

    File image = File(croppedFile.path);
    onImageSelected(image);
  }
}
