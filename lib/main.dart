import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text('تطابق صور'),
        backgroundColor: Colors.amber[900],
      ),
      body: const ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImage = 1;
  int rightImage = 2;

  // function to change right and left picture
  void changeImage() {
    leftImage = Random().nextInt(8) + 1;
    rightImage = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImage == rightImage ? 'Congrateulation' : 'Please Try a gain',
          style: const TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset('images/image-$leftImage.png'),
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset('images/image-$rightImage.png'),
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
