import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key}) : super(key: key);

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  static const double maxSize = 350;
  static const double minSize = 50;

  double width = maxSize;
  double height = maxSize;
  Color color = Colors.red;
  BorderRadius borderRadius = BorderRadius.zero;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    Size generateSize() {
      final random = Random();
      final addMax = maxSize.toInt() - minSize.toInt();
      final width = minSize + random.nextInt(addMax);
      final height = minSize + random.nextInt(addMax);
      return Size(width, height);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: maxSize,
              width: maxSize,
              color: Colors.red.withOpacity(0.2),
              child: Center(
                child: AnimatedContainer(
                  transformAlignment: Alignment.center,
                  transform: Matrix4.rotationZ(angle),
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.easeInOut,
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    color: color,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              final random = Random();
              final red = random.nextInt(255);
              final green = random.nextInt(255);
              final blue = random.nextInt(255);
              final color = Color.fromRGBO(red, green, blue, 1);
              final size = generateSize();
              final borderRadius =
                  BorderRadius.circular(random.nextDouble() * 80);
              setState(() {
                this.color = color;
                width = size.width;
                height = size.height;
                this.borderRadius = borderRadius;
                angle += 0.5;
              });
            },
            child: const Text('Just Magic'),
          ),
        ],
      ),
    );
  }
}
