import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/shared_widget/text_widget_font_14_grey.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/feature/data_layer/model/my_order_model.dart';

class MyOrderViewModel extends StatelessWidget {
  const MyOrderViewModel({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MyOrderModel();

    return ListView.builder(
      itemCount: data.leading.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(bottom: 20.h),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          width: 401.w,

          child: Card(
            color: CustomAppColors.white,
            elevation: 3,
            child: ListTile(
              leading: Image.asset(data.leading[index]),
              trailing: Image.asset(data.trailing[index]),
              title: Text(data.orderTitle[index]),
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
