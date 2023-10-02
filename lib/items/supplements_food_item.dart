// ignore: file_names
import 'package:burger_king/model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:burger_king/theme/color.dart';

// ignore: must_be_immutable
class SupplementsFoodItem extends StatefulWidget {
  
  FoodModel foodInfo;

  SupplementsFoodItem({super.key , required this.foodInfo});

  @override
  State<SupplementsFoodItem> createState() => _SupplementsFoodItemState();
}

class _SupplementsFoodItemState extends State<SupplementsFoodItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30 ),
          child: Container(
            alignment: Alignment.topCenter,
            width: 170,
            height: 100,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: orange, width: 1)),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.vertical,
              children:  [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  widget.foodInfo.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      color: black,
                      fontFamily: "AnekTelugu",
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "${widget.foodInfo.price}DZ",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      color: orange,
                      fontFamily: "Angkor",
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: orange,
          backgroundImage: AssetImage(widget.foodInfo.image),
        ),
      ],
    );
  }
}
