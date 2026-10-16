import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final blue = const Color.fromARGB(255, 29, 86, 184);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // APP BAR
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 29, 86, 184),
        title: Row(
          children: [
            Image.asset(
      'assets/image/flipcartlogo.png',
            height: 55,
    ),
     SizedBox(width: 7),
         Text(
      "Flipkart",
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 35,
          fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        actions:  [
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
            size: 36,
          ),
     SizedBox(width: 15),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 36,
          ),
     SizedBox(width: 10),
        ],
      ),
   body: SingleChildScrollView(
   child :Column(
     children: [
        Container(
          color: const Color.fromARGB(255, 29, 86, 184),
          padding: const EdgeInsets.all(12),
          child: Container(
          width: double.infinity,
          height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
           ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search for products, brands and more",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
           ),
               prefixIcon: Icon(
                 Icons.search_outlined,
                   color: Colors.black,
                   size: 28,
             ),
               suffixIcon: Icon(
                 Icons.camera_alt_outlined,
                   color: Colors.black,
                   size: 28,
             ),
                 border: InputBorder.none,
              ),
            ),
           ),
         ),
      SizedBox(height: 10,),
        Image.asset(
           'assets/image/banner.jpeg',
             width: double.infinity,
             fit: BoxFit.fitWidth,
          ),
      SizedBox(height: 15,),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: Row(
         children: [
           Column(
             children: [
              
          Container(
            height: 100,
            width: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 154, 200, 237),
            borderRadius: BorderRadius.circular(50)
       ),
       
          child: Icon(
            Icons.phone_android,
            size: 55,
         ),
      ),
    SizedBox(height: 7,),
          Text("Mobiles",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
       ),
     )
   ],
  ),
    SizedBox(width: 20,),
      Column(
        children: [
        Container(
          height: 100,
          width: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 154, 200, 237),
          borderRadius: BorderRadius.circular(50)
       ),
          child: Icon(
            Icons.laptop,
            size: 55,
          ),
        ),
    SizedBox(height: 7,),
              Text("Laptops ",
             style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.w800
         ),
        ),
      ],
    ),
    SizedBox(width: 20,),
        Column(
        children: [
         Container(
          height: 100,
          width: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 154, 200, 237),
          borderRadius: BorderRadius.circular(50)
       ),
          child: Icon(
            Icons.tv,
            size: 55,
          ),
        ),
    SizedBox(height: 7,),
         Text("TV ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800
          ),
        ),
      ],
    ),
    SizedBox(width: 20,),
      Column(
       children: [
        Container(
          height: 100,
          width: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 154, 200, 237),
          borderRadius: BorderRadius.circular(50)
     ),
        child: Icon(
          Icons.checkroom,
          size: 55,
        ),
      ),
    SizedBox(height: 7,),
        Text("Fashion",
           style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800  
         ),
      ),
    ],
  ),
    SizedBox(width: 20,),
       Column(
        children: [
        Container(
          height: 100,
          width: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 154, 200, 237),
          borderRadius: BorderRadius.circular(50)
       ),
        child: Icon(
            Icons.chair,
            size: 55,
        ),
      ),
    SizedBox(height: 7,),
        Text("Furniture",
         style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800            
        ),
       )
      ],
    ),
    SizedBox(width: 20,),
      Column(
       children: [
        Container(
          height: 100,
          width: 100,
       decoration: BoxDecoration(
          color: const Color.fromARGB(255, 154, 200, 237),
          borderRadius: BorderRadius.circular(50)
        ),
          child: Icon(
            Icons.brush_outlined,
            size: 55,
          ),
        ),
     SizedBox(height: 7,),
         Text("Beauty",
           style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800           
          ),
        )
      ],
    ),
  ],
  ),
), 
SizedBox(height: 25,),
 Text(
  "Top Deals for You",
  textAlign: TextAlign.start,
  style: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),
  ),
SizedBox(height: 10,),
//grid
     GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisSpacing: 10,
     
      padding: EdgeInsets.all(12),
      childAspectRatio: 0.65,
     children: [
      // product phone
      Card(
        elevation: 2,
        color: const Color.fromARGB(255, 253, 247, 247),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey.shade300)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              alignment: Alignment.center,
              child: Image.asset('assets/image/mobile.png',
              fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 10,),
           Text("           Mobiles",
           style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
           ),
           ),
           SizedBox(height: 25,),
           Padding(
            padding:EdgeInsets.only(left: 13),
            child: Container(
              height: 20,
              width: 45,
               decoration: BoxDecoration(
      color: const Color.fromARGB(255, 56, 122, 58),
      ),
      child: Text(' 4.3 ★',
      style: TextStyle(
        color: Colors.white
      ),
      ),
            ),
             ),
           SizedBox(height: 10,),
