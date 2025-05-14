import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/shared_widget/text_widget_font_14_grey.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';

class MyOrderViewModel extends StatelessWidget {
  const MyOrderViewModel({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> leading = [
      'assets/images/delvering.png',
      'assets/images/finishedIcon.png',
      'assets/images/Cancelled.png',
      'assets/images/Delivered.png',
      'assets/images/workingIcon.png',
      'assets/images/new.png',
    ];
    List<String> trailing = [
      'assets/images/delveringArrow.png',
      'assets/images/finishedArrow.png',
      'assets/images/canceledArrow.png',
      'assets/images/DeliveredArrow.png',
      'assets/images/workingArrow.png',
      'assets/images/newArrow.png',
    ];
    return ListView.builder(
      itemCount: leading.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(bottom: 20.h),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          width: 401.w,

          child: Card(
            color: CustomAppColors.white,
            elevation: 3,
            child: ListTile(
              leading: Image.asset(leading[index]),
              trailing: Image.asset(trailing[index]),
              title: Text('Order 1'),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      TextWidgetFont14Grey(text: '8 Sep'),
                      SizedBox(width: 10.w),
                      Text('3 item'),
                    ],
                  ),
                  Row(
                    children: [
                      TextWidgetFont14Grey(text: 'Status'),
                      SizedBox(width: 10.w),
                      Text('Order 1'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
