import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top:100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/coffee[1].png"),
            fit: BoxFit.cover,
            opacity: 0.6,
          )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Coffee Shop", style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 50,
            ),
            ),
            Column(children:[
              Text("I've been thinking of you a Latte",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 60),
              Material(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  splashColor: Colors.black,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
                  },
                  child: Ink(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),

                      child: Text("Sip Sip, Hurray!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1
                        ),
                      ),
                    ),),
                ),
              ),
             ],
            ),
          ],
        ),

      ),
    );
  }
}
