import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';
import 'package:jumia/features/feedFeature/ui/widgets/following_screen.dart';

import 'explore_screen.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  static const appColors = AppColors();


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration(microseconds: 500),
      length: 2,
      child: Scaffold(
        backgroundColor: appColors.primaryColor,
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(.1), // Adjust height of the TabBar
            child: TabBar(
              tabAlignment:TabAlignment.fill,
              indicatorColor: AppColors.appBarActive,
              labelColor: AppColors.appBarActive,
              indicatorWeight: 3.0, // Adjust indicator weight to make it more visible
              dividerColor: AppColors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                SizedBox(
                  width: 100.w,
                  child: Tab(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('FOLLOWING', style: TextStyle(fontSize: 15.sp)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100.w,
                  child: Tab(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('EXPLORE', style: TextStyle(fontSize: 15.sp)),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Following(),
            EXPLORE(),
          ],
        ),
      ),
    );
  }
}