Text("   ₹ 11,999",
style: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold
),
),
SizedBox(height: 8,),
Padding(
  padding: EdgeInsets.only(left: 13,),
  child: Container(
    height: 19,
    width: 65,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 56, 122, 58),
      ),
      child: Text(' 33% OFF',
      style: TextStyle(
        color: Colors.white
      ),
      ),
    ),
          
    ),
   ],
  )
    ), 
    //product earpod 
 Card(
        elevation: 2,
        color: const Color.fromARGB(255, 253, 247, 247),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey.shade300)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              alignment: Alignment.center,
              child: Image.asset('assets/image/earpod.png',
              fit: BoxFit.contain,
              ),
            ),
           Text("          Audio & wearables",
           style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
           ),
           ),
           SizedBox(height: 5,),
           Padding(
            padding:EdgeInsets.only(left: 13),
            child: Container(
              height: 20,
              width: 45,
               decoration: BoxDecoration(
      color: const Color.fromARGB(255, 56, 122, 58),
      ),
      child: Text(' 4.0 ★',
      style: TextStyle(
        color: Colors.white
      ),
      ),
            ),
             ),
           SizedBox(height: 10,),
Text("   ₹ 999",
style: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold
),
),
SizedBox(height: 8,),
Padding(
  padding: EdgeInsets.only(left: 13,),
  child: Container(
    height: 19,
    width: 65,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 56, 122, 58),
      ),
      child: Text(' 40% OFF',
      style: TextStyle(
        color: Colors.white
      ),
      ),
    ),
          
    ),
   ],
  )
    ),
    // product laptop 
     Card(
        elevation: 2,
        color: const Color.fromARGB(255, 253, 247, 247),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey.shade300)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              alignment: Alignment.center,
              child: Image.asset('assets/image/laptop.png',
              fit: BoxFit.contain,
              ),
            ),
           Text("          Laptops",
           style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
           ),
           ),
           SizedBox(height: 5,),
           Padding(
            padding:EdgeInsets.only(left: 13),
            child: Container(
              height: 20,
              width: 45,
               decoration: BoxDecoration(
      color: const Color.fromARGB(255, 56, 122, 58),
      ),
      child: Text(' 4.1 ★',
      style: TextStyle(
        color: Colors.white
      ),
      ),
            ),
             ),
           SizedBox(height: 10,),
Text("   ₹ 46,999",
style: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold
),
),
SizedBox(height: 8,),
Padding(
  padding: EdgeInsets.only(left: 13,),
  child: Container(
    height: 19,
    width: 65,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 56, 122, 58),
      ),
      child: Text(' 10% OFF',
      style: TextStyle(
        color: Colors.white
      ),
      ),
    ),
          
    ),
   ],
  )
    ),  
     Card(
        elevation: 2,
        color: const Color.fromARGB(255, 253, 247, 247),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey.shade300)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              alignment: Alignment.center,
              child: Image.asset('assets/image/cosmatics.jpeg',
              fit: BoxFit.contain,
              ),
            ),
           Text("         Beauty Products ",
           style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
           ),
           ),
           SizedBox(height: 5,),
           Padding(
            padding:EdgeInsets.only(left: 13),
            child: Container(
              height: 20,
              width: 45,
               decoration: BoxDecoration(
      color: const Color.fromARGB(255, 56, 122, 58),
      ),
      child: Text(' 3.9 ★',
      style: TextStyle(
        color: Colors.white
      ),
      ),
            ),
             ),
           SizedBox(height: 10,),
Text("   ₹ 899",
style: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold
),
),
SizedBox(height: 8,),
Padding(
  padding: EdgeInsets.only(left: 13,),
  child: Container(
    height: 19,
    width: 65,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 56, 122, 58),
      ),
      child: Text(' 12% OFF',
      style: TextStyle(
        color: Colors.white
      ),
      ),
    ),
          
    ),
   ],
  )
    ),   
          ],
        ),     
     ],
      )
   ),
   );
  }
}
