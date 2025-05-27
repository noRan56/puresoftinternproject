import 'package:flutter/material.dart';
import 'package:puresoftinternproject/core/routing/routes.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/check._out_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/contact_us_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/failed_check_out_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/favorite_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/forget_password_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/home_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/login_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/my_order_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/nav_bar_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/order_tracking_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/otp_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/profile.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/seller_details.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/sign_in_login_in_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/sign_up_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/splash_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/success_check_out_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/terms_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any View like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.signUpView:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.profileView:
        return MaterialPageRoute(builder: (_) => ProfileView());
      case Routes.signInLoginInView:
        return MaterialPageRoute(builder: (_) => const SignInLoginInView());
      case Routes.navBarView:
        return MaterialPageRoute(builder: (_) => NavBarView());
      case Routes.checkoutView:
        return MaterialPageRoute(builder: (_) => CheckOutView());
      case Routes.orderTrackingView:
        return MaterialPageRoute(builder: (_) => OrderTrackingView());

      case Routes.checkoutSuccessView:
        return MaterialPageRoute(builder: (_) => const SuccessCheckOutView());
      case Routes.checkoutFailedView:
        return MaterialPageRoute(builder: (_) => const FailedCheckOutView());
      case Routes.forgetPasswordView:
        return MaterialPageRoute(builder: (_) => ForgetPasswordView());
      case Routes.otpView:
        return MaterialPageRoute(builder: (_) => OtpView());
      case Routes.termsView:
        return MaterialPageRoute(builder: (_) => TermsAndConditionsView());
      case Routes.contactUsView:
        return MaterialPageRoute(builder: (_) => ContactUsView());
      case Routes.favoriteView:
        return MaterialPageRoute(builder: (_) => FavoriteView());
      case Routes.myOrderView:
        return MaterialPageRoute(builder: (_) => MyOrderView());
      case Routes.sellerDetails:
        return MaterialPageRoute(builder: (_) => SellerDetails());

      default:
        return null;
    }
  }
}
