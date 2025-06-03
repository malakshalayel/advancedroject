import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:advanced_project/features/home/data/models/specialization_responce.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://cdn.pixabay.com/photo/2024/08/18/04/44/ai-generated-8976951_1280.png",

            // "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: ColorManager.lightGrey,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder:
                (context, imageProvider) => Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: TextStylesApp.InterSemibold18,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: TextStylesApp.font12grey400weight,
                ),
                SizedBox(height: 5.h),
                Text(
                  doctorsModel?.email ?? 'Email',
                  style: TextStylesApp.font12grey400weight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
