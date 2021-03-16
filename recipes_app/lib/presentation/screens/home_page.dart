import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_app/constants/constants.dart';
import 'package:recipes_app/data/data.dart';
import 'package:recipes_app/presentation/presentation.dart';
import 'package:recipes_app/utilities/utilities.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(24),
              bottom: ScreenUtil().setHeight(16),
              // left: ScreenUtil().setWidth(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(250),
                      color: AppColors.piege,
                    ),
                    Column(
                      children: [
                        _searchBar(context),
                        // TODO Extract them into method
                        _popularRecipesThisWeekTitle(),
                        _popularItemsThisWeekList()
                      ],
                    ),
                  ],
                ),
                _currentDayDisplay(),
                _todayHeading(),
                Padding(
                  padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(10),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(12),
                        ),
                        child: Container(
                          height: ScreenUtil().setHeight(300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: AssetImage(AppImagePaths.breakfast),
                                fit: BoxFit.cover),
                          ),
                          // child: BackdropFilter(
                          //   filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                          //   child: Container(
                          //     color: AppColors.transparentWhite,
                          //   ),
                          // ),
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                        child: Container(
                          color: AppColors.transparentWhite,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: ScreenUtil().setHeight(150),
                          left: ScreenUtil().setWidth(60),
                          right: ScreenUtil().setWidth(160),
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              AppTextDisplay(
                                translation: AppStrings.bestOfHeading,
                                textStyle: AppTextStyles.whiteHeading(),
                              ),
                              AppTextDisplay(
                                translation: AppStrings.theDayHeading,
                                textStyle: AppTextStyles.whiteHeading(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(10),
                                  right: ScreenUtil().setWidth(50),
                                ),
                                child: Container(
                                  height: ScreenUtil().setHeight(1),
                                  width: ScreenUtil().setWidth(50),
                                  color: AppColors.orange,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _todayHeading() {
    return Padding(
      padding: EdgeInsets.only(
        left: ScreenUtil().setWidth(24),
      ),
      child: Container(
        child: AppTextDisplay(
          translation: AppStrings.todayHeading,
          textStyle: AppTextStyles.blackMainHeading(),
        ),
      ),
    );
  }

  Padding _currentDayDisplay() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(15),
        left: ScreenUtil().setWidth(24),
      ),
      child: Container(
        child: AppTextDisplay(
          text: 'September 7',
          textStyle: AppTextStyles.dayDate(),
        ),
      ),
    );
  }

  Padding _popularItemsThisWeekList() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(30),
        left: ScreenUtil().setWidth(16),
      ),
      child: Container(
        height: ScreenUtil().setHeight(125),
        child: ListView.builder(
          itemCount: _popularMealItems.length,
          itemBuilder: (context, index) {
            return _popularMealItems[index];
          },
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
        ),
      ),
    );
  }

  List<Widget> get _popularMealItems {
    return [
      _popularMealItem(),
      _popularMealItem(),
      _popularMealItem(),
      _popularMealItem(),
    ];
  }

  Widget _popularMealItem() {
    return Padding(
      padding: EdgeInsets.only(
        right: ScreenUtil().setWidth(10),
      ),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: ScreenUtil().setHeight(125),
          width: ScreenUtil().setWidth(250),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(12),
                  right: ScreenUtil().setWidth(12),
                ),
                child: Container(
                  height: ScreenUtil().setHeight(150),
                  width: ScreenUtil().setWidth(100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: AssetImage(AppImagePaths.balanced),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTextDisplay(
                    translation: AppStrings.grilledChicken,
                    textStyle: AppTextStyles.mealName(),
                  ),
                  AppTextDisplay(
                    translation: AppStrings.withFruitSalad,
                    textStyle: AppTextStyles.mealName(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(10),
                      right: ScreenUtil().setWidth(28),
                    ),
                    child: Container(
                      height: ScreenUtil().setHeight(1),
                      width: ScreenUtil().setWidth(70),
                      color: AppColors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(10),
                      right: ScreenUtil().setWidth(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: ScreenUtil().setHeight(28),
                          width: ScreenUtil().setWidth(28),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              image: AssetImage(AppImagePaths.chris),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: ScreenUtil().setWidth(8)),
                          child: AppTextDisplay(
                            text: "James Oliver",
                            textStyle: AppTextStyles.chiefName(),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _popularRecipesThisWeekTitle() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(15),
        left: ScreenUtil().setWidth(16),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: ScreenUtil().setWidth(8),
            ),
            child: Container(
              width: ScreenUtil().setWidth(2),
              height: ScreenUtil().setHeight(26),
              color: AppColors.orange,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO Add POPULAR RECIPES
              AppTextDisplay(
                translation: AppStrings.popularRecipesHeading,
                textStyle: AppTextStyles.blackHeading(),
              ),
              // TODO Add THIS WEEK
              AppTextDisplay(
                translation: AppStrings.thisWeekHeading,
                textStyle: AppTextStyles.blackHeading(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _searchBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        ScreenUtil().setWidth(15),
        ScreenUtil().setHeight(35),
        ScreenUtil().setWidth(15),
        ScreenUtil().setHeight(10),
      ),
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(25.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              AppIcons.search,
              size: 30,
              color: AppColors.grey,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: ScreenUtil().setHeight(15),
              horizontal: ScreenUtil().setWidth(15),
            ),
            hintText: AppLocalizations.of(context).translate(AppStrings.hint),
            hintStyle: AppTextStyles.hint(),
          ),
        ),
      ),
    );
  }
}
