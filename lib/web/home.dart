import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hafedh_gunichi/utils/custom_classes.dart';
import 'package:hafedh_gunichi/utils/global_variables.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(48),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      color: backgroundColor,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const CustomizedText(text: "WELCOME TO MY WORLD", fontSize: 16, fontWeight: FontWeight.w500, color: grey, letterSpacing: 2),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomizedText(text: "Hi, I'm ", fontSize: 50, fontWeight: FontWeight.bold),
                      Flexible(child: CustomizedText(text: "Hafedh Gunichi", color: reddish, fontSize: 50, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const CustomizedText(text: "a ", fontSize: 50, fontWeight: FontWeight.bold),
                      Flexible(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: 800.ms,
                          animatedTexts: <AnimatedText>[
                            for (final String text in const <String>["Professional Coder.", "Developer."]) TypewriterAnimatedText(text, speed: 60.ms, textStyle: GoogleFonts.roboto(fontSize: 50, fontWeight: FontWeight.bold, color: reddish))
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const CustomizedText(text: description, color: grey, fontSize: 16, letterSpacing: 2),
                  const SizedBox(height: 80),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CustomizedText(text: "FIND ME", fontSize: 16, color: grey, letterSpacing: 2),
                          SizedBox(height: 20),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              IconGlass(icon: FontAwesomeIcons.facebookF, url: "https://www.facebook.com/sagittarius.aurora.25.12.2020"),
                              SizedBox(width: 20),
                              IconGlass(icon: FontAwesomeIcons.x, url: "https://twitter.com/hafedhgunichi", image: "x_core.svg"),
                              SizedBox(width: 20),
                              IconGlass(icon: FontAwesomeIcons.linkedinIn, url: "https://www.linkedin.com/in/hafedh-gunichi-a18a60222/"),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CustomizedText(text: "BEST SKILLS ON", fontSize: 16, color: grey, letterSpacing: 2),
                          SizedBox(height: 20),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              IconGlass(icon: FontAwesomeIcons.a, image: "flutter.png"),
                              SizedBox(width: 20),
                              IconGlass(icon: FontAwesomeIcons.a, image: "firebase.png"),
                              SizedBox(width: 20),
                              IconGlass(icon: FontAwesomeIcons.a, image: "django.png"),
                              SizedBox(width: 20),
                              IconGlass(icon: FontAwesomeIcons.a, image: "figma.png"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(child: LottieBuilder.asset("assets/lotties/home.json")),
          ],
        ),
      ),
    );
  }
}
