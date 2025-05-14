import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:puresoftinternproject/core/constant/titles_subtitle.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';

class PhoneInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.w,
      height: 70.h,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),

      child: IntlPhoneField(
        decoration: InputDecoration(
          labelText: TitlesSubtitle.mobileNumber,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: CustomAppColors.grey),
          ),
        ),
        initialCountryCode: 'KW',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
        onCountryChanged: (country) {
          print('Country changed to: ' + country.name);
        },
      ),
    );
  }
}
