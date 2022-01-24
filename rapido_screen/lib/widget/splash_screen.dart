import 'package:flutter/material.dart';
import './login_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetoHome();
  }

  _navigatetoHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 60, horizontal: 50),

              // height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      // height: 200,
                      child: Image.asset(
                        "assets/image/firstImage.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 80,
                    // width: 120,
                    child: Image.asset(
                      "assets/image/rapido.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  // SizedBox(
                  //   height: 50,
                  // ),
                  // Text(
                  //   "Splash Screen Logo",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(fontSize: 20),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
