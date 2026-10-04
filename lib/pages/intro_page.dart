import 'package:exercies_ui/components/button.dart';
import 'package:flutter/material.dart';

//import 'package:google_fonts/google_fonts.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "SUSHI",
              style: TextStyle(
                fontFamily:"SUSHI",
                  fontStyle: FontStyle.italic,
                  fontSize: 28,
                  color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("assets/images/sushi_2.png"),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 44,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Feel the taste of the most popular food from anywhere and anytime from around the world",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),
            SizedBox(
              height: 25,
            ),
            MyButton(
              text: "Get Started",
              onTap :() {
                Navigator.pushNamed(context, 'manupage');
              }
            )
          ],
        ),
      ),
    );
  }
}
