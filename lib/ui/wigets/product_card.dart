import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homework_2/models/product_model.dart';
import 'package:homework_2/ui/screens/product_details_screen.dart';

class ProductCard extends StatelessWidget {

  ProductModel productModel;


  ProductCard(this.productModel);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(
            builder: (context)=>ProductDetailsScreen(productModel)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20.h),
        child: Row(
          children: [
            Container(
              height: 100.h,
              width: 120.w,
              margin: EdgeInsets.only(right: 10.w),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Image.network(productModel.image_url,fit: BoxFit.cover,),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(productModel.title,
                    style: TextStyle(fontSize: 16,color: Colors.black),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(productModel.description,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14,color: Colors.grey),
                      maxLines: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}