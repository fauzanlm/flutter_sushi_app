import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/components/my_button.dart';
import 'package:flutter_sushi_app/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            Text(
              'SUSHI NICE',
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/sushi_eggs.png'),
            ),
            const SizedBox(height: 25),
            Text(
              'BEST ONE OF JAPANESE FOOD',
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 44,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Feel the taste of the japanese food from anywhere and anytime',
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),
            const SizedBox(height: 25),
            MyButton(
              text: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
