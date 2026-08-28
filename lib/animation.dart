import 'package:animations/animations.dart';

import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class AnimationExample extends StatelessWidget {
  const AnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OpenContainer(
        closedBuilder: (context, action) =>
            ElevatedButton(onPressed: action, child: const Text('Open')),
        openBuilder: (context, action) =>
            const Scaffold(body: Center(child: Text('New Page'))),
      ),
    );
  }
}
