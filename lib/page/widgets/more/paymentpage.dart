import 'package:flutter/material.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/helper.dart';
import 'package:food_delivery_app/widgets/custom_nav_bar.dart';
import 'package:food_delivery_app/widgets/custom_textinput.dart';


class PaymentPage extends StatelessWidget {
  static const routeName = '/paymentpage';
  const PaymentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        }, 
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        )
                      ),
                      Expanded(
                        child: Text(
                          'Payment Details',
                          style: Helper.getTheme(context).headline5,
                        ),
                      ),
                      Image.asset(
                        Helper.getAssetName('cart.png', 'virtual'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        'Customize your payment',
                        style: Helper.getTheme(context).headline3,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    color: AppColor.placeholder,
                    thickness: 1.5,
                    height: 30,
                  ),
                ),
                Container(
                  height: 170,
                  width: Helper.getScreenWidth(context),
                  decoration: BoxDecoration(
                    color: AppColor.placeholderBg,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.placeholder.withOpacity(0.5),
                        offset: const Offset(0, 20),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Cash/Card on delivery',
                              style: TextStyle(
                                color: AppColor.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.check,
                              color: AppColor.orange,
                            ),
                          ],
                        ),
                        const Divider(
                          color: AppColor.placeholder,
                          thickness: 1,
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              child: Image.asset(
                                Helper.getAssetName('visa.png', 'real'),
                              ),
                            ),
                            const Text(
                              '**** ****',
                            ),
                            const Text(
                              '2187,'
                            ),
                            OutlinedButton(
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                  const BorderSide(
                                    color: AppColor.orange
                                  ),
                                ),
                                shape: MaterialStateProperty.all(
                                  const StadiumBorder(),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Delate Card',
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: AppColor.placeholder,
                          thickness: 1,
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Other Methods',
                              style: TextStyle(
                                color: AppColor.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        isScrollControlled: true,
                        isDismissible: false,
                        context: context, 
                        builder: (context) {
                          return SizedBox(
                            height: Helper.getScreenHeight(context) * 0.7,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      }, 
                                      icon: const Icon(
                                        Icons.clear,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Add Credit/Debit Card',
                                        style: Helper.getTheme(context).headline3,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: AppColor.placeholder.withOpacity(0.5),
                                    thickness: 1.5,
                                    height: 40,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: CustomTextInput(
                                    hintText: 'Card Number',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Expiry'
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 100,
                                        child: CustomTextInput(
                                          hintText: 'MM',
                                          padding: EdgeInsets.only(left: 35),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 100,
                                        child: CustomTextInput(
                                          hintText: 'YY',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: CustomTextInput(
                                    hintText: 'Security Code',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: CustomTextInput(
                                    hintText: 'First Name',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: CustomTextInput(
                                    hintText: 'Last Name',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'You can remove this card'
                                      ),
                                      Switch(
                                        value: false, 
                                        onChanged: (_) {},
                                        thumbColor: MaterialStateProperty.all(
                                          AppColor.secondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      }, 
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.add,
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            'Add Card'
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.add,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Add Another Credit/Debit Card',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              more: true
            ),
          ),
        ],
      ),
    );
  }
}