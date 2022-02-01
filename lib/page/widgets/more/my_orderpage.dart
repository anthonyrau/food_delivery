import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/widgets/more/checkoutpage.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/helper.dart';
import 'package:food_delivery_app/widgets/custom_nav_bar.dart';

class MyOrderPage extends StatelessWidget {
  static const routeName = '/my_orderpage';
  const MyOrderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      }, 
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'My Order',
                        style: Helper.getTheme(context).headline5,
                      )
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    height: 80,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              Helper.getAssetName('hamburger.jpg', 'real'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'King Burgers',
                              style: Helper.getTheme(context).headline3,
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
                                const Text(
                                  ' (124 ratings)',
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Burger',
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                      color: AppColor.orange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Western Food'
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 15,
                                  child: Image.asset(
                                    Helper.getAssetName('loc.png', 'virtual'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'No 03, 4th Lane, Newyork'
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  color: AppColor.placeholderBg,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: const [
                        BurgerCard(
                          price: '16',
                          name: 'Beet Burger',
                        ),
                        BurgerCard(
                          price: '14',
                          name: 'Classic Burger',
                        ),
                        BurgerCard(
                          price: '17',
                          name: 'Cheese Chicken Burger',
                        ),
                        BurgerCard(
                          price: '15',
                          name: 'Chicken Legs Basket',
                        ),
                        BurgerCard(
                          price: '6',
                          name: 'French Fries Large',
                          isLast: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor.placeholder.withOpacity(0.25),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Delivery Instructions',
                                style: Helper.getTheme(context).headline3,
                              ),
                            ),
                            TextButton(
                              onPressed: () {}, 
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.add,
                                    color: AppColor.orange,
                                  ),
                                  Text(
                                    'Add Notes',
                                    style: TextStyle(
                                      color: AppColor.orange,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Sub Total',
                              style: Helper.getTheme(context).headline3,
                            ),
                          ),
                          Text(
                            '\$68',
                            style: Helper.getTheme(context)
                            .headline3
                            .copyWith(
                              color: AppColor.orange,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Delivery Cost',
                              style: Helper.getTheme(context).headline3,
                            ),
                          ),
                          Text(
                            '\$2',
                            style: Helper.getTheme(context)
                            .headline3
                            .copyWith(
                              color: AppColor.orange,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: AppColor.placeholder.withOpacity(0.25),
                        thickness: 1.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Total',
                              style: Helper.getTheme(context).headline3,
                            ),
                          ),
                          Text(
                            '\$70',
                            style: Helper.getTheme(context)
                            .headline3
                            .copyWith(
                              color: AppColor.orange,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).popAndPushNamed(CheckoutPage.routeName);
                          }, 
                          child: const Text(
                            'Checkout',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ], 
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              more: true,
            ),
          ),
        ],
      ),
    );
  }
}

class BurgerCard extends StatelessWidget {
  const BurgerCard({
    Key key,
    String name,
    String price,
    bool isLast = false,
  }) :
  _name = name,
  _price = price,
  _isLast = isLast, 
  super(key: key);

  final String _name;
  final String _price;
  final bool _isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: _isLast
          ? BorderSide.none
          : BorderSide(
            color: AppColor.placeholder.withOpacity(0.25),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '$_name x1',
              style: const TextStyle(
                color: AppColor.primary,
                fontSize: 16,
              ),
            ),
          ),
          Text(
            '\$$_price',
            style: const TextStyle(
              color: AppColor.primary,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}