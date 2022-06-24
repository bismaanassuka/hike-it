import 'package:flutter/material.dart';
import 'package:hiking_app/dashboard.dart';
import 'package:hiking_app/sign/sign_in.dart';
import 'package:hiking_app/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/sign/Sign_up_bg.jpg",
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Column(
                children: [
                  SizedBox(
                    height: getHeight(40),
                  ),
                  SimpleShadow(
                    child: SvgPicture.asset(
                      "assets/images/Horizontal_logo.svg",
                    ),
                  ),
                  SizedBox(
                    height: getHeight(130),
                  ),
                  Text(
                    "Lorem Ipsum",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: bold,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(1, 1),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getHeight(40),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt\nut labore et dolore magna aliqua.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(1, 1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: getHeight(450),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: hitam.withOpacity(0.5),
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: getHeight(5),
                            ),
                            const Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: bold,
                              ),
                            ),
                            const Spacer(),
                            TextField(
                              maxLines: 1,
                              style: TextStyle(
                                color: hitam.withOpacity(0.5),
                              ),
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                suffixIcon: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: SvgPicture.asset(
                                    "assets/icons/dashboard/Profile.svg",
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                fillColor: Colors.white.withOpacity(0.25),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'Name',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                            const Spacer(),
                            TextField(
                              maxLines: 1,
                              style: TextStyle(
                                color: hitam.withOpacity(0.5),
                              ),
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                suffixIcon: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: SvgPicture.asset(
                                    "assets/icons/sign/Message.svg",
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                fillColor: Colors.white.withOpacity(0.25),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'Email Address',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                            const Spacer(),
                            TextField(
                              maxLines: 1,
                              style: TextStyle(
                                color: hitam.withOpacity(0.5),
                              ),
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                suffixIcon: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: SvgPicture.asset(
                                    "assets/icons/sign/Hide.svg",
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                fillColor: Colors.white.withOpacity(0.25),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                            const Spacer(),
                            TextField(
                              maxLines: 1,
                              style: TextStyle(
                                color: hitam.withOpacity(0.5),
                              ),
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                suffixIcon: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: SvgPicture.asset(
                                    "assets/icons/sign/Hide.svg",
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                fillColor: Colors.white.withOpacity(0.25),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Dashboard(),
                                  ),
                                );
                              },
                              child: Container(
                                height: getHeight(54),
                                decoration: BoxDecoration(
                                  gradient: gradient,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    "SIGN UP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account? ",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const SignIn(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: ungu,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
