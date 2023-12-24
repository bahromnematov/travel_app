import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/pages/home_page.dart';

class IntroPage extends StatefulWidget {
  static final String id = "intro_page";

  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF031F2A),
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/image1.png"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Oddiy hayotdan qoching",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Atrofingizdagi ajoyib tajribalarni kashf eting \n  va sizniqiziqarli yashashga majbur qiling",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )
                ],
              ),
            )),
            Container(
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(12)),
                margin: EdgeInsets.symmetric(horizontal: 36),
                height: 56,
                width: double.infinity,
                child: Center(
                  child: InkWell(
                    child: Text(
                      "Boshladik",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    onTap: () async{
                      SharedPreferences _prefs1 = await SharedPreferences.getInstance();
                      _prefs1.setBool("showIntro", false);
                      Navigator.pushReplacementNamed(context, HomePage.id);
                    },
                  ),
                )),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
