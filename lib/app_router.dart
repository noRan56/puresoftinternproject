import 'package:flutter/material.dart';
import 'package:puresoftinternproject/core/routing/routes.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/failed_check_out_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/home_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/login_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/sign_up_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/success_check_out_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any View like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.signUpView:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => HomeView());
      // case Routes.profileView:
      //   return MaterialPageRoute(builder: (_) =>  ProfileView());
      // case Routes.cartView:
      //   return MaterialPageRoute(builder: (_) => const CartView());
      // case Routes.notificationView:
      //   return MaterialPageRoute(builder: (_) => const NotificationView());
      // case Routes.checkoutView:
      //   return MaterialPageRoute(builder: (_) => const CheckoutView());

      case Routes.checkoutSuccessView:
        return MaterialPageRoute(builder: (_) => const SuccessCheckOutView());
      case Routes.checkoutFailedView:
        return MaterialPageRoute(builder: (_) => const FailedCheckOutView());
      // case Routes.authenticationView:
      //   return MaterialPageRoute(builder: (_) => const AuthenticationView());
      // case Routes.addProduct:
      //   return MaterialPageRoute(builder: (_) => const AddProductView());

      // case Routes.categoryView:
      //   return MaterialPageRoute(builder: (_) => const CategoryView());
      // case Routes.wishListView:
      //   return MaterialPageRoute(builder: (_) => const WishListView());

      // case Routes.detailsProductView:
      //   var product;
      //   return MaterialPageRoute(
      //     builder: (_) => ProductDetailsView(product: product),
      //   );
      default:
        return null;
    }
  }
}
