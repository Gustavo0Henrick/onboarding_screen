import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/src/modules/onboarding/onboarding_page.dart';
import 'package:onboarding_screen/src/themes/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future _nextPage() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (builder) => OnBoardingPage(),
        ));
  }

  @override
  void initState() {
    _nextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.indigo.shade700,
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            Text(
              'Logo',
              style: GoogleFonts.lobster(color: Colors.white, fontSize: 57),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 60, left: 80, right: 80),
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
