import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/widgets/more/aboutpage.dart';
import 'package:food_delivery_app/page/widgets/more/inboxpage.dart';
import 'package:food_delivery_app/page/widgets/more/my_orderpage.dart';
import 'package:food_delivery_app/page/widgets/more/notificationspage.dart';
import 'package:food_delivery_app/page/widgets/more/paymentpage.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/helper.dart';
import 'package:food_delivery_app/widgets/custom_nav_bar.dart';


class MorePage extends StatelessWidget {
  static const routeName = '/morepage';
  const MorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'More',
                          style: Helper.getTheme(context).headline5,
                        ),
                        Image.asset(
                          Helper.getAssetName('cart.png', 'virtual'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName('income.png', 'virtual'),
                      ),
                      name: 'Payment Details',
                      handler: () {
                        Navigator.of(context).pushNamed(PaymentPage.routeName);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName('shopping_bag.png', 'virtual'),
                      ),
                      name: 'My Orders',
                      handler: () {
                        Navigator.of(context).pushNamed(MyOrderPage.routeName);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName('noti.png', 'virtual'),
                      ),
                      name: 'Notifications',
                      isNoti: true,
                      handler: () {
                        Navigator.of(context).popAndPushNamed(NotificationsPage.routeName);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName('mail.png', 'virtual'),
                      ),
                      name: 'Inbox',
                      handler: () {
                        Navigator.of(context).popAndPushNamed(InboxPage.routeName);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName('info.png', 'virtual'),
                      ),
                      name: 'About Us',
                      handler: () {
                        Navigator.of(context).popAndPushNamed(AboutPage.routeName);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
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

class MoreCard extends StatelessWidget {
  const MoreCard({
    Key key,
    String name,
    Image image,
    bool isNoti = false,
    Function handler,
  }) : 
  _name = name,
  _image = image,
  _isNoti = isNoti,
  _handler = handler,
  super(key: key);

  final String _name;
  final Image _image;
  final bool _isNoti;
  final Function _handler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handler,
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: AppColor.placeholderBg,
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: AppColor.placeholder,
                    ),
                    child: _image,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    _name,
                    style: const TextStyle(
                      color: AppColor.primary,
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 30,
                width: 30,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: AppColor.placeholderBg,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColor.secondary,
                  size: 17,
                ),
              ),
            ),
            if (_isNoti)
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 20,
                width: 20,
                margin: const EdgeInsets.only(right: 50),
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text(
                    '15',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}