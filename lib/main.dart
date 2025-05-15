import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/shared_widget/phone_field_widget.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/contact_us_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/failed_check_out_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/home_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/login_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/my_order_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/on_boardingView1.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/order_tracking_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/sign_in_login_in_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/success_check_out_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(450, 932),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          title: 'Fruit Market',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          ),
          home: SignInLoginInView(),
        );
      },
    );
  }
}
