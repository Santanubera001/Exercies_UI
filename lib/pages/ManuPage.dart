import 'package:exercies_ui/components/button.dart';
import 'package:exercies_ui/components/food_tile.dart';
import 'package:exercies_ui/models/food.dart';
import 'package:exercies_ui/theme/Font.dart';
import 'package:flutter/material.dart';
import 'package:exercies_ui/theme/colors.dart';

class Manupage extends StatefulWidget {
  const Manupage({super.key});

  @override
  State<Manupage> createState() => _ManupageState();
}

class _ManupageState extends State<Manupage> {
  List FoodManu = [
    Food(
        price: "40",
        name: "Solmoun Sushi",
        imagePath: ("assets/images/sushi_3.png"),
        rating: "4.1"),
    Food(
        price: "30",
        name: "Tuna Sushi",
        imagePath: ("assets/images/sushi_1.png"),
        rating: "4.5"),
    Food(
        price: "45",
        name: "Rice Sushi",
        imagePath: ("assets/images/sushi_4.png"),
        rating: "4.2")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text(
          "Tokyo",
          style: TextStyle(color: Colors.grey[800]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get 20% Discount",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Get 20% Discount"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(text: "Redeem", onTap: () {})
                    ],
                  ),
                  Image.asset(
                    "assets/images/sushi_4.png",
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  hintText: "Search h ere..."
                ),
              )),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "FoodManu",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: FoodManu.length,
            itemBuilder: (context, index) => FoodTile(
              food: FoodManu[index],
            ),
          )
          ),
          SizedBox(height: 25,),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25,right: 25,bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/sushi_2.png",height:60),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text("Salmon Eggs",style: TextStyle(fontFamily: "Salmon Eggs",fontSize: 18),
                        ),
                        SizedBox(height: 10,),

                        Text("\$20.00",style: TextStyle(color: Colors.grey[700]),)
                      ],
                    ),
                  ],
                ),
                Icon(Icons.favorite_outline,color: Colors.grey,size: 28,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
