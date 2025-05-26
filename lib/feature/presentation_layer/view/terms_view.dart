import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/global_portrait.dart';
import 'package:puresoftinternproject/core/shared_widget/appbar_title_arrow.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilderWidget(
        portraitBuilder: (context) => buildLayout(),
        landscapeBuilder: (context) => buildLayout(),
      ),
    );
  }
}

Widget buildLayout() {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 40.h),
        AppbarTitleArrow(text: 'Terms & Conditions'),
        Divider(),
        SizedBox(height: 10.h),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'A Terms and Conditions agreement acts as a legal contractbetween you (the company) and the user.\nIt’s where you maintain your rights to exclude users from\n your app in the event that they abuse your\n website/app, set out the rules for using your service and note other important details and disclaimers.\nHaving a Terms and Conditions agreement is completely optional.\n No laws require you to  have one.\n Not even the super-strict and wide-reaching General Data Protection Regulation (GDPR).\n Your Terms and Conditions agreement will be uniquely yours.\n while some clauses are standard and commonly seen in pretty much  every Terms and Conditions agreement, it’s up to you to set the rules and guidelines that the user must agree to.\nTerms and Conditions agreements are also known as Terms of Service or Terms of Use agreements.\nThese terms are  interchangeable, practically speaking. More rarely, it may be called something like an End User Services Agreement (EUSA).',
            style: CustomAppText.font16RegularLightGrey,
          ),
        ),
      ],
    ),
  );
} 

//  
// 
// 
//  
// 