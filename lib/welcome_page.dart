import 'package:firebase_app_bestech/auth_controller.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final String email;
  const WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/signup.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.17,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 50,
                    backgroundImage: AssetImage('img/profile1.png'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                AuthController.instance.logOut();
              },
              child: Container(
                width: w * 0.6,
                height: h * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      image: AssetImage('img/loginbtn.png'),
                      fit: BoxFit.cover,
                    )),
                child: const Center(
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
