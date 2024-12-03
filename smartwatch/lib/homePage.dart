import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF00623B),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/home.png',
                width: 23,
              ),
              backgroundColor: Color(0xFF00623B),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/pay.png',
                width: 23,
              ),
              backgroundColor: Color(0xFF00623B),
              label: 'pay',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/fav.png',
                width: 23,
              ),
              backgroundColor: Color(0xFF00623B),
              label: 'favorite',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/notif.png',
                width: 23,
              ),
              backgroundColor: Color(0xFF00623B),
              label: 'notification',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 31,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/burger.png',
                      width: 20,
                      height: 15,
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                      width: 47,
                      height: 47,
                    ),
                    Image.asset(
                      'assets/images/bag.png',
                      width: 23,
                      height: 23,
                    ),
                  ],
                ),
                SizedBox(
                  height: 52,
                ),
                Text(
                  'Our way of loving\nyou back',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(17),
                  width: double.infinity,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFF2F2F2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.search_outlined,
                        color: Color(0xFF868A91),
                        size: 25,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 16,
                          color: Color(0xFF868A91),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 92,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Color(0xFF3A5A40),
                            border: Border.all(),
                          ),
                          child: Text(
                            'All',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFF2F2F2),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          width: 122,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Color(0xFFF2F2F2),
                            border: Border.all(),
                          ),
                          child: Text(
                            'Watch',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF4D4D4D),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Color(0xFFF2F2F2),
                            border: Border.all(),
                          ),
                          child: Text(
                            'Shirt',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF4D4D4D),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          width: 99,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Color(0xFFF2F2F2),
                            border: Border.all(),
                          ),
                          child: Text(
                            'Shoes',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF4D4D4D),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  'Our Best Seller',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/product');
                      },
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 82) / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/smartwatch.png',
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mi Band 8 Pro',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          r'$54.00',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF00623B),
                                          ),
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 82) / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/baju.png',
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lycra Men’s shirt',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        r'$12.00',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF00623B),
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 82) / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/headset.png',
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Siberia 800',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        r'$45.00',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF00623B),
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 82) / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/sepatu.png',
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Strawberry Frappuccino',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        r'$35.00',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF00623B),
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
