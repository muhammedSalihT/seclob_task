import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seclob/widgets/refracted_networkimage_widget.dart';
import 'package:seclob/widgets/refracted_svg_widget.dart';
import 'package:seclob/widgets/refracted_text_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 250.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffeeedfb),
                Color(0xffeeedfb),
                Color(0xffeee8fe),
              ], begin: Alignment.topRight, end: Alignment.bottomCenter),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRoundIconButton(),
                    RefractedTextWidget(
                      text: 'Rayan_Photographer_',
                      isSubText: true,
                      textSize: 13,
                      textColor: Color(0xff1E3167),
                    ),
                    CustomRoundIconButton(
                        iconPath: 'assets/icons/menu_iconsvg.svg'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 130.h),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40.h),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(80.r),
                      topEnd: Radius.circular(80.r),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        ClipOval(
                          child: RefractedNetworkImageWidget(
                              height: 80.h,
                              width: 80.h,
                              image:
                                  'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bWFufGVufDB8fDB8fHww'),
                        ),
                        RefractedSvgWidgte(
                            svgHeight: 25.h,
                            svgPath: 'assets/icons/star_icon.svg'),
                        const RefractedSvgWidgte(
                            color: Colors.white,
                            svgPath: 'assets/icons/star_inside_icon.svg')
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: const RefractedTextWidget(text: 'Rayan Moon'),
                    ),
                    const RefractedTextWidget(
                      text: 'Photographer',
                      isSubText: true,
                      textSize: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: const RefractedTextWidget(
                        align: TextAlign.center,
                        text:
                            '''"📸 Capturing life's moments, one click at a time | Visual storyteller with a passion for authenticity | Exploring the world through my lens | Turning emotions into pixels | #PhotographyAdventures 🌍✨"''',
                        maxLines: 100,
                        isSubText: true,
                        textSize: 12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            2,
                            (index) => Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.w, vertical: 10.h),
                                  decoration: BoxDecoration(
                                      color: index == 0
                                          ? const Color(0xff8BA16E)
                                          : const Color(0xff184AC0),
                                      borderRadius:
                                          BorderRadius.circular(20.r)),
                                  child: RefractedTextWidget(
                                    text: index == 0 ? 'Verified' : 'Wallet',
                                    textColor: Colors.white,
                                    isSubText: true,
                                  ),
                                )),
                      ),
                    ),
                    ColoredBox(
                      color: const Color(0xfff2f5f4),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              children: [
                                Container(
                                  height: 80.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.white.withOpacity(.05),
                                          const Color(0xffcad9e0)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: List.generate(
                                        3,
                                        (index) => SizedBox(
                                              width: 60.w,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  RefractedTextWidget(
                                                    textSize: 18,
                                                    text: index == 0
                                                        ? '50'
                                                        : index == 1
                                                            ? '564'
                                                            : '564',
                                                  ),
                                                  RefractedTextWidget(
                                                    textSize: 12,
                                                    text: index == 0
                                                        ? 'Post'
                                                        : index == 1
                                                            ? 'Followers'
                                                            : 'Following',
                                                    isSubText: true,
                                                  )
                                                ],
                                              ),
                                            )),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      2,
                                      (index) => Container(
                                        width: 150.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15.r),
                                            color: const Color(0xffdce6ff)),
                                        child: Center(
                                          child: RefractedTextWidget(
                                            text: index == 0
                                                ? 'Edit profile'
                                                : 'Contact',
                                            isSubText: true,
                                            textWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 30.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey.withOpacity(.3))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                  3,
                                  (index) => index == 1
                                      ? const VerticalDivider(
                                          endIndent: 5,
                                          indent: 5,
                                          width: 1,
                                          color: Colors.grey,
                                        )
                                      : RefractedTextWidget(
                                          text:
                                              index == 0 ? 'Photos' : 'Videos',
                                          isSubText: true,
                                          textSize: 12,
                                        )),
                            ),
                          ),
                          GridView.builder(
                            padding: EdgeInsets.fromLTRB(5.w, 10.h, 5.w, 20.h),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 5.w,
                                    crossAxisCount: 3,
                                    childAspectRatio: 1 / 1.5,
                                    mainAxisSpacing: 10.h),
                            itemBuilder: (context, index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    const RefractedNetworkImageWidget(
                                      image:
                                          'https://plus.unsplash.com/premium_photo-1677553953986-a78e31a192f8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8fHww',
                                      height: 400,
                                      width: double.infinity,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: List.generate(
                                            2,
                                            (index) => Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.w),
                                                      child: RefractedSvgWidgte(
                                                          svgHeight: 20.h,
                                                          svgPath: index == 0
                                                              ? 'assets/icons/fav_icon.svg'
                                                              : 'assets/icons/comment_icon.svg'),
                                                    ),
                                                    RefractedTextWidget(
                                                      text: index == 0
                                                          ? '1.5k'
                                                          : '200',
                                                      isSubText: true,
                                                      textSize: 13,
                                                      textColor: Colors.white,
                                                    )
                                                  ],
                                                )),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            itemCount: 40,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class CustomRoundIconButton extends StatelessWidget {
  const CustomRoundIconButton({
    super.key,
    this.iconPath,
  });

  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40.h,
        width: 40.h,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color(0xffe1e7f1),
            Color(0xffc1cae3),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: RefractedSvgWidgte(
          svgPath: iconPath ?? 'assets/icons/share_icon.svg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
