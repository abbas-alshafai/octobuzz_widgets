// import '../themes/theme_factory.dart';
// import 'package:flutter/material.dart';
// // import 'package:intro_slider/intro_slider.dart';
// // import 'package:intro_slider/slide_object.dart';
// import 'x_onboarding_content.dart';
//
// class XOnBoarding extends StatelessWidget {
//
//   final List<XOnBoardingContent> pages;
//
//   final Widget? skipWidget;
//   final VoidCallback? onSkipPressed;
//   final Widget? topLeftChild;
//   final VoidCallback? onFinished;
//   final Widget? nextWidget;
//   final Widget doneWidget;
//
//   static List<Color> _colors = [
//     ThemeFactory.instance.getTheme().themeData.accentColor,
//     ThemeFactory.instance.getTheme().themeData.primaryColor,
//     Color(hexColor("FF92CAE2")),
//     Colors.pink,
//   ];
//
//
//   // TODO - confirm colors
//   static List<Color> _secColors = [
//     Color(hexColor("FFFFAD07")), // FFD400
//     Color(hexColor("FFB37FCF")),
//     Color(hexColor("FF0AA5E7")),
//     Color(hexColor("FFB1217C")),
//   ];
//
//
//   const XOnBoarding({
//     Key? key,
//     required this.pages,
//     this.skipWidget,
//     this.topLeftChild,
//     this.onFinished,
//     this.nextWidget,
//     required this.doneWidget,
//     this.onSkipPressed
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return IntroSlider(
//       // List slides
//
//       slides: pages.asMap().entries.map((e) {
//         return Slide(
//           centerWidget: e.value,
//           colorBegin: _getSecBackgroundColor(e.key),
//           colorEnd: _getDefaultBackgroundColor(e.key)
//         );
//       }).toList(),
//
//
//       // Skip button
//       renderSkipBtn: skipWidget,
//       highlightColorSkipBtn: ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//
//       renderNextBtn: nextWidget,
//
//       renderDoneBtn: doneWidget,
//       onSkipPress: onSkipPressed,
//       onDonePress: onFinished,
//       // colorDoneBtn: Colors.red,
//       highlightColorDoneBtn: ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//
//       // Dot indicator
//       sizeDot: 13.0,
//       colorActiveDot: ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//       colorDot: Colors.grey[200],
//       // typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
//
//       // Tabs
//       // listCustomTabs: this.renderListCustomTabs(),
//       // backgroundColorAllSlides: Colors.white,
//
//       // refFuncGoToTab: (refFunc) {
//       //   this.goToTab = refFunc;
//       // },
//
//       // Show or hide status bar
//       shouldHideStatusBar: true,
//
//       // On tab change completed
//       // onTabChangeCompleted: onFinished,
//     );
//
//
//
//     // return Builder(
//     //   builder: (context) => IntroViewsFlutter(
//     //     pages.map((e) => PageViewModel(
//     //       title: Text(e.titleText),
//     //       pageColor: e.backgroundColor,
//     //       body: Text(e.descriptionText),
//     //
//     //       mainImage: SizedBox(),
//     //     )).toList(),
//     //     background: Colors.amber,
//     //     doneText: Text("Done"),
//     //     showNextButton: true,
//     //     showBackButton: true,
//     //     onTapDoneButton: onFinished,
//     //     nextText: Text("Next"),
//     //     backText: Text("Back"),
//     //     pageButtonTextStyles: TextStyle(
//     //       color: Colors.white,
//     //       fontSize: 18.0,
//     //     ),
//     //   ), //IntroViewsFlutter
//     // );
//
//
//
//
//     // return ConcentricPageView(
//     //   // verticalPosition: 250,
//     //
//     //   itemCount: pages.length,
//     //   colors: colors,
//     //   // opacityFactor: 1.0,
//     //   // scaleFactor: 0.0,
//     //   // radius: 500,
//     //   // curve: Curves.ease,
//     //   duration: Duration(seconds: 2),
//     //   // verticalPosition: 0.7,
//     //   // direction: Axis.vertical,
//     //   physics: NeverScrollableScrollPhysics(),
//     //   itemBuilder: (int index, double value) {
//     //     return XScaffold(
//     //       backgroundColor: _getColors().elementAt(index),
//     //       body: Center(child: pages[index])
//     //     );
//     //   },
//     // );
//
//
//     // return AnimatedOnboarding(
//     //   pageController: PageController(),
//     //   onFinishedButtonTap: onFinished,
//     //
//     //   topLeftChild: (isRtl ? skipWidget : topLeftChild) ?? SizedBox.shrink(),
//     //   topRightChild: (isRtl ? topLeftChild : skipWidget) ?? SizedBox.shrink(),
//     //
//     //   pages: pages.asMap().entries.map((entry) {
//     //     int index = entry.key;
//     //     XOnBoardingContent val = entry.value;
//     //     Color? color = _getColors().elementAt(index);
//     //     return OnboardingPage(
//     //       color: color,
//     //       child: val,
//     //     );
//     //   }).toList(),
//     // );
//   }
//
//   List<Color> _getColors(){
//     List<Color> colors = [];
//
//     for(int i = 0; i < pages.length; i++)
//       colors.add(_getDefaultBackgroundColor(i));
//
//     return colors;
//   }
//
//   Color _getDefaultBackgroundColor(int index){
//     return pages[index].backgroundColor ??
//         _colors[_getColorIndex(index, _colors)];
//   }
//
//   Color _getSecBackgroundColor(int index){
//     return pages[index].backgroundColor ??
//         _secColors[_getColorIndex(index, _secColors)];
//   }
//
//   int _getColorIndex(int index, List list){
//     if(index < list.length)
//       return index;
//     return index % list.length;
//   }
// }
