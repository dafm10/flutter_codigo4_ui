import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2Page extends StatefulWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {

  bool isInvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            buildBackground(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Your Account!",
                      style: GoogleFonts.poppins(
                          color: Color(0xff342073),
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          height: 1.05),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    TextField(
                      style: GoogleFonts.poppins(
                          color: Color(0xff72538E).withOpacity(0.6),
                          fontSize: 15.0),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color(0xff72538E),
                        ),
                        hintText: "Email address",
                        hintStyle: GoogleFonts.poppins(
                            color: Color(0xff72538E).withOpacity(0.6),
                            fontSize: 15.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff72538E)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff72538E)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 26.0,
                    ),
                    TextField(
                      obscureText: isInvisible,
                      style: GoogleFonts.poppins(
                          color: Color(0xff72538E).withOpacity(0.6),
                          fontSize: 15.0),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff72538E),
                        ),
                        suffixIcon: IconButton(
                          icon: isInvisible ? Icon(Icons.remove_red_eye_outlined) : Icon(Icons.remove_red_eye),
                          onPressed: () {
                            isInvisible = !isInvisible;
                            setState(() {

                            });
                          },
                        ),
                        hintText: "Password",
                        hintStyle: GoogleFonts.poppins(
                            color: Color(0xff72538E).withOpacity(0.6),
                            fontSize: 15.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff72538E)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff72538E)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color:  Color(0xffD74286).withOpacity(0.6),
                              blurRadius: 30,
                              offset: Offset(0, 10),
                            ),
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffee91bc),
                              Color(0xffD74286),
                            ],
                          )
                      ),
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget buildBackground() {
    return Stack(
      children: [
        Positioned(
          right: -150,
          top: -150,
          child: MyCircleGradient(
            radius: 200,
            colors: [
              Color(0xffee91bc),
              Color(0xffD74286),
            ],
          ),
        ),
        Positioned(
          bottom: -150,
          left: -100,
          child: MyCircleGradient(
            radius: 140,
            colors: [
              Color(0xffa692e8),
              Color(0xff5E4A9B),
            ],
          ),
        ),
        Positioned(
          top: 80,
          left: 30,
          child: MyCircleGradient(
            radius: 20,
            colors: [
              Color(0xffee91bc),
              Color(0xffD74286),
            ],
            iconCircle: Icons.chevron_left,
          ),
        ),
        Positioned(
          top: 280,
          right: 40,
          child: MyCircleGradient(
            radius: 18.5,
            colors: [
              Color(0xffa692e8),
              Color(0xff5E4A9B),
            ],
          ),
        ),
      ],
    );
  }
}

class MyCircleGradient extends StatelessWidget {
  List<Color> colors;
  double radius;
  IconData? iconCircle;

  MyCircleGradient({required this.radius, required this.colors, this.iconCircle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: colors[1].withOpacity(0.7),
              blurRadius: 12,
              offset: Offset(0, 0))
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      child: Icon(iconCircle, color: Colors.white,),
    );
  }
}