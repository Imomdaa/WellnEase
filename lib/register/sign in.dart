import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellnease/models/custom_field.dart';
import 'package:wellnease/register/user_sign%20up.dart';

class SignIn extends StatelessWidget {
  static const String routeName = "sign in";

   SignIn({super.key});
TextEditingController name= TextEditingController();
TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white, boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.3) ,
                        spreadRadius: 5,
                        blurRadius: (15) ,
                        offset: Offset(0, 7)
                    )]),
                    child: Column(
                      children: [
                        Text("Sign in " , style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold ,fontSize: 18),),
                        SizedBox(height: 15,),
                        CustomTextFormFiled("Name" , name),
                        SizedBox(
                          height: 15,
                        ),
                        CustomTextFormFiled("Password" , password)
                      ],
                    ),
                  ),
                ) ,
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "New WellnEase!",
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                        color: Colors.black38),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(UserSignUpScreen.routeName);
                  },
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Colors.black38),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
