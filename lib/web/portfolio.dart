import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../utils/custom_classes.dart';
import '../utils/global_variables.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(48),
      color: backgroundColor,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Animate(effects: const <Effect>[FadeEffect(), SlideEffect()], child: const CustomizedText(text: "VISIT MY PORTFOLIO AND KEEP YOUR FEEDBACK", color: reddish, letterSpacing: 2)),
              const SizedBox(height: 20),
              Animate(effects: const <Effect>[FadeEffect(), SlideEffect()], child: const CustomizedText(text: "My Portfolio", fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 2)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: <Widget>[
                  for (final Map<String, dynamic> app in portfolios) Animate(effects: const <Effect>[FadeEffect(), SlideEffect()], child: PorfolioGlass(data: app))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
