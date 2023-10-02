import 'package:burger_king/screens/food_details.dart';
import 'package:flutter/material.dart';
import 'package:burger_king/items/buger_item.dart';
import 'package:burger_king/theme/color.dart';
import 'package:burger_king/items/supplements_food_item.dart';
import 'package:burger_king/theme/style.dart';

import 'food_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSupplements = true;
  bool isDrinks = false;
  int accompagnementsListlength = FoodInfo.drinksList.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ///app logo
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Burger King",
                    style: TextStyle(color: black, fontFamily: "Angkor"),
                  ),
                  Text(
                    "We do burgers & sandwichs",
                    style: TextStyle(
                        color: subBlack,
                        fontFamily: "AnekTelugu",
                        fontWeight: FontWeight.w200),
                  )
                ],
              ),
              const Image(
                image: AssetImage("lib/assets/logo.png"),
                height: 40,
                width: 40,
              )
            ],
          ),
        ),

        ///search bar
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: subBackground,
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: orange,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
        ),

        ///food Type
        Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isDrinks = false;
                          isSupplements = true;
                          accompagnementsListlength =
                              FoodInfo.supplementsList.length;
                        });
                      },
                      child: Text("Supplements",
                          style: isSupplements
                              ? Style.typeFoodSelected
                              : Style.typeFoodNotSelected),
                    ),
                    if (isSupplements) Style.typeFoodSelectedContainer
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isDrinks = true;
                          isSupplements = false;
                          accompagnementsListlength =
                              FoodInfo.drinksList.length;
                        });
                      },
                      child: Text("Drinks",
                          style: isDrinks
                              ? Style.typeFoodSelected
                              : Style.typeFoodNotSelected),
                    ),
                    if (isDrinks) Style.typeFoodSelectedContainer
                  ],
                ),
              ],
            )),

        ///food type list view
        Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: accompagnementsListlength,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (isDrinks) {
                    return Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        FoodDetails(foodModel: FoodInfo.drinksList[index],)),
                              );
                          },
                          child: SupplementsFoodItem(
                              foodInfo: FoodInfo.drinksList[index]),
                        ));
                  } else {
                    return Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        FoodDetails(foodModel: FoodInfo.supplementsList[index],)),
                              );
                          },
                          child: SupplementsFoodItem(
                              foodInfo: FoodInfo.supplementsList[index]),
                        ));
                  }
                })),

        ///burgers
        Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //burger text
                const Padding(
                  padding: EdgeInsets.only(left: 22, bottom: 20),
                  child: Text(
                    "Burgers",
                    style: TextStyle(
                        fontSize: 16,
                        color: black,
                        fontFamily: "AnekTelugu",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //burgers list
                Expanded(
                    flex: 2,
                    child: ListView.builder(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        itemCount: FoodInfo.burgerList.length,
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        FoodDetails(foodModel: FoodInfo.burgerList[index],)),
                              );
                            },
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 15, 10),
                                child: BurgerItem(
                                    foodModel: FoodInfo.burgerList[index])),
                          );
                        })),
              ],
            ))
      ],
    ));
  }
}
