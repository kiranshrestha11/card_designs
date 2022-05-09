import 'package:card_designs/gradient_text/custom_text.dart';
import 'package:card_designs/gradient_text/profile_picture.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  GradientText({Key? key}) : super(key: key);
  //creating shader for gradient text
  final Shader linearGradient =
      const LinearGradient(colors: [Color(0xff00F5A0), Color(0xff00D9F5)])
          .createShader(const Rect.fromLTWH(0, 0, 200, 80));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(30),
      width: MediaQuery.of(context).size.width,
      height: 527,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          //Profile Picture
          const ProfilePicture(),
          const SizedBox(height: 20),
          //
          const CustomText(
              text: "Natalia Brown",
              weight: FontWeight.w500,
              size: 28,
              color: Colors.white),
          const SizedBox(height: 5),
          //
          const CustomText(
            text: "Telephone operator",
            weight: FontWeight.w400,
            size: 16,
            color: Color(0xff828282),
          ),
          const SizedBox(height: 20),
          //
          Text(
            "New card designs",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w900,
                foreground: Paint()..shader = linearGradient),
          ),
          const SizedBox(height: 20),
          //
          const CustomText(
            color: Colors.white,
            align: TextAlign.center,
            text: "Minim dolor in amet nulla laboris enim dolore.",
            weight: FontWeight.w300,
            size: 20,
          ),
          const SizedBox(height: 20),
          //
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 151,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xff00F5A0), Color(0xff00D9F5)]),
                  borderRadius: BorderRadius.circular(50)),
              child: const Center(
                child: CustomText(
                  text: "View Profile",
                  size: 15,
                  weight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
