import 'package:flutter/material.dart';

class ImageOpacity extends StatefulWidget {
  const ImageOpacity({Key? key}) : super(key: key);

  @override
  _ImageOpacityState createState() => _ImageOpacityState();
}

class _ImageOpacityState extends State<ImageOpacity> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Opacity'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              toggle = !toggle;
            });
          },
          child: Container(
            color: Colors.blue,
            width: 350,
            height: 350,
            child: AnimatedOpacity(
              curve: Curves.slowMiddle,
              duration: const Duration(seconds: 2),
              opacity: toggle ? 0.5 : 1,
              child: Image.network(
                'https://images.unsplash.com/photo-1601758063541-d2f50b4aafb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=994&q=80',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
