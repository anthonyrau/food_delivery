import 'package:flutter/material.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/helper.dart';
import 'package:food_delivery_app/widgets/custom_nav_bar.dart';
import 'package:food_delivery_app/widgets/searchbar.dart';

class DessertPage extends StatelessWidget {
  static const routeName = '/dessertpage';
  const DessertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: AppColor.primary,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                'Desserts',
                                style: Helper.getTheme(context).headline5,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          Helper.getAssetName('cart.png', 'virtual')
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SearchBar(
                    title: 'Search Food',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName('apple_pie.jpg', 'real'),
                      fit: BoxFit.cover,
                    ),
                    name: 'French Apple Pie',
                    shop: 'Minute by tuk tuk',
                    rating: '4.9',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName('dessert2.jpg', 'real'),
                      fit: BoxFit.cover,
                    ),
                    name: 'Dark Chocolate Cake',
                    shop: 'Cake by Tella',
                    rating: '4.7',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  DessertCard(
                  image: Image.asset(
                    Helper.getAssetName('dessert4.jpg', 'real'),
                    fit: BoxFit.cover,
                  ),
                  name: 'Street Shake',
                  shop: 'Cafe Racer',
                  rating: '4.9',
                ),
                const SizedBox(
                  height: 5,
                ),
                DessertCard(
                  image: Image.asset(
                    Helper.getAssetName('dessert5.jpg', 'real'),
                    fit: BoxFit.cover,
                  ),
                  name: 'Frudgy Chewy Brownies',
                  shop: 'Minute by tuk tuk',
                  rating: '4.9',
                ),
                const SizedBox(
                  height: 100,
                ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              menu: true,
            )
          ),
        ],
      ),
    );
  }
}

class DessertCard extends StatelessWidget {
  const DessertCard({
    Key key,
    @required String name,
    @required String rating,
    @required String shop,
    @required Image image,
  }) : 
  _name = name,
  _rating = rating,
  _shop = shop,
  _image = image,
  super(key: key);

  final String _name;
  final String _rating;
  final String _shop;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: _image,
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.7),
                ]
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _name,
                    style: Helper.getTheme(context)
                    .headline4
                    .copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        Helper.getAssetName('star_filled.png', 'virtual'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        _rating,
                        style: const TextStyle(
                          color: AppColor.orange,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        _shop,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          '.',
                          style: TextStyle(
                            color: AppColor.orange,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Desserts',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}