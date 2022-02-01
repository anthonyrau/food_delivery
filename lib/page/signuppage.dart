import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/loginpage.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/helper.dart';
import 'package:food_delivery_app/widgets/custom_textinput.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = '/signuppage';
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: Helper.getTheme(context).headline6,
                ),
                const Spacer(),
                const Text(
                  'Add your details to sign up',
                ),
                const Spacer(),
                const CustomTextInput(hintText: 'Name'),
                const Spacer(),
                const CustomTextInput(hintText: 'Email'),
                const Spacer(),
                const CustomTextInput(hintText: 'Mobile No'),
                const Spacer(),
                const CustomTextInput(hintText: 'Address'),
                const Spacer(),
                const CustomTextInput(hintText: 'Password'),
                const Spacer(),
                const CustomTextInput(hintText: 'Confirm Password'),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    child: const Text(
                      'Sign Up'
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                    .pushReplacementNamed(LoginPage.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Already have an Account?',
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}