import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MediaAPIDemo());
}

class MediaAPIDemo extends StatefulWidget {
  @override
  _MediaAPIDemoState createState() => _MediaAPIDemoState();
}

class _MediaAPIDemoState extends State<MediaAPIDemo> {
  File? _imageFile;
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/sample_video.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fikri Maulana - 1301200239'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_imageFile != null)
                Image.file(
                  _imageFile!,
                  width: 300,
                  height: 300,
                ),
              ElevatedButton(
                onPressed: () => _pickImage(ImageSource.camera),
                child: Text('Take Picture'),
              ),
              SizedBox(height: 16),
              if (_videoPlayerController.value.isInitialized)
                AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
