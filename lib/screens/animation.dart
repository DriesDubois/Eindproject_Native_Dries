import 'package:flutter/material.dart';

class Animatie extends StatefulWidget {
  AnimatieState createState() => AnimatieState();
}

class AnimatieState extends State<Animatie> with SingleTickerProviderStateMixin {
  late Animation<double> animatie;
  late AnimationController animatieController;

  void initState() {
    animatieController = AnimationController(
        duration: const Duration(seconds: 2),
        vsync: this
    );
    animatie = Tween<double>(begin: 0, end: 10).animate(animatieController);
    animatie.addListener(() {
      setState(() { });
    });
    animatieController.forward();
    animatie.addStatusListener((status) {
      if (status==AnimationStatus.completed) {
        animatieController.reverse();
      } else if (status==AnimationStatus.dismissed) {
        animatieController.forward();
      }
    });
    super.initState();
  }

  void dispose() {
    animatieController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Transform.scale(
        scale: 2,
        child: Center(child: Text("Animatie", textScaleFactor: animatie.value))
    );
  }
}