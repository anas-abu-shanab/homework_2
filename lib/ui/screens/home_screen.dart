import 'package:flutter/material.dart';
import 'package:homework_2/data/dummy_data.dart';
import 'package:homework_2/ui/wigets/author_widget.dart';
import 'package:homework_2/ui/wigets/product_card.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B655A),
      appBar: AppBar(
        backgroundColor: Color(0xff0B655A),
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: showSheet,
          icon: Icon(
            Icons.menu,
            color: Colors.white.withOpacity(0.8),
            size: 35.sp,
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.h,
              width: double.infinity,
            ),
            Text(
              "Browse",
              style: TextStyle(
                  fontSize: 40.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Find products thats sult to your interest",
              style: TextStyle(fontSize: 18.sp, color: Colors.white),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              alignment: Alignment.center,
              height: 56.h,
              margin: EdgeInsets.only(left: 34.w, right: 34.w, bottom: 28.h),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 15.w, end: 10.w),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 14.sp, color: Colors.white),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "Type keyword"),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: tags.map((e) {
                return Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35.r,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          e.image_url,
                          height: 30.h,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "${e.name}",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Future showSheet() => showSlidingBottomSheet(context,
      builder: (context) => SlidingSheetDialog(
            snapSpec: SnapSpec(
              snap: true,
              snappings: [0.3,0.6,0.9],
            ),
            cornerRadius: 20.r,
            builder: buildSheet,
            headerBuilder: header,
          ));

  Widget buildSheet(context, state) => Material(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "Handpicked",
                  style: TextStyle(
                      fontSize: 26.sp,
                      color: Colors.black45,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  height: 5.h,
                  width: 30.w,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                children: products.map((e){
                  return ProductCard(e);
                }).toList(),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Top Authors",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: topUsers.map((e){
                  return Expanded(child: AuthorWidget(e));
                }).toList(),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      );

  Widget header(context, state) => Material(
        child: Container(
          height: 25.h,
          width: 400.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5.r),
              ),
              height: 5.h,
              width: 40.h,
            ),
          ),
        ),
      );
}


