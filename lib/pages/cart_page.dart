import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/models/shop.dart';
import 'package:restaurant_app/theme/colors.dart';

import '../models/food.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remover
  void removeFromCart(){

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            //get food
            final Food food = value.cart[index];
            // food name
            final String foodName = food.name;

            //food price
            final String foodPrice = food.price;
            //return
            return Container(
              decoration: BoxDecoration(
                color: secondaryColor,
              ),
              margin: const EdgeInsets.only(left: 20 , top: 20 , right: 20),
              child: ListTile(
                title: Text(foodName,
                style: const TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold
                ),
                ),
                subtitle: Text(foodPrice ,
                style:  TextStyle(
                  color: Colors.grey[200], 
                  fontWeight: FontWeight.bold
                ),
                ),
                trailing: IconButton(
                  onPressed: removeFromCart, 
                  icon: Icon(Icons.delete,
                  color:Colors.grey[300],
                  ),
                  ),
              ),
            );
          },
        ),
      ),
    );
  }
}
