import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/components/button.dart';
import 'package:restaurant_app/models/food.dart';
import 'package:restaurant_app/pages/food_details_page.dart';
import 'package:restaurant_app/theme/colors.dart';

import '../components/fod_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
//food menu
  List foodMenu = [
    //classic
    Food(
        name: "Classic",
        price: "130.00",
        imagePath: "lib/images/classic.png",
        rating: "4.5", 
        descriptionFood: "Indulge in the buttery richness of fresh, melt-in-your-mouth salmon that sits elegantly atop a perfectly formed bed of vinegared sushi rice. Each bite is a journey through the pristine waters, where the salmon's natural flavors shine through, accompanied by the gentle notes of our house-made soy-based dipping sauce.",
        ),
    //beef
    Food(
        name: "Sushi With Beef",
        price: "150.00",
        imagePath: "lib/images/sushi with beef.png",
        rating: "4.3", 
        descriptionFood: "Tantalize your taste buds with our innovative creation - the Citrus-Kissed Salmon Roll. Inside, a symphony of textures awaits as velvety salmon is joined by crisp cucumber, creamy avocado, and a hint of tangy yuzu zest. Encased in a delicate wrapping of nori and seasoned rice, this roll offers a refreshing balance that delights with every bite.",
        ),
    //egg
    Food(
        name: "Sushi With Salmon's eggs",
        price: "155.00",
        imagePath: "lib/images/sushi with egg.png",
        rating: "4.8", 
        descriptionFood: "Prepare for an explosion of taste with our Volcano Blaze Maki. Succulent slices of seared salmon are rolled alongside a fiery blend of spicy mayo and sriracha-infused tobiko, offering a fusion of flavors that's both bold and beautifully complex. The crunch of tempura flakes adds a satisfying contrast to the ensemble, making this roll a true spectacle for the senses.",
        ),
    //salmon
    Food(
        name: "Sushi With Salmon",
        price: "145.00",
        imagePath: "lib/images/sushi with salmon.png",
        rating: "4.7", 
        descriptionFood: "Embark on a journey of sustainability and supreme freshness with our Sustainable Salmon Sashimi. Sourced responsibly, this dish showcases the silky texture and vibrant hue of top-grade salmon. Presented artistically and accompanied by wasabi and pickled ginger, it's a celebration of simplicity that pays homage to the pure essence of the ocean.",
        ),
  ];

  // navigate to food item details page
  void navigateToFoodItemDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
          ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Odessa',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 32% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                      text: "Redeem",
                      onTap: () {},
                    ),
                  ],
                ),
                //image
                Image.asset(
                  'lib/images/classic.png',
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          // search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search here..",
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () => navigateToFoodItemDetails(index),
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //pop food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/images/classic.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Classic",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$130.00",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                )
              ],
            ),
          ),
        ],
      ),

      // search

      //menu list

      //pop food
    );
  }
}
