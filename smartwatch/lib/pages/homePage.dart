import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smartwatch/models/product_model.dart';
import 'package:smartwatch/utils/dummy.dart';
import 'package:smartwatch/widgets/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'All';
  List<ProductModel> filteredProducts = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    filteredProducts = DataDummy.listDummyProducts;
  }

  void filterProducts(String category) {
    setState(() {
      selectedCategory = category;
      if (category == 'All') {
        filteredProducts = DataDummy.listDummyProducts;
      } else {
        filteredProducts = DataDummy.listDummyProducts
            .where((product) => product.type == category)
            .toList();
      }
    });
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 1) {
      Navigator.pushNamed(context, '/favorites');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavbar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      child: Image.asset(
                        'assets/images/bag.png',
                        width: 23,
                        height: 23,
                      ),
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
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    itemCount: DataDummy.listDummyCategories.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      final String data = DataDummy.listDummyCategories[index];

                      return InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () => filterProducts(data),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 4,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: selectedCategory == data
                                ? const Color(0xFF00623B)
                                : const Color(0xFFF2F2F2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            data,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: selectedCategory == data
                                      ? Colors.white
                                      : const Color(0xFF4D4D4D),
                                ),
                          ),
                        ),
                      );
                    },
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
                  children: filteredProducts.map((product) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/product',
                            arguments: product);
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
                                product.image,
                                fit: BoxFit.cover,
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
                                      product.name,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$${product.price.toStringAsFixed(2)}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF00623B),
                                          ),
                                        ),
                                        Icon(
                                          product.isFavorite
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          size: 20,
                                          color: product.isFavorite
                                              ? Colors.red
                                              : Colors.grey,
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
                    );
                  }).toList(),
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
