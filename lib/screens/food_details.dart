import 'package:burger_king/screens/home.dart';
import 'package:burger_king/theme/color.dart';
import 'package:flutter/material.dart';

import '../model/food_model.dart';

// ignore: must_be_immutable
class FoodDetails extends StatefulWidget {
  FoodModel foodModel;
  FoodDetails({required this.foodModel, super.key});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  getStar(Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Icon(
        Icons.star,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: ListView(
          children: [
            //back icon
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, bottom: 0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: orange,
                    ),
                  )),
            ),
            //image
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 150,
                backgroundColor: orange,
                backgroundImage: AssetImage(widget.foodModel.image),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            //name type stars price
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  //name type stars
                  Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //food name
                          Text(
                            widget.foodModel.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18,
                                color: black,
                                fontFamily: "AnekTelugu",
                                fontWeight: FontWeight.w700),
                          ),
                          //food type
                          Text(
                            widget.foodModel.type,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                color: subBlack,
                                fontFamily: "AnekTelugu",
                                fontWeight: FontWeight.w400),
                          ),
                          //stars
                          Row(
                            children: [
                              widget.foodModel.star >= 1
                                  ? getStar(orange)
                                  : getStar(subBlack),
                              widget.foodModel.star >= 2
                                  ? getStar(orange)
                                  : getStar(subBlack),
                              widget.foodModel.star >= 3
                                  ? getStar(orange)
                                  : getStar(subBlack),
                              widget.foodModel.star >= 4
                                  ? getStar(orange)
                                  : getStar(subBlack),
                              widget.foodModel.star >= 5
                                  ? getStar(orange)
                                  : getStar(subBlack),
                            ],
                          )
                        ],
                      )),
                  //price
                  Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: orange),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "${widget.foodModel.price}DZ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 12,
                                color: yallow,
                                fontFamily: "Angkor",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            //divider
            Padding(
              padding: const EdgeInsets.all(20),
              child: Divider(color: subBlack, thickness: 0.5),
            ),
            //details
            Center(
              child: Column(
                children: [
                  const Text(
                    "Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        color: orange,
                        fontFamily: "Angkor",
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      widget.foodModel.desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          color: subBlack,
                          fontFamily: "AnekTelugu",
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Container(
              decoration: BoxDecoration(
                  color: orange, borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Order Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: white,
                      fontFamily: "AnekTelugu",
                      fontWeight: FontWeight.w700),
                ),
              )),
        ));
  }
}
