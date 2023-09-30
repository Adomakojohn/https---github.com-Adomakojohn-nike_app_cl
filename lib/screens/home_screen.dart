// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:nikeappclone/models/conlist_model.dart';
import 'package:nikeappclone/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ConImages> conImages = [
    ConImages(imagePath: "Assets/images/green.png"),
    ConImages(imagePath: "Assets/images/yellow.png"),
    ConImages(imagePath: "Assets/images/shoemix.png"),
    ConImages(imagePath: "Assets/images/green.png"),
  ];
  List<ShoesDetail> shoeDetails = [
    ShoesDetail(
        shoeImage: "Assets/images/yellow.png",
        shoeName: "Airmax 97",
        shoePrice: "20.99"),
    ShoesDetail(
        shoeImage: "Assets/images/redbshoe.png",
        shoeName: "React Presto",
        shoePrice: "40.99"),
    ShoesDetail(
        shoeImage: "Assets/images/blueshoe.png",
        shoeName: "Airmax 99",
        shoePrice: "20.99"),
    ShoesDetail(
        shoeImage: "Assets/images/shoemix.png",
        shoeName: "Airmax 48",
        shoePrice: "30.99"),
  ];
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 160,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              child: Image.asset("Assets/icons/Rectangle.png"),
                            ),
                            Image.asset("Assets/icons/alignleft.png")
                          ],
                        ),
                        Image.asset("Assets/icons/nikeicon.png")
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'detailspage');
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: Image.asset("Assets/icons/Rectangle.png"),
                        ),
                        Image.asset("Assets/icons/shoppingbag.png")
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 250,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: false,
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) => ConLists(
                        imagePath: conImages[index].imagePath,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const ScrollingDotsEffect(
                      activeDotColor: Colors.black,
                      spacing: 18,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: double.infinity,
                child: ListView(physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ShoeTypeList(
                      typeList: "All",
                      isSelected: true,
                    ),
                    ShoeTypeList(
                      typeList: "Running",
                      isSelected: false,
                    ),
                    ShoeTypeList(
                      typeList: "Sneakers",
                      isSelected: false,
                    ),
                    ShoeTypeList(
                      typeList: "Formal",
                      isSelected: false,
                    ),
                    ShoeTypeList(
                      typeList: "Casual",
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3 / 4,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return ShoesDetail(
                      shoeName: shoeDetails[index].shoeName,
                      shoeImage: shoeDetails[index].shoeImage,
                      shoePrice: shoeDetails[index].shoePrice,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
