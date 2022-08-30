import 'package:flutter/material.dart';

class MyDetails extends StatefulWidget {
  final Map dataSet;
  const MyDetails({ Key? key, required this.dataSet,}) : super(key: key);

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {


   List<Map<String, String>> categories = [
    {"title": "AC services", "image": "assets/icons/Ac.png"},
    {"title": "plumber", "image": "assets/icons/plumber.webp"},
    {"title": "painting", "image": "assets/icons/images.png"},
    {"title": "cleaning", "image": "assets/icons/cleaning.jpg"},
];

// List productDataSet = [
//     {
//       "title": "Men's Hair cut",
//       "rating": "4.2",
//       "delivery-charge": "Free",
//       "duration": "20 min",
//       "category": "Hair cut",
//       "image": "assets/images/man2.jpeg",
//       "description":
//           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.",
//     },
//     {
//       "title": "plumbing fitting services",
//       "rating": "4.6",
//       "delivery-charge": "N500",
//       "category": "plumbing",
//       "duration": "15 min",
//       "image": "assets/images/plumbing1.png",
//       "description":
//           "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. "
//     },
//     {
//       "title": "Air conditioning services",
//       "rating": "4.8",
//       "delivery-charge": "N200",
//       "category": "Ac services",
//       "duration": "1 hour",
//       "image": "assets/images/aircon.png",
//       "description":
//           "Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. "
//     },
//     {
//       "title": "Cleaning services",
//       "rating": "4.2",
//       "delivery-charge": "Free",
//       "duration": "20 min",
//       "category": "cleaning",
//       "image": "assets/images/cleaning.jpeg",
//       "description":
//           "Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. ",
//     },

// {
//       "title": "Laundry Services",
//       "rating": "4.2",
//       "delivery-charge": "Free",
//       "duration": "20 min",
//       "category": "laundry",
//       "image": "assets/images/laundry2.png",
//       "description":
//           "Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. ",
//     },


//     {
//       "title": "Painting Services",
//       "rating": "4.2",
//       "delivery-charge": "Free",
//       "duration": "20 min",
//       "category": "painting",
//       "image": "assets/images/painting.png",
//       "description":
//           "Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. ",
//     },

//   ];

  var index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(padding: EdgeInsets.only(left: 2),
        child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue,
                )),
        ),
        actions: [],
        title:
      
         const 
        Text("Product List",style: TextStyle(
          color: Colors.blue,fontSize: 15),),
          
          backgroundColor: Colors.white,        
           ),
     
     
      body: SafeArea(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(padding: EdgeInsets.only(bottom: 20)),

            SizedBox(width: 15,),
           
           Container(
             
             margin: EdgeInsets.symmetric(vertical: 20),
             padding: EdgeInsets.only(left: 7),
height: 300,
width: 350,

decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black.withOpacity(0.1)),
borderRadius: BorderRadius.circular(10)),
child: Image(image: AssetImage(widget.dataSet['image']
                  
    ),
    fit: BoxFit.fill
    
    ),

    
           ),
         
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  
  Text(widget.dataSet['title'],style: TextStyle(
    color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 18),),
    SizedBox(height: 8,),
   Row(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
    
  
        Text("* * * * * *",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w900,fontSize: 20),),
       
        SizedBox(width: 7,height: 5,),

    Text("4.5(105 Reviews)",style: TextStyle(
      color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),)
     ],
   ),
   
SizedBox(height: 10,),
   Row(
     children: [
       
   Text(widget.dataSet["price"],style: TextStyle(color: Color.fromARGB(255, 8, 107, 194),fontSize: 30,fontWeight:
   FontWeight.w700),),

   SizedBox(width: 7,),
    Text("\$220",style: TextStyle(
      color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 12,),),
    
SizedBox(width: 150,),

    Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(color: Color.fromARGB(255, 9, 105, 184),
      borderRadius: BorderRadius.circular(3)),
      padding: EdgeInsets.only(left: 6),
      child: Text("-",style: TextStyle(color: Colors.white),),
    ),

SizedBox(width: 5,),
    Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        color: Colors.white,border: Border.all(color: Colors.amber),
        borderRadius: BorderRadiusDirectional.circular(3)),
        padding: EdgeInsets.only(left: 3),
        child: Text("2",style: TextStyle(color: Color.fromARGB(255, 8, 107, 189),fontSize: 10),),
        ),
    

SizedBox(width: 5,),
    Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(color: Color.fromARGB(255, 6, 111, 197),borderRadius: 
      BorderRadius.circular(3)),
      padding: EdgeInsets.only(left: 3),
      child: Text("+",style: TextStyle(color: Colors.white,fontSize: 12),),
      
    )
     ],  
   ) ,
SizedBox(height: 20,),
Text("Warranty: 1 Year manufacturer warranty",style: 
TextStyle(fontWeight: FontWeight.bold),),

SizedBox(height: 15,),

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children
  : [
        Row(
      children: [
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
        ),
        SizedBox(width: 20,),
    Text("High pressure pump is a machine for")

    
      ],
      
    ),

    Row(
      children: [
         SizedBox(width: 24,),
        Text("High pressure pump is a machine for"),
      ],
    )
  ],
),

       SizedBox(height: 10,),     


Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children
  : [
        Row(
      children: [
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
        ),
        SizedBox(width: 20,),
    Text("High pressure pump is a machine for")

    
      ],
      
    ),

    Row(
      children: [
         SizedBox(width: 24,),
        Text("High pressure pump is a machine for"),
      ],
    )
  ],
),

SizedBox(height: 5,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children
  : [
        Row(
      children: [
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
        ),
        SizedBox(width: 20,),
    Text("High pressure pump is a machine for")

    
      ],
      
    ),

    Row(
      children: [
         SizedBox(width: 24,),
        Text("High pressure pump is a machine for"),
      ],
    )
  ],
)

            ],
  ),
)],
)

        ),


      
    );
  }

  icon(Icon icon) {}
}