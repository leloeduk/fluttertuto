import 'package:flutter/material.dart';
import 'package:fluttertuto/pages/home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/images/leloeduk.png", height: 200, width: 200),
              SizedBox(height: 10),
              Text(
                "Bienvenue sur Lelo Eduk Club ",
                style: TextStyle(color: Colors.grey, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isLoading = true;
                  });
                  Future.delayed(Duration(seconds: 15), () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => HomePage()));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade900,
                  ),
                  child: Center(
                    child: isLoading
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(width: 10),
                              Text("Loading ..."),
                            ],
                          )
                        : Text("Commencer"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
