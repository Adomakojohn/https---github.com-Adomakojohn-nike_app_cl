// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nikeappclone/screens/size_list.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<SizeList> sizelist = [
    const SizeList(
      sizeText: "UK 6",
    ),
    const SizeList(
      sizeText: "UK 7",
    ),
    const SizeList(
      sizeText: "UK 8",
    ),
    const SizeList(
      sizeText: "UK 9",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/bottomnavbar');
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        child: Image.asset("Assets/icons/Rectangle.png"),
                      ),
                      Image.asset(
                        "Assets/icons/arrowsmallleft.png",
                        height: 35,
                        width: 35,
                      )
                    ],
                  ),
                ),
                const Text(
                  "Air Max 200 SE",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      child: Image.asset("Assets/icons/Rectangle.png"),
                    ),
                    Image.asset(
                      "Assets/icons/shoppingbag.png",
                      height: 35,
                      width: 35,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "size",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 250,
                      width: 80,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return SizeList(
                            sizeText: sizelist[index].sizeText,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    const Text(
                      "\$30.99",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "10% OFF",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 455,
                      width: 200,
                      child: Image.asset("Assets/images/NIKE.png"),
                    ),
                    Positioned(
                      bottom: -10,
                      right: -120,
                      child: Image.asset(
                        "Assets/images/redshoe.png",
                        height: 450,
                        width: 450,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        height: 34,
                        width: 36,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: const Border(
                              right: BorderSide(width: 1),
                              left: BorderSide(width: 1),
                              top: BorderSide(width: 1),
                              bottom: BorderSide(width: 1),
                            )),
                        child: const Icon(Icons.bookmark_border_outlined)),
                    const SizedBox(
                      height: 180,
                    ),
                    const Text(
                      "Color",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: 34,
                        width: 36,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: const Border(
                              right: BorderSide(width: 1),
                              left: BorderSide(width: 1),
                              top: BorderSide(width: 1),
                              bottom: BorderSide(width: 1),
                            )),
                        child: Container(
                          height: 20,
                          width: 20,
                          color: Colors.red,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: 34,
                        width: 36,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: const Border(
                              right: BorderSide(width: 1),
                              left: BorderSide(width: 1),
                              top: BorderSide(width: 1),
                              bottom: BorderSide(width: 1),
                            )),
                        child: Container(
                          height: 20,
                          width: 20,
                          color: Colors.indigo,
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            const Text(
              "Swipe down to add",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Expanded(
              child: Stack(
                children: [Image.asset("Assets/images/box.png")],
              ),
            )
          ],
        ),
      ),
    );
  }
}
