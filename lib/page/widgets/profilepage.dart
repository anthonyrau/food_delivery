import 'package:flutter/material.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/helper.dart';
import 'package:food_delivery_app/widgets/custom_nav_bar.dart';


class ProfilePage extends StatelessWidget {
  static const routeName = '/profilepage';
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SizedBox(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profile',
                            style: Helper.getTheme(context).headline5,
                          ),
                          Image.asset(
                            Helper.getAssetName('cart.png', 'virtual'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ClipOval(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                Helper.getAssetName('user.jpg', 'real'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 20,
                                width: 80,
                                color: Colors.black.withOpacity(0.3),
                                child: Image.asset(
                                  Helper.getAssetName('camara.png', 'virtual'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Helper.getAssetName('edit_filled.png', 'virtual'),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: AppColor.orange,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hi there Emilia!',
                        style: Helper.getTheme(context)
                        .headline4
                        .copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                      const Text(
                        'Sign Out',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const CustomFormInput(
                        label: 'Name',
                        value: 'Emilia Clarke',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormInput(
                        label: 'Email',
                        value: 'emiliaclarke@email.com',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormInput(
                        label: 'Mobile No',
                        value: 'emiliaclarke@email.com',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormInput(
                        label: 'Address',
                        value: 'No 23, 6th lane, Colombo 03',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormInput(
                        label: 'Password',
                        value: 'Emilia Clarke',
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormInput(
                        label: 'Confirm Password',
                        value: 'Emilia Clarke',
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {}, 
                          child: const Text(
                            'Save'
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              profile: true,
            ),
          )
        ],
      ),
      
    );
  }
}

class CustomFormInput extends StatelessWidget {
  const CustomFormInput({
    Key key,
    String label,
    String value,
    bool isPassword = false,
  }) : 
  _label = label,
  _value = value,
  _isPassword = isPassword,
  super(key: key);

  final String _label;
  final String _value;
  final bool _isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 40),
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColor.placeholderBg,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: _label,
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
        ),
        obscureText: _isPassword,
        initialValue: _value,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}