import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../presentation/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => Dashboard()),
      );
    });

    @override
    void dispose() {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "images/splashscreen.png",
              height: 1284,
              width: 2778,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            const Positioned.fill(
                child: Center(
              child: Text(
                "To Do App",
                textAlign: TextAlign.start,
                textScaleFactor: 2.0,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Colors.black),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
