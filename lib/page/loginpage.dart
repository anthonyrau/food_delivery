import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/forgot/forgetpwpage.dart';
import 'package:food_delivery_app/page/signuppage.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/helper.dart';
import 'package:food_delivery_app/widgets/custom_textinput.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/loginpage';
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  'Login',
                  style: Helper.getTheme(context).headline6,
                ),
                const Spacer(),
                const Text(
                  'Add you detaills to login'
                ),
                const Spacer(),
                const CustomTextInput(
                  hintText: 'Your email',
                ),
                const Spacer(),
                const CustomTextInput(
                  hintText: 'Password',
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    child: const Text(
                      'Login',
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                    .pushReplacementNamed(ForgetPwPage.routeName);
                  },
                  child: const Text(
                    'Forgot your password?'
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  'or Login With'
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF367FC0),
                      ),
                    ),
                    onPressed: () {}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName('fb.png', 'virtual'),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          'Login with Facebook'
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFFDD4839),
                      ),
                    ),
                    onPressed: () {}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName('google.png', 'virtual'),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          'Login with Google'
                        ),
                      ],
                    )
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                    .pushReplacementNamed(SignUpPage.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Don t have an Account?'
                      ),
                      Text(
                        'Sign Up',
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

