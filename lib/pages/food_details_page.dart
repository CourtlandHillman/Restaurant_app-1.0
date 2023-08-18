import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/models/food.dart';
import 'package:restaurant_app/theme/colors.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({
    super.key, 
    required this.food,
    });

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],

      ),
      body:Column(
        children: [
          //listview of item food detail's
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0 ),
            child: ListView(
               children: [
                //image
              Image.asset(
                widget.food.imagePath,
                height: 200,
              ),
          
              const SizedBox(
                height: 25,
              ),
          
                //rating
              Row(
                children: [
                  // star icon 
                Icon(
                  Icons.star,
                  color:Colors.yellow[800],
                  ),
               
                const SizedBox(
                width: 5,
              ),
          
                  //rating number
                Text(widget.food.rating , 
                style: TextStyle( 
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),)
          
                ],
              ),

              const SizedBox(
                height: 10,
              ),
          
                //food name
              Text(
                widget.food.name,
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 25,
                ),
                ),
              
              const SizedBox(
                height: 25,
              ),
          
                //description 
              Text(
                "Descriptions",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(widget.food.descriptionFood,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                  height: 2,
                ),
              ),

          
          
               ],
            ),
          ),
        ),



          //price + quantity of food items + add cart button
          Container(
            color:primaryColor,
            child: Column(
              children: [

              ],
            ),
          ),






        ],
      ) ,
    );
  }
}
