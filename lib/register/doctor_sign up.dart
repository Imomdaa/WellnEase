import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellnease/models/custom_field.dart';
import 'package:wellnease/register/sign%20in.dart';
import 'package:wellnease/register/user_sign%20up.dart';

class DoctorSignUp extends StatelessWidget {
  static const String routeName = "Sign up...";

  DoctorSignUp({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController Specialization = TextEditingController();
  TextEditingController phone = TextEditingController();
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign up as Doctor",
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: (15),
                          spreadRadius: 5,
                          offset: const Offset(0, 7),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Text("Sign up" , style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold , fontSize: 18),),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormFiled("Full Name", name),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextFormFiled("Specialization", Specialization),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextFormFiled("Phone", phone),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextFormFiled("Email", email),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextFormFiled("Password", password),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ) ,
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
        ]
      ),
    );
  }
}
