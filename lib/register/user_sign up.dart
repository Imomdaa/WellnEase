import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellnease/models/custom_field.dart';
import 'package:wellnease/register/sign%20in.dart';

class UserSignUpScreen extends StatelessWidget {
  static const String routeName = "Sign Up";

  UserSignUpScreen({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Sign up as user ",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 15,
                                offset: const Offset(
                                    0, 7), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sign Up  ",
                                style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              CustomTextFormFiled("Full Name", name),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextFormFiled("Email", email),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextFormFiled("Password", password),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Do Have An Account?",
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w200,
                                fontSize: 15,
                                color: Colors.black38),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(SignIn.routeName);
                            },
                            child: Text(
                              "Sign in",
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black38),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
