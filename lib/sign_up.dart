import 'package:firebase_app_bestech/auth_controller.dart';
import 'package:firebase_app_bestech/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    List images = [
      'g.png',
      't.png',
      'f.png',
    ];
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: w,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2),
                          )
                        ]),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Your email',
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.deepOrange,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2),
                          )
                        ]),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Your password',
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.orangeAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                AuthController.instance.register(
                  emailController.text.trim(),
                  passwordController.text.trim(),
                );
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
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: const TextSpan(
                  text: 'Sign up using on the following method',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Wrap(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      'img/' + images[index],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: RichText(
                text: TextSpan(
                  text: 'Go back',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.pinkAccent,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(
                          () => const LoginPage(),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
