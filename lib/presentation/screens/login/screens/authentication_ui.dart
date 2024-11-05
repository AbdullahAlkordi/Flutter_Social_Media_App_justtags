import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../common/common.dart';
import '../widgets/custom_widget.dart';
import '../widgets/fade_animationtest.dart';
import 'login_page.dart';
import 'signup_page.dart';

class AuthenticationUI extends StatefulWidget {
  const AuthenticationUI({super.key});

  @override
  State<AuthenticationUI> createState() => _AuthenticationUIState();
}

class _AuthenticationUIState extends State<AuthenticationUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/img.png",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              )),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: SizedBox(
              child: Column(
                children: [
                  FadeInAnimation(
                    delay: 1,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/main logo light color.png"))),
                    ),
                  ),
                  const FadeInAnimation(
                    delay: 1.5,
                    child: Text(
                      "Flutter Spirit ❤️",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  FadeInAnimation(
                    delay: 2,
                    child: CustomElevatedButton(
                      message: "Login",
                      function: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInAnimation(
                    delay: 2.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const SignupPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                            side: const WidgetStatePropertyAll(
                                BorderSide(color: Colors.black)),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            fixedSize: const WidgetStatePropertyAll(
                                Size.fromWidth(370)),
                            padding: const WidgetStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 20),
                            ),
                            backgroundColor:
                                const WidgetStatePropertyAll(Colors.white)),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Urbanist-SemiBold",
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  FadeInAnimation(
                    delay: 2.5,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Continue as guest",
                          style: Common().mediumTheme),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
