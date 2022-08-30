// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables


import 'package:flutter/material.dart';
import 'package:my_mainproject/details.dart';
import 'package:my_mainproject/mydetails.dart';




class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


   List<Map<String, String>> categories = [
    {"title": "AC services", "image": "assets/icons/Ac.png"},
    {"title": "plumber", "image": "assets/icons/plumber.webp"},
    {"title": "painting", "image": "assets/icons/images.png"},
    {"title": "cleaning", "image": "assets/icons/cleaning.jpg"},
];



  List productDataSet = [
    {
      "title": "Men's Hair cut",
      "price": "\$200",
      "delivery-charge": "Free",
      "duration": "20 min",
      "category": "Hair cut",
      "image": "assets/images/new.png",
      "shopimage":"assets/images/book2.jpg",
      "shopname":"Book Shop",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.",
    },
    {
      "title": "plumbing fitting services",
      "price": "\$500",
      "delivery-charge": "N500",
      "category": "plumbing",
      "duration": "15 min",
      "image": "assets/images/plumbing1.png",
      "shopimage":"assets/images/phone.jpg",
      "shopname":"Phone Shop",
      "description":
          "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. "
    },
    {
      "title": "Air conditioning services",
      "price": "\$400",
      "delivery-charge": "N200",
      "category": "Ac services",
      "duration": "1 hour",
      "image": "assets/images/aircon.png",
      "shopimage":"assets/images/cosme.jpeg",
      "shopname":"Costmetic Shop",
      "description":
          "Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. "
    },
    {
      "title": "Cleaning services",
      "price": "\$300",
      "delivery-charge": "Free",
      "duration": "20 min",
      "category": "cleaning",
      "image": "assets/images/cleaning.jpeg",
      "shopimage":"assets/images/food.jpeg",
      "shopname":"Food Shop",
      "description":
          "Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. ",
    },

{
      "title": "Laundry Services",
      "price": "\$200",
      "delivery-charge": "Free",
      "duration": "20 min",
      "category": "laundry",
      "image": "assets/images/laundry2.png",
      "shopimage":"assets/images/shop1.jpeg",
      "shopname":"Drinks Shop",
      "description":
          "Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. ",
    },


    {
      "title": "Painting Services",
      "price": "\$300",
      "delivery-charge": "Free",
      "duration": "20 min",
      "category": "painting",
      "image": "assets/images/painting.png",
      "shopimage":"assets/images/shop2.jpg",
      "shopname":"Fruits Shop",
      "description":
          "Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. ",
    },

  ];
    List sortedProductDataSet = [];

int activeCategories = 0;

  var products;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(


      backgroundColor:Colors.white,
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: 50,) ,
            Text("",style: TextStyle(color: Colors.amber),)
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.00,
        //.........................................
        //......This is the leading section...........
        //.........................................
      
actions: [
  Padding(padding: EdgeInsets.all(8.0), 
 child:  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_add_alt_rounded,
                        color: Colors.blue,
                      )),
  ),
  SizedBox(height: 2,)
],
      ),
      body: SafeArea(
child: ListView(

  children: [
  
    Container(
    width: 1000,
    height: 200,
    color: Colors.white,
    child: Image(image: AssetImage("assets/images/design.jpg", 
   
    )),
    
  ),
SizedBox(height: 10,),
  
            Container(
                child: Row(
                  children: [

                       Text(
                          "What are you looking for ?", 
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                    ),
                    SizedBox(width: 110,),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.amber,
                        )),
                 
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(0),border:Border.all(color: Colors.grey) ),
                margin: EdgeInsets.symmetric(horizontal: 5)),
SizedBox(height: 20,),


Sepearator(
  
  title: "Cathegories"
  ),

      SizedBox(width: 5,),
      Container(
      
        decoration: BoxDecoration(border: Border.all(color: Colors.transparent),borderRadius: BorderRadius.circular(5),),
        height: 190,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder:(BuildContext context, index){
          return Container(
            
            width: 120, margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),
            borderRadius:BorderRadius.circular(10) ),
            child: Column(
              
              children: [
                
                Padding(padding: EdgeInsets.all(10)),
                Container(
        
               //color: Colors.amber,
                  height: 100,
                  width: 50,
                  child: Image(image: AssetImage(categories[index]['image']!,
                  
   
    ),),
                ),
Text(categories[index]["title"]!,style: TextStyle(fontWeight: FontWeight.bold),
),
SizedBox(height: 10,),
Text("14 Services",style: TextStyle(color: Colors.amber),)

              ],
            ),
    
            );
          
// return GestureDetector(

//   // onTap: () {
//   //   List allproduct = productDataSet
//   //   .where((element) => element["category"] ==
//   //   categories[index]["title"]).toList();

//   //   setState(() {
      
//   //         activeCategories =  index;
//   //         sortedProductDataSet = allproduct;
//   //   });
//   },

// );

        } 
        ),   
        ), 

        
SizedBox(height: 15, width: 30,),
        Row(
          children: [
            Padding(padding:EdgeInsets.only(left: 10)),
            Container(
  margin: EdgeInsets.only(right: 7),

  width: 30,
  height: 10,
  color: Colors.blue,
),
SizedBox(height: 20, width: 0.5,),
            Container(
  margin: EdgeInsets.only(right: 5),

  width: 5,
  height: 5,
  color: Colors.blue,
),

SizedBox(height: 20, width: 0.5,),
            Container(
  margin: EdgeInsets.only(right: 6),

  width: 5,
  height: 5,
  color: Colors.blue,
),
          ],
        ),

         Sepearator(
  
  title: "Most Popular Services"
  ),


  


