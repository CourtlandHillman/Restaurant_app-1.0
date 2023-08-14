import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
   const MyButton({super.key, 
   required this.text,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 129, 62, 57),
        borderRadius: BorderRadius.circular(40),
      ),
      padding: EdgeInsets.all(20) ,
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //text 
          Text(text , style: TextStyle(
            color: Colors.white,
          ),),

          const SizedBox(
            width: 10,
          ),

          //icon 
          Icon(Icons.arrow_forward_ios , 
          color: Colors.white,
          ),
        ],
      ),
    );
  }
}