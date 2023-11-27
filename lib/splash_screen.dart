import 'package:flutter/material.dart';
import 'dashboard_screen.dart'; // 메인 대시보드 화면으로 이동하기 위해 필요한 임포트

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Image.asset('lib/image/logo.jpg'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 30.0),
            child: Center(
              child: Text(
                'Social Scrap Service',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
