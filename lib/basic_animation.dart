import 'dart:math';

import 'package:flutter/material.dart';

class BasicAnimation extends StatefulWidget {
  const BasicAnimation({Key? key}) : super(key: key);

  @override
  _BasicAnimationState createState() => _BasicAnimationState();
}

class _BasicAnimationState extends State<BasicAnimation> {
  double upperBound = 20;
  double boxSize = 50;
  Color color = Colors.blue;
  bool on = false;

  void seeMagic() async {
    on = true;
    while (upperBound <= 40) {
      final random = Random();
      final red = random.nextInt(255);
      final green = random.nextInt(255);
      final blue = random.nextInt(255);
      final color = Color.fromRGBO(red, green, blue, 1);
      await Future.delayed(const Duration(milliseconds: 100)).then((value) {
        setState(() {
          this.color = color;
          boxSize = boxSize + 10;
          upperBound++;
        });
      });
    }
  }

  void undoMagic() async {
    on = false;
    while (upperBound >= 20) {
      final random = Random();
      final red = random.nextInt(255);
      final green = random.nextInt(255);
      final blue = random.nextInt(255);
      final color = Color.fromRGBO(red, green, blue, 1);
      await Future.delayed(const Duration(milliseconds: 100)).then((value) {
        setState(() {
          this.color = color;
          boxSize = boxSize - 10;
          upperBound--;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations Mystery!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: boxSize,
                height: boxSize,
                color: color,
              ),
            ),
            Align(
              alignment: const Alignment(-0.5, 0.5),
              child: ElevatedButton(
                onPressed: seeMagic,
                child: const Text('see magic'),
              ),
            ),
            Align(
              alignment: const Alignment(0.5, 0.5),
              child: ElevatedButton(
                onPressed: on == true ? undoMagic : null,
                child: const Text('undo magic'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
