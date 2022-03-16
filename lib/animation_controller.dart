import 'package:flutter/material.dart';

class AnimationControllerExample extends StatefulWidget {
  const AnimationControllerExample({Key? key}) : super(key: key);

  @override
  _AnimationControllerExampleState createState() =>
      _AnimationControllerExampleState();
}

class _AnimationControllerExampleState extends State<AnimationControllerExample>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  // late Animation color;
  // late Animation size;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      upperBound: 200.0,
      lowerBound: 100.0,
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    // color = ColorTween(begin: Colors.blue, end: Colors.red).animate(
    //   CurvedAnimation(parent: controller, curve: Curves.fastLinearToSlowEaseIn),
    // );
    // size = Tween<double>(begin: 100.0, end: 200.0).animate(controller);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
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
                width: controller.value,
                height: controller.value,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
