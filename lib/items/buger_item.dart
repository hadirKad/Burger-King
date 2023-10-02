
import 'package:burger_king/model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:burger_king/theme/color.dart';

// ignore: must_be_immutable
class BurgerItem extends StatefulWidget {
  FoodModel foodModel ;

  BurgerItem(
      {super.key,
      required this.foodModel});

  @override
  State<BurgerItem> createState() => _BurgerItemState();
}

class _BurgerItemState extends State<BurgerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: orange),
        child: Padding(
          padding:const  EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(widget.foodModel.image),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                  widget.foodModel.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      color: white,
                      fontFamily: "AnekTelugu",
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "${widget.foodModel.price}DZ",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      color: yallow,
                      fontFamily: "Angkor",
                      fontWeight: FontWeight.w400),
                ),
          ]),
        ));
  }
}
