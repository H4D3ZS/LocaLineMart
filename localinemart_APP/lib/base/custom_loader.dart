import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:LocaLineMart/components/colors.dart';
import 'package:LocaLineMart/uitls/app_dimensions.dart';

class CustomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: AppColors.mainColor, borderRadius: BorderRadius.circular(50)),
      alignment: Alignment.center,
      child: CircularProgressIndicator(color: Colors.white),
    ));
  }
}
