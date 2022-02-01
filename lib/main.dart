import 'package:flutter/material.dart';
import 'package:food_delivery_app/home_screen/home_screen.dart';
import 'package:food_delivery_app/page/forgot/forgetpwpage.dart';
import 'package:food_delivery_app/page/forgot/intro_page.dart';
import 'package:food_delivery_app/page/landingpage.dart';
import 'package:food_delivery_app/page/loginpage.dart';
import 'package:food_delivery_app/page/forgot/newpwpage.dart';
import 'package:food_delivery_app/page/forgot/sendotpscreen.dart';
import 'package:food_delivery_app/page/signuppage.dart';
import 'package:food_delivery_app/page/spash_page.dart';
import 'package:food_delivery_app/page/widgets/menu/dessertpage.dart';
import 'package:food_delivery_app/home_screen/individualitem.dart';
import 'package:food_delivery_app/page/widgets/menu/menupage.dart';
import 'package:food_delivery_app/page/widgets/more/aboutpage.dart';
import 'package:food_delivery_app/page/widgets/more/changeaddresspage.dart';
import 'package:food_delivery_app/page/widgets/more/checkoutpage.dart';
import 'package:food_delivery_app/page/widgets/more/inboxpage.dart';
import 'package:food_delivery_app/page/widgets/more/morepage.dart';
import 'package:food_delivery_app/page/widgets/more/my_orderpage.dart';
import 'package:food_delivery_app/page/widgets/more/notificationspage.dart';
import 'package:food_delivery_app/page/widgets/offerspage.dart';
import 'package:food_delivery_app/page/widgets/more/paymentpage.dart';
import 'package:food_delivery_app/page/widgets/profilepage.dart';
import 'package:food_delivery_app/util/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Metropolis',
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(
              const StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: const TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: const SplashPage(),
      routes: {
        LandingPage.routeName: (context) => const LandingPage(),
        LoginPage.routeName: (context) => const LoginPage(),
        SignUpPage.routeName: (context) => const SignUpPage(),
        ForgetPwPage.routeName: (context) => const ForgetPwPage(),
        SendOTPScreen.routeName: (context) => const SendOTPScreen(),
        NewPwPage.routeName: (context) => const NewPwPage(),
        IntroPage.routeName: (context) =>  const IntroPage(),
        HomeScreen.routeName: (context) =>  const HomeScreen(),
        MenuPage.routeName: (context) =>  const MenuPage(),
        OffersPage.routeName: (context) =>  const OffersPage(),
        ProfilePage.routeName: (context) =>  const ProfilePage(),
        MorePage.routeName: (context) =>  const MorePage(),
        DessertPage.routeName: (context) =>  const DessertPage(),
        IndividualItem.routeName: (context) =>  const IndividualItem(),
        PaymentPage.routeName: (context) =>  const PaymentPage(),
        NotificationsPage.routeName: (context) =>  const NotificationsPage(),
        AboutPage.routeName: (context) =>  const AboutPage(),
        InboxPage.routeName: (context) =>  const InboxPage(),
        MyOrderPage.routeName: (context) =>  const MyOrderPage(),
        CheckoutPage.routeName: (context) =>  const CheckoutPage(),
        ChangeAddressPage.routeName: (context) =>  const ChangeAddressPage(),
      },
    );
  }
}