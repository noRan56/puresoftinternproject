import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/global_portrait.dart';
import 'package:puresoftinternproject/core/routing/routes.dart';

import 'package:puresoftinternproject/core/styles/custom_app_text.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view_model/home_view_model.dart';
import 'package:puresoftinternproject/feature/presentation_layer/widget.dart/banner_sale.dart';
import 'package:puresoftinternproject/feature/presentation_layer/widget.dart/categories.dart';
import 'package:puresoftinternproject/feature/presentation_layer/widget.dart/seller_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilderWidget(
      portraitBuilder: (context) => buildLayout(context),
      landscapeBuilder: (context) => buildLayout(context),
    );
  }

  Widget buildLayout(context) {
    final sellers = HomeViewModel().sellers;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Fruit Market', style: CustomAppText.font24BoldGreen),
                Spacer(),

                Image.asset(
                  'assets/images/search.png',
                  width: 24.w,
                  height: 24.h,
                ),
                SizedBox(width: 10.w),
                Image.asset(
                  'assets/images/filter.png',
                  width: 24.w,
                  height: 24.h,
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(height: 10.h),
          BannerSale(),

          SizedBox(height: 10.h),
          CategoryIcons(),
          SizedBox(height: 10.h),
          ListView.builder(
            shrinkWrap: true,
            itemCount: sellers.length,
            itemBuilder:
                (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      Routes.sellerDetails,
                    );
                  },
                  child: SellerCard(seller: sellers[index]),
                ),
          ),
        ],
      ),
    );
  }
}
