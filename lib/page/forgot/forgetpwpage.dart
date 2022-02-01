import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/forgot/sendotpscreen.dart';
import 'package:food_delivery_app/util/helper.dart';
import 'package:food_delivery_app/widgets/custom_textinput.dart';

class ForgetPwPage extends StatelessWidget {
  static const routeName = '/forgetpwpage';
  const ForgetPwPage({Key key}) : super(key: key);

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
                  'Reset Password',
                  style: Helper.getTheme(context).headline6,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Please enter your email to recieve a link to create a new password via email',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextInput(hintText: 'Email'),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                      .pushReplacementNamed(SendOTPScreen.routeName);
                    }, 
                    child: const Text(
                      'Send'
                    )
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