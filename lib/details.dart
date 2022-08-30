
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  

  const Details({ Key? key,required this.dataSet }) : super(key: key);

final Map dataSet;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

List category = ["Mens Hair Cut", "Cleaning Services", "Plumbing Services", "Ac services"];

  List filterd_suggestions = [];

  List<Map> suggestions = [
    {
      "caption": "Mens Hair Cut",
      "image": "assets/images/haircut.jpg",
      "title": "Round cut",
      "stand": "Bella Restaurant",
      "price": "\$25",
    },
    {
      "caption": "Mens Hair Cut",
      "image": "assets/images/haircut.jpg",
      "title": "Ponk",
      "stand": "Bella Restaurant",
      "price": "\$30",
    },
    {
      "caption": "Mens Hair cut",
      "image": "assets/images/haircut22.jpg",
      "title": "Skin cut",
      "stand": "Bella Restaurant",
      "price": "\$45",
    },
    {
      "caption": "Men Hair cut",
      "image": "assets/images/haircut.jpg",
      "title": "wave",
      "stand": "Bella Restaurant",
      "price": "\$30",
    },
    // cleaning
    {
      "caption": "cleaning services",
      "image": "assets/images/laundry2.png",
      "title": "sweeping",
      "stand": "UK's Restaurant",
      "price": "\$25",
    },
    {
      "caption": "cleaning services",
      "image": "assets/images/laundry1.png",
      "title": "laundry",
      "stand": "Vazo Restaurant",
      "price": "\$30",
    },
    {
      "caption": "cleaning services",
      "image": "assets/images/cleaning.jpeg",
      "title": "mopping",
      "stand": "Dera Bar",
      "price": "\$45",
    },
    {
      "caption": "cleaning services",
      "image": "assets/images/carwash.png",
      "title": "washing",
      "stand": "Gona Hotel",
      "price": "\$30",
    },
  ];


  int count = 2;
  int activeTab = 0;

  var cPrimary;

  var cWhite;

  var cartData;



  @override
   void initState() {
    loadFilter("Mens hair cut");
    // TODO: implement initState
    super.initState();
  }
void loadFilter(String name) {
    List pen =
        suggestions.where((element) => element['caption'] == name).toList();

    setState(() {
      filterd_suggestions = pen;
    });

    print(pen);
  }

 @override
  Widget build(BuildContext context) {
    bool switchColor = false;
    //.........................................
    //......Dimension Declaration..................
    //.........................................
    double cHeight = MediaQuery.of(context).size.height;
    double cWidth = MediaQuery.of(context).size.width;
    double sideMagin = cWidth * 0.05;
    double bRadius = 5;
    Color black = Colors.black;


    var dataSet;
    return Scaffold(

        appBar: customAppBar(context, sideMagin, "Product List"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //This container holds the first four columns
              Container(
                margin: EdgeInsets.symmetric(horizontal: sideMagin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: cWidth,
                        height: cHeight * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                                image: AssetImage(widget.dataSet['image']),
                                fit: BoxFit.fitWidth),
                            borderRadius: BorderRadius.circular(10.0))),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: sideMagin),
                      child: Text(
                        widget.dataSet['title'],
                        style: subText1Bold(size: 18, value: 0.8),
                      ),
                    ),
                    Text(
                      widget.dataSet['description'],
                    ),
                    SizedBox(
                      height: cWidth * 0.05,
                    ),
                    Row(
                      children: [
                        productIconCard(Icons.star_rate_outlined,
                            widget.dataSet['rating'], context),
                        productIconCard(Icons.emoji_transportation_outlined,
                            widget.dataSet['delivery-charge'], context),
                        productIconCard(Icons.timer_sharp,
                            widget.dataSet['duration'], context)
                      ],
                    )
                  ],
                ),
              ),

              //this container will hold the detail categories suggestion display
              Container(
                width: cWidth,
                height: cHeight * 0.06,
                margin: EdgeInsets.only(top: cWidth * 0.07, left: sideMagin),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (BuildContext context, i) {
                      return GestureDetector(
                        onTap: () {
                          print(category[i]);
                          print(suggestions[i]);

                          loadFilter(category[i]);

                          setState(() {
                            activeTab = i;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: sideMagin),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: activeTab == i
                                  ? cPrimary
                                  : Colors.transparent,
                              border: Border.all(
                                  width: 1,
                                  color: activeTab == i
                                      ? cPrimary
                                      : transDarkColor(0.5)),
                              borderRadius: BorderRadius.circular(sideMagin)),
                          child: Center(
                              child: Text(
                            category[i],
                            style: TextStyle(
                                color: activeTab == i
                                    ? cWhite
                                    : transDarkColor(0.8)),
                          )),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: sideMagin, vertical: sideMagin),
                child: Text(
                  category[activeTab],
                  style: subText1Bold(size: 18, value: 0.8),
                ),
              ),

              Container(
                width: cWidth,
                height: cHeight * 0.33,
                padding: EdgeInsets.only(right: sideMagin),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: filterd_suggestions.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        // width: cWidth * 0.45,
                        margin: EdgeInsets.only(left: sideMagin, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(sideMagin),
                            boxShadow: [
                              BoxShadow(
                                color: transDarkColor(0.05),
                                offset: Offset(2, 3),
                                blurRadius: 15.9,
                              )
                            ],
                            color: cWhite),
                        child: Column(
                          children: [
                            Container(
                              height: cWidth * 0.25,
                              child: Image(
                                image: AssetImage(
                                    filterd_suggestions[index]['image']),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    filterd_suggestions[index]['title'],
                                    style: subText1Bold(value: 0.8, size:5),
                                  ),
                                  SizedBox(
                                    height: cWidth * 0.01,
                                  ),
                                  Text(
                                    filterd_suggestions[index]['stand'],
                                    style: subText1(),
                                  ),
                                  SizedBox(
                                    height: cWidth * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        filterd_suggestions[index]['price'],
                                        style: subText1Bold(value: 0.8, size: 5),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          if (cartData.contains(
                                              filterd_suggestions[index])) {
                                            setState(() {
                                              cartData.remove(
                                                  filterd_suggestions[index]);
                                            });
                                          } else {
                                            setState(() {
                                              cartData.add(
                                                  filterd_suggestions[index]);
                                            });
                                          }

                                          print(
                                              "this is the updated cart list");

                                          print(cartData);
                                        },
                                        child: CircleAvatar(
                                          backgroundColor: cPrimary,
                                          radius: 10,
                                          child: cartData.contains(
                                                  filterd_suggestions[index])
                                              ? Icon(
                                                  Icons.remove,
                                                  size: 15,
                                                  color: cWhite,
                                                )
                                              : Icon(
                                                  Icons.add,
                                                  size: 15,
                                                  color: cWhite,
                                                ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      
    );
  }



  customAppBar(BuildContext context, double sideMagin, String s) {}

  subText1Bold({required int size, required double value}) {}

  productIconCard(IconData star_rate_outlined, dataSet, BuildContext context) {}

  transDarkColor(double d) {}

  subText1() {}
}