SizedBox(width: 5,),
      Container(
  
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5),),
        height: 190,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder:(BuildContext context, index){
          return GestureDetector(
            onTap: () {
         print(     productDataSet[index]);
               Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return  MyDetails(
                            

                            dataSet: productDataSet[index],
                          
                            
                          );
                          
                          // Details(
                          //   dataSet: sortedProductDataSet.isEmpty
                          //       ? productDataSet[index]
                          //       : sortedProductDataSet[index],
                          //   products: [],
                          // );
                        }));
            },


            child: Container(
              
              
              color: Colors.white, height: 70, 
              width: 120, margin: EdgeInsets.only(right: 5),
              child: Column(
                children: [
          
                   Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
          
                    image: DecorationImage(
                      image: AssetImage(
                        productDataSet[index]["image"]!,),
                        fit: BoxFit.fitHeight
                        
                        
                        ),
                        borderRadius: BorderRadius.circular(10)
                    
                    ),
                    
                  ),
                  
                SizedBox(height: 10,),
          Text(productDataSet[index]["title"]!,style: TextStyle(fontWeight: FontWeight.bold),
          ),
          
          
          
           Row(
             children: [
               Padding(padding: EdgeInsets.only(right: 10)),
               Container(
              
                width: 5,
                height: 5,
                color: Colors.amber,
          ),
          SizedBox(width: 5,),
          Container(
            
              
                width: 5,
                height: 5,
                color: Colors.amber,
          ),
          
          
             ],
           ),
             ],
              ),
            
              ),
          );
        }
),
        
      ),

      SizedBox(height: 15, width: 30,),
        Row(
          children: [
            Padding(padding:EdgeInsets.only(left: 10)),
            Container(
  margin: EdgeInsets.only(right: 7),

  width: 30,
  height: 10,
  color: Colors.blue,
),
SizedBox(height: 20, width: 0.5,),
            Container(
  margin: EdgeInsets.only(right: 5),

  width: 5,
  height: 5,
  color: Colors.blue,
),

SizedBox(height: 20, width: 0.5,),
            Container(
  margin: EdgeInsets.only(right: 6),

  width: 5,
  height: 5,
  color: Colors.blue,
),
          ],
        ),

         Sepearator(
  
  title: "Most Popular Shops"
  ),

SizedBox(width: 5,),
      Container(
  
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5),),
        height: 190,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder:(BuildContext context, index){
          return GestureDetector(
            onTap: () {
         print(     productDataSet[index]);
               Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return  MyDetails(
                            

                            dataSet: productDataSet[index],
                          
                            
                          );
                          
                          // Details(
                          //   dataSet: sortedProductDataSet.isEmpty
                          //       ? productDataSet[index]
                          //       : sortedProductDataSet[index],
                          //   products: [],
                          // );
                        }));
            },


            child: Container(
              
              
              color: Colors.white, height: 70, 
              width: 120, margin: EdgeInsets.only(right: 5),
              child: Column(
                children: [
          
                   Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
          
                    image: DecorationImage(
                      image: AssetImage(
                        productDataSet[index]['shopimage']!,),
                        fit: BoxFit.fitHeight
                        
                        
                        ),
                        borderRadius: BorderRadius.circular(10)
                    
                    ),
                    
                  ),
                  
                SizedBox(height: 10,),
          Text(productDataSet[index]["shopname"]!,style: TextStyle(fontWeight: FontWeight.bold),
          ),
          
          
          
           Row(
             children: [
               Padding(padding: EdgeInsets.only(right: 10)),
               Container(
              
                width: 5,
                height: 5,
                color: Colors.amber,
          ),
          SizedBox(width: 5,),
          Container(
            
              
                width: 5,
                height: 5,
                color: Colors.amber,
          ),
          
          
             ],
           ),
             ],
              ),
            
              ),
          );
        }
),
        
      ),



  ]
  
  
      )

       ),
    );
  }
  

  transDarkColor(double d) {}

  // ignore: non_constant_identifier_names
  ProductCard({products, dataSet}) {}
}

class Sepearator extends StatelessWidget {
  const Sepearator({ Key? key,required this.title }) : super(key: key);

final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11, vertical: 20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
          ),
          Expanded(child: Container()),
          Text(
            "view all",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.add_circle_outline_rounded,color: Colors.blue,
            size: 14,
          ),
        ],
      ),
    );
  }
}

categoryCard(double cWidth, double sideMagin, Map data, bool active) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: sideMagin * 0.5),
    margin: EdgeInsets.only(left: sideMagin),
    height: cWidth * 0.14,
    decoration: BoxDecoration(
        color: active ? Colors.yellow.withOpacity(0.6) : Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image(
                image: AssetImage(data['image']),
              ),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: sideMagin),
          child: Text(data['title']),
        ),
        SizedBox(width: 2)
      ],
    ),
  );
}


class productDataCard extends StatelessWidget {
  const productDataCard({ Key? key,required this.dataSet,required this.prodcuct }) : super(key: key);

  final Map prodcuct;
  final List dataSet;

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}