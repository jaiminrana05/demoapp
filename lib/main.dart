import 'package:demoapp/image_opacity.dart';
import 'package:flutter/material.dart';

import 'animated_container.dart';
import 'animation_controller.dart';
import 'basic_animation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'mt',
      debugShowCheckedModeBanner: false,
      home: MyAppMain(),
    );
  }
}

class MyAppMain extends StatelessWidget {
  const MyAppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => const MyAnimation(),
                  ),
                );
              },
              child: const Text('Animated container'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => const ImageOpacity(),
                  ),
                );
              },
              child: const Text('image opacity'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => const BasicAnimation(),
                  ),
                );
              },
              child: const Text('basic animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => const AnimationControllerExample(),
                  ),
                );
              },
              child: const Text(' Animation controller'),
            ),
          ],
        ),
      ),
    );
  }
}
