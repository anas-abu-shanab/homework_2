
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homework_2/models/user_model.dart';

class AuthorWidget extends StatelessWidget {
  UserModel user;

  AuthorWidget(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80.w,
      margin: EdgeInsets.only(top: 5.h,),
      padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40.r,
            backgroundImage: NetworkImage(user.image_url),
          ),
          SizedBox(height: 5.h,),
          Text(
            user.name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            style: TextStyle(
                color: Colors.black, fontSize: 14,),
          ),
        ],
      ),
    );
  }
}