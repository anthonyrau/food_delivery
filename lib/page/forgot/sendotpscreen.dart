import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/forgot/newpwpage.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/helper.dart';

class SendOTPScreen extends StatelessWidget {
  static const routeName = '/sendoptscreen';
  const SendOTPScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'We have sent you an OTP to your Mobile',
                style: Helper.getTheme(context).headline6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Please check your mobile number 071*****12 continue to reset your password',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OTPInput(),
                  OTPInput(),
                  OTPInput(),
                  OTPInput(),
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
                    Navigator.of(context).pushReplacementNamed(NewPwPage.routeName);
                  }, 
                  child: const Text(
                    'Next'
                  )
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Didn t Recieve?'
                  ),
                  Text(
                    'Click Here',
                    style: TextStyle(
                      color: AppColor.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}

class OTPInput extends StatelessWidget {
  const OTPInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      child: Stack(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 18, left: 20),
            child: Text(
              '*',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}