import 'package:flutter/material.dart';

class Animatie extends StatefulWidget {
  AnimatieState createState() => AnimatieState();
}

class AnimatieState extends State<Animatie> with SingleTickerProviderStateMixin {
  late Animation<double> animatie;
  late AnimationController animatieController;

  void initState() {
    animatieController = AnimationController(
        duration: const Duration(seconds: 5),
        vsync: this
    );
    animatie = Tween<double>(begin: 20, end: 60).animate(animatieController);
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
    return Container(
        child: Center(child: Icon(Icons.music_note, size: animatie.value,))
    );
  }
}