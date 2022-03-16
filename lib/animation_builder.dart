// import 'package:flutter/material.dart';
//
// class AnimationBuilderExample extends StatefulWidget {
//   const AnimationBuilderExample({Key? key}) : super(key: key);
//
//   @override
//   _AnimationBuilderExampleState createState() =>
//       _AnimationBuilderExampleState();
// }
//
// class _AnimationBuilderExampleState extends State<AnimationBuilderExample> {
//   late Animation _containerRadiusAnimation,
//       _containerSizeAnimation,
//       _containerColorAnimation;
//   late AnimationController _containerAnimationController;
//
//   @override
//   void initState() {
//     super.initState();
//     _containerAnimationController = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 5000));
//
//     _containerRadiusAnimation = BorderRadiusTween(
//             begin: BorderRadius.circular(100.0),
//             end: BorderRadius.circular(0.0))
//         .animate(CurvedAnimation(
//             curve: Curves.ease, parent: _containerAnimationController));
//
//     _containerSizeAnimation = Tween(begin: 0.0, end: 2.0).animate(
//         CurvedAnimation(
//             curve: Curves.ease, parent: _containerAnimationController));
//
//     _containerColorAnimation =
//         ColorTween(begin: Colors.black, end: Colors.white).animate(
//             CurvedAnimation(
//                 curve: Curves.ease, parent: _containerAnimationController));
//
//     _containerAnimationController.forward();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
