// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ConLists extends StatefulWidget {
  String imagePath;
  ConLists({super.key, required this.imagePath});

  @override
  State<ConLists> createState() => _ConListsState();
}

class _ConListsState extends State<ConLists> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 200,
              width: 370,
              color: Colors.grey.shade200,
            ),
          ),
        ),
        Positioned(
          left: 40,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "20%",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Discount ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Text(
                  "on your first purchase",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 40,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 100,
                      color: Colors.black,
                      child: const Text(
                        "Shop now",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: -10,
          bottom: -7,
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      widget.imagePath,
                    ),
                    fit: BoxFit.cover)),
          ),
        )
      ],
    );
  }
}


class ShoeTypeList extends StatefulWidget {
  String typeList;
  bool isSelected;

  ShoeTypeList({super.key, 
    required this.typeList,
    required this.isSelected,
  });

  @override
  State<ShoeTypeList> createState() => _ShoeTypeListState();
}

class _ShoeTypeListState extends State<ShoeTypeList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector( onTap: () {
          
        },
          child: Padding(
            padding: const EdgeInsets.all(9),
            child: widget.isSelected
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 40,
                      width: 95,
                      alignment: Alignment.center,
                      color: Colors.black,
                      child: Text(
                        widget.typeList,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                : Text(
                    widget.typeList,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade600,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}

class ShoesDetail extends StatefulWidget {
  String shoeImage;
  String shoeName;
  String shoePrice;
  ShoesDetail(
      {super.key, required this.shoeImage,
      required this.shoeName,
      required this.shoePrice});

  @override
  State<ShoesDetail> createState() => _ShoesDetailState();
}

class _ShoesDetailState extends State<ShoesDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 300,
          width: 300,
          color: Colors.grey.shade300,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.shoeImage,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.shoeName,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.shoePrice,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Image.asset("Assets/icons/rightarrow.png" , height: 30, width: 30,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
