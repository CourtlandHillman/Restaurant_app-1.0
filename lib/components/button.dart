import 'package:flutter/material.dart';
import 'package:restaurant_app/theme/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
   const MyButton({super.key, 
   required this.text, 
   this.onTap,
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor,
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
      ),
    );
  }
}
