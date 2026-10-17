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
     mainAxisSpacing: 10,
      childAspectRatio: 0.65,
     children: [
      // product phone
      Card(
        elevation: 2,
        color: const Color.fromARGB(255, 241, 240, 240),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey.shade300)
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
       children: [
        Expanded(
          child: Image.asset('assets/image/mobile.png',
          fit: BoxFit.contain,

          ),
          ),
          SizedBox(height: 8,),
          Text(" Mobile",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 5,),
          Text("11,999",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          
          ),
          Text("free delivery")
        ]
          ),
        ),
      ),
        //product earpod
        Card(
        elevation: 2,
        color: const Color.fromARGB(255, 241, 240, 240),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey.shade300)
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
       children: [
        Expanded(
          child: Image.asset('assets/image/earpod.png',
          fit: BoxFit.contain,

          ),
          ),
          SizedBox(height: 8,),
          Text("Airpods",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 8,),
          Text("2,999",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          
          ),
          Text("free delivery")
        ]
          ),
        ),
      ),  

    // product laptop 
    Card(
        elevation: 2,
        color: const Color.fromARGB(255, 241, 240, 240),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey.shade300)
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
       children: [
        Expanded(
          child: Image.asset('assets/image/laptop.png',
          fit: BoxFit.contain,

          ),
          ),
          SizedBox(height: 8,),
          Text(" Laptop",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 8,),
          Text("42,499",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          
          ),
          Text("free delivery")
        ]
          ),
        ),
      ),
      // makeup products
     Card(
        elevation: 2,
        color: const Color.fromARGB(255, 241, 240, 240),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey.shade300)
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
       children: [
        Expanded(
          child: Image.asset('assets/image/cosmatics.jpeg',
          fit: BoxFit.contain,

          ),
          ),
          SizedBox(height: 8,),
          Text(" Cosmetics",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 8,),
          Text("899",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          
          ),
          Text("free delivery")
        ]
          ),
        ),
      ),
          ],
        ),     
     ],
      )
   ),
   bottomNavigationBar: BottomNavigationBar(
    selectedItemColor: blue,
    unselectedItemColor: Colors.grey,
    selectedFontSize: 12,
    unselectedFontSize: 12,
    type: BottomNavigationBarType.fixed,
    elevation: 10,
    currentIndex: 0,
    items: [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined
        ),
        activeIcon: Icon(Icons.home),
        label: 'Home'
        ),
        BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_cart_outlined
        ),
        activeIcon: Icon(Icons.shopping_cart),
        label: 'Carts'
        ),
        BottomNavigationBarItem(
        icon: Icon(
          Icons.inventory_2_outlined
        ),
        activeIcon: Icon(Icons.inventory_2),
        label: 'Orders'
        ),
BottomNavigationBarItem(
        icon: Icon(
          Icons.person_outline
        ),
        activeIcon: Icon(Icons.person),
        label: 'Account'
        ),
    ]),
   );
  }
}