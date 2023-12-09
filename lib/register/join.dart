import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellnease/register/doctor_sign%20up.dart';
import 'package:wellnease/register/sign%20in.dart';

import 'user_sign up.dart';

class JoinScreen extends StatelessWidget {
  static const String routeName = "join";

  const JoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              "Join us to start your journey",
              style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Please choose your field to start with us",
              style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  color: Colors.black38),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  MaterialButton(
                    color: Colors.blue[800],
                    onPressed: () {
                    Navigator.of(context).pushNamed(UserSignUpScreen.routeName);
                      },
                    child: Row(
                      children: [
                        Text(
                          "As Person",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.person_2_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    color: Colors.blue[800],
                    onPressed: () {
                      Navigator.of(context).pushNamed(DoctorSignUp.routeName);
                    },
                    child: Row(
                      children: [
                        Text(
                          "Doctor",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.personal_injury_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    color: Colors.blue[800],
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Pharmacist",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.perm_contact_cal_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    color: Colors.blue[800],
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Gym Coach",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.sports_gymnastics_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Do You Have Account?",
              style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  color: Colors.black38),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SignIn.routeName);
              },
              child: Text(
                "Sign in",
                style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    color: Colors.black38),
              ),
            )
          ],
        ),
      ),
    );
  }
}
