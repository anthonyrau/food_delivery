import 'package:flutter/material.dart';
import 'package:food_delivery_app/home_screen/individualitem.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/helper.dart';
import 'package:food_delivery_app/widgets/custom_nav_bar.dart';
import 'package:food_delivery_app/widgets/searchbar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Good morning Akila!',
                          style: Helper.getTheme(context).headline5,
                        ),
                        Image.asset(
                          Helper.getAssetName('cart.png', 'virtual'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      'Delivering to',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: 250,
                        child: DropdownButton(
                          value: 'current location',
                          items: const [
                            DropdownMenuItem(
                              child: Text(
                                'Current Location'
                              ),
                              value: 'current location',
                            ),
                          ],
                          icon: Image.asset(
                            Helper.getAssetName('dropdown_filled.png', 'virtual')
                          ),
                          style: Helper.getTheme(context).headline4,
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SearchBar(
                    title: 'Search Food',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName('hamburger2.jpg', 'real'),
                              fit: BoxFit.cover,
                            ),
                            name: 'Offers',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName('rice2.jpg', 'real'),
                              fit: BoxFit.cover,
                            ),
                            name: 'Sri Lankan',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName('fruit.jpg', 'real'),
                              fit: BoxFit.cover,
                            ),
                            name: 'Italian',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName('rice.jpg', 'real'),
                              fit: BoxFit.cover,
                            ),
                            name: 'Indian',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Restaurants',
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {}, 
                          child: const Text(
                            'View all'
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName('pizza2.jpg', 'real'),
                      fit: BoxFit.cover,
                    ),
                    name: 'Minute by tuk tuk',
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName('breakfast.jpg', 'real'),
                      fit: BoxFit.cover,
                    ),
                    name: 'Cafe de Noir',
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName('bakery.jpg', 'real'),
                      fit: BoxFit.cover,
                    ),
                    name: 'Bakes by Tella',
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Most Popular',
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {}, 
                          child: const Text(
                            'View all'
                          )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 260,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MostPopularCard(
                            image: Image.asset(
                              Helper.getAssetName('pizza4.jpg', 'real'),
                              fit: BoxFit.cover,
                            ),
                            name: 'Cafe de Bambaa',
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          MostPopularCard(
                            image: Image.asset(
                              Helper.getAssetName('dessert3.jpg', 'real'),
                              fit: BoxFit.cover,
                            ),
                            name: 'Burger by Bella',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Items',
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {}, 
                          child: const Text(
                            'View all',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(IndividualItem.routeName);
                          },
                          child: RecentItemCard(
                            image: Image.asset(
                              Helper.getAssetName('pizza3.jpg', 'real'),
                              fit: BoxFit.cover,
                            ),
                            name: 'Mulberry Pizza by Josh',
                          ),
                        ),
                        RecentItemCard(
                          image: Image.asset(
                            Helper.getAssetName('coffee.jpg', 'real'),
                            fit: BoxFit.cover,
                          ),
                          name: 'Barrita',
                        ),
                        RecentItemCard(
                          image: Image.asset(
                            Helper.getAssetName('pizza.jpg', 'real'),
                            fit: BoxFit.cover,
                          ),
                          name: 'Pizza Rush Hour',
                        ),
                        const SizedBox(
                          height: 85,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              home: true,
            )
          ),
        ],
      ),
    );
  }
}

class RecentItemCard extends StatelessWidget {
  const RecentItemCard({
    Key key,
    @required Image image,
    @required String name,
  }) : 
  _image = image,
  _name = name, 
  super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 80,
            height: 80,
            child: _image,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _name,
                  style: Helper.getTheme(context)
                  .headline4
                  .copyWith(
                    color: AppColor.primary,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'Cafe'
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        '.',
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Western Food',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName('star_filled.png', 'virtual'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '4.9',
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '(124) Ratings',
                    )
                  ],
                )
              ],
            ),
          )
        ),
      ],
    );
  }
}


class MostPopularCard extends StatelessWidget {
  const MostPopularCard({
    Key key,
    @required Image image,
    @required String name,
  }) : 
  _image = image,
  _name = name, 
  super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 300,
            height: 200,
            child: _image,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          _name,
          style: Helper.getTheme(context)
          .headline4
          .copyWith(
            color: AppColor.primary,
          ),
        ),
        Row(
          children: [
            const Text(
              'Cafe',
            ),
            const SizedBox(
              width: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text(
                '.',
                style: TextStyle(
                  color: AppColor.orange,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Wester Food',
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              Helper.getAssetName('star_filled.png', 'virtual')
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              '4.9',
              style: TextStyle(
                color: AppColor.orange,
              ),
            )
          ],
        ),
      ],
    );
  }
}


class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key key,
    @required Image image,
    @required String name,
  }) : 
  _image = image,
  _name = name,
   super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: _image,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _name,
                      style: Helper.getTheme(context).headline3
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName('star_filled.png', 'virtual'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '4.9',
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '{124 ratings}'
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Cafe'
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        '.',
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Western Food'
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key, 
    @required Image image,
    @required String name,
  }) : 
  _image = image,
  _name = name,  
  super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 100,
            height: 100,
            child: _image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          _name,
          style: Helper.getTheme(context)
          .headline6
          .copyWith(
            color: AppColor.primary,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}