import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/custom_classes.dart';
import '../utils/global_variables.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool _isHovered = false;
  bool _isPhoneHovered = false;
  bool _isEmailHovered = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _subjectController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      padding: const EdgeInsets.all(48),
      color: backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const CustomizedText(text: "CONTACT", color: reddish, fontWeight: FontWeight.bold, letterSpacing: 3).animate().slide().fade(),
            const SizedBox(height: 20),
            const CustomizedText(text: "Keep In Touch With Me", fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 2).animate().slide().fade(),
            const SizedBox(height: 30),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      width: 500,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: iconContainerColor,
                        boxShadow: <BoxShadow>[BoxShadow(blurRadius: 5, spreadRadius: 5, color: grey.withOpacity(.05), offset: const Offset(-3, -3))],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              width: 452,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: StatefulBuilder(
                                  builder: (BuildContext context, void Function(void Function()) _) {
                                    return InkWell(
                                      onTap: () => true,
                                      onHover: (bool value) => _(() => _isHovered = value),
                                      child: AnimatedScale(
                                        duration: 500.ms,
                                        scale: _isHovered ? 1.1 : 1,
                                        child: Image.asset("assets/images/${'me.jpg'}", fit: BoxFit.cover),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const CustomizedText(text: "Hafedh GUNICHI", color: white, fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 3),
                          const SizedBox(height: 10),
                          const CustomizedText(text: "Flutter Developer & Freelancer.", color: grey, fontSize: 16, letterSpacing: 3),
                          const SizedBox(height: 10),
                          CustomizedText(text: "I am available for freelance work. Connect with me via and call in to my account.", color: grey.withOpacity(.6), fontSize: 16, letterSpacing: 2),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const CustomizedText(text: "Phone:", color: grey, fontSize: 16, letterSpacing: 3),
                              const SizedBox(width: 5),
                              StatefulBuilder(
                                builder: (BuildContext context, void Function(void Function()) _) {
                                  return InkWell(
                                    onTap: () async {},
                                    onHover: (bool value) => _(() => _isPhoneHovered = value),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        CustomizedText(text: myPhoneNumber, color: _isPhoneHovered ? reddish : grey.withOpacity(.6), fontSize: 16, letterSpacing: 3),
                                        const SizedBox(height: 1),
                                        AnimatedContainer(duration: 700.ms, height: 1, width: !_isPhoneHovered ? 0 : myPhoneNumber.length * 10, color: reddish),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const CustomizedText(text: "E-mail:", color: grey, fontSize: 16, letterSpacing: 3),
                              const SizedBox(width: 5),
                              StatefulBuilder(
                                builder: (BuildContext context, void Function(void Function()) _) {
                                  return InkWell(
                                    onTap: () async {},
                                    onHover: (bool value) => _(() => _isEmailHovered = value),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        CustomizedText(text: myEmail, color: _isEmailHovered ? reddish : grey.withOpacity(.6), fontSize: 16, letterSpacing: 2),
                                        const SizedBox(height: 1),
                                        AnimatedContainer(duration: 700.ms, height: 1, width: !_isEmailHovered ? 0 : myEmail.length * 10, color: reddish),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const CustomizedText(text: "FIND ME IN", color: grey, fontSize: 16, letterSpacing: 2),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              IconGlass(icon: FontAwesomeIcons.facebookF, url: ""),
                              SizedBox(width: 30),
                              IconGlass(icon: FontAwesomeIcons.x, url: "", image: "x_core.svg"),
                              SizedBox(width: 30),
                              IconGlass(icon: FontAwesomeIcons.linkedinIn, url: ""),
                            ],
                          ),
                        ],
                      ),
                    ).animate().slide().fade(),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: iconContainerColor,
                        boxShadow: <BoxShadow>[BoxShadow(blurRadius: 5, spreadRadius: 5, color: grey.withOpacity(.05), offset: const Offset(-3, -3))],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const CustomizedText(text: "YOUR NAME", color: grey, fontSize: 16, letterSpacing: 2),
                                    const SizedBox(height: 10),
                                    Container(
                                      height: 50,
                                      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(10)),
                                      child: TextFormField(
                                        style: GoogleFonts.roboto(color: white),
                                        controller: _nameController,
                                        decoration: InputDecoration(border: InputBorder.none, focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: reddish, width: 2), borderRadius: BorderRadius.circular(10)), contentPadding: const EdgeInsets.symmetric(horizontal: 8)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 40),
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const CustomizedText(text: "PHONE NUMBER", color: grey, fontSize: 16, letterSpacing: 2),
                                    const SizedBox(height: 10),
                                    Container(
                                      height: 50,
                                      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(10)),
                                      child: TextFormField(
                                        style: GoogleFonts.roboto(color: white),
                                        controller: _phoneController,
                                        decoration: InputDecoration(border: InputBorder.none, focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: reddish, width: 2), borderRadius: BorderRadius.circular(10)), contentPadding: const EdgeInsets.symmetric(horizontal: 8)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const CustomizedText(text: "E-MAIL", color: grey, fontSize: 16, letterSpacing: 2),
                              const SizedBox(height: 10),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(10)),
                                child: TextFormField(style: GoogleFonts.roboto(color: white), controller: _emailController, decoration: InputDecoration(border: InputBorder.none, focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: reddish, width: 2), borderRadius: BorderRadius.circular(10)), contentPadding: const EdgeInsets.symmetric(horizontal: 8))),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const CustomizedText(text: "SUBJECT", color: grey, fontSize: 16, letterSpacing: 2),
                              const SizedBox(height: 10),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(10)),
                                child: TextFormField(
                                  style: GoogleFonts.roboto(color: white),
                                  controller: _subjectController,
                                  decoration: InputDecoration(border: InputBorder.none, focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: reddish, width: 2), borderRadius: BorderRadius.circular(10)), contentPadding: const EdgeInsets.symmetric(horizontal: 8)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const CustomizedText(text: "MESSAGE", color: grey, fontSize: 16, letterSpacing: 2),
                                const SizedBox(height: 10),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(10)),
                                    child: TextFormField(
                                      controller: _messageController,
                                      maxLines: 100,
                                      style: GoogleFonts.roboto(color: white),
                                      decoration: InputDecoration(border: InputBorder.none, focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: reddish, width: 2), borderRadius: BorderRadius.circular(10)), contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(7), border: Border.all(color: Colors.black, width: .1)),
                                padding: const EdgeInsets.all(8),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    CustomizedText(text: "SEND MESSAGE", color: reddish, fontSize: 20),
                                    Icon(FontAwesomeIcons.chevronRight, color: reddish, size: 20),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ).animate().slide().fade(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
