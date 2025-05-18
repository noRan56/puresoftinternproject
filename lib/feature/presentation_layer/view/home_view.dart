import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_btn.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_field.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view_model/home_view_model.dart';
import 'package:puresoftinternproject/feature/presentation_layer/widget.dart/banner_sale.dart';
import 'package:puresoftinternproject/feature/presentation_layer/widget.dart/categories.dart';
import 'package:puresoftinternproject/feature/presentation_layer/widget.dart/seller_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final sellers = HomeViewModel().sellers;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50.h),
            BannerSale(),
            SizedBox(height: 10.h),
            CategoryIcons(),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.builder(
                itemCount: sellers.length,
                itemBuilder:
                    (context, index) => SellerCard(seller: sellers[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
