import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 126, 42, 36),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          SizedBox(
              height: 25,
            ),
          //shop_name
        Text("SUSHI KHAN" ,  
         style: GoogleFonts.dmSerifDisplay(
          fontSize: 26,
          color: Colors.white,
         ),),
      
        SizedBox(
              height: 25,
            ),
          //icon 
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Image.asset('lib/images/sushi with salmon.png'),
        ),
      
          //title
        Text("THE TASTE OF REAL UKRAINIAN SUSHI", 
        style: GoogleFonts.dmSerifDisplay(
          fontSize: 44,
          color: Colors.white,
         ),),
      
          
        SizedBox(
              height: 15,
            ),  
          //SUBTITLE
        Text("Feel the taste of the most popular Ukrainian food from anywhere and anytime",
          style: GoogleFonts.dmSerifDisplay(
          fontSize: 12,
          color: Colors.white,),
        ),

        SizedBox(
              height: 25,
            ),
      
          //get started button
        MyButton(text: "Get Started"),
        ],
        ),
      ),
    );
  }
}