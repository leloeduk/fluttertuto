import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final int duration;
  final Widget page;
  const SplashPage({super.key, required this.duration, required this.page});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: widget.duration), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => widget.page));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/images/leloeduk.png", height: 200, width: 200),
          ],
        ),
      ),
    );
  }
}
