import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import '../models/x_tab_content.dart';
import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';


class XBottomNavBar extends StatefulWidget {

  final int currentIndex;
  final List<XTabContent> items;
  final Color? selectedItemColor;
  final ValueChanged<int> onTap;
  final Color? backgroundColor;
  final int initIndex;
  final bool disableSwipe;

  const XBottomNavBar({this.initIndex = 0,
    required this.items,
    this.selectedItemColor,
    required this.currentIndex,
    required this.onTap,
    this.disableSwipe = false,
    this.backgroundColor, Key? key
  }) : super(key: key);

  @override
  _XBottomNavBarState createState() => _XBottomNavBarState();
}

class _XBottomNavBarState extends State<XBottomNavBar> {


  @override
  Widget build(BuildContext context) {
    int _currentIndex = widget.currentIndex;

    Color bColor = widget.backgroundColor ??
        ThemeFactory.instance.getTheme().themeData.primaryColor;

      return BottomNavigationBar(

        items: widget.items.map((e) =>
            BottomNavigationBarItem(
              icon: Icon(e.icon),
              label: e.title,
              // title: Text(e.title),
            )).toList(),
        currentIndex: _currentIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() => _currentIndex = index);
          widget.onTap(index);
        },



      );
    // return _getBubbleNav();
    //   return _getSnakeBottomBar(_currentIndex);




//    return FlashyTabBar(
//      selectedIndex: _currentIndex,
//      showElevation: false,
//
//      onItemSelected: (index) => setState(() {
//        _currentIndex = index;
//        widget.onTap(index);
//      }),
//      items: widget.items.map((i) => FlashyTabBarItem(
//        title: Text(i.title),
//        icon: XIcon(i.icon),
//        activeColor: bColor,
//        inactiveColor: ThemeFactory.instance.getTheme().secondary
//      )).toList()
//    );


//
//    return Container(
//      decoration: BoxDecoration(
//        color: Theme.of(context).backgroundColor,
////        boxShadow: [
////          BoxShadow(
////            blurRadius: 20,
////            color: Colors.black.withOpacity(.1)
////          )
////        ]
//      ),
//
//      child: SafeArea(
//        child: Padding(
//          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//          child: GNav(
//            tabBackgroundGradient: LinearGradient(
//              colors: [
//                ThemeFactory.instance.getTheme().themeData.primaryColor,
//                ThemeFactory.instance.getTheme().gradientTwo,
//              ],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            ),
//            color: ThemeFactory.instance.getTheme().themeData.primaryColor,
//            textStyle: textStyle,
//            gap: 16,
//            activeColor: bColor,
//            iconSize: 24,
//
//            backgroundColor: Theme.of(context).backgroundColor,
//            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//            duration: Duration(milliseconds: 300),
//            tabBackgroundColor: bColor,
//            tabs: widget.items.map((i) =>
//              GButton(
//                icon: i.icon,
//                text: i.title,
//                textStyle: textStyle.copyWith(color: Colors.white),
//                iconActiveColor: Colors.white,
//
//              )
//            ).toList(),
//            selectedIndex: _currentIndex,
//            onTabChange: (index) {
//              setState(() {
//                widget.onTap(index);
//                _currentIndex = index;
//              });
//            }),
//        ),
//      ),
//    );
  }

  // Widget _getTitledBottomNavBar(){
  //   return TitledBottomNavigationBar(
  //     currentIndex: _currentIndex,
  //     onTap: (index) {
  //       setState(() {
  //         widget.onTap(index);
  //         _currentIndex = index;
  //       });
  //     },
  //     items: widget.items.map((e) => TitledNavigationBarItem(
  //       icon: e.icon,
  //       title: Text(e.title),
  //       backgroundColor: e.color,
  //     )).toList(),
  //   );
  // }


  // Widget _getFancyBar(){
  //   return CircularBottomNavigation( widget.items.map((e) => TabItem(
  //     e.icon,
  //     e.title,
  //     ThemeFactory.instance.getTheme().themeData.primaryColor
  //   )).toList(),
  //     selectedCallback: (index) {
  //       setState(() {
  //         widget.onTap(index);
  //         _currentIndex = index;
  //       });
  //     },
  //   );
  // }



  Widget _getSnakeBottomBar(int currentIndex) {
    return SnakeNavigationBar.color(
      // style: snakeBarStyle,
      // snakeShape: SnakeShape.indicator,
      // selectedItemColor: Colors.pink,
      // snakeColor: ThemeFactory.instance.getTheme().themeData.accentColor,
      // backgroundColor: ThemeFactory.instance.getTheme().backBackgroundColor,
      // backgroundColor: ThemeFactory.instance.getTheme().themeData.backgroundColor,
      // selectedItemColor: ThemeFactory.instance.getTheme().onPrimarySolidContrast,
      // selectedItemColor: ThemeFactory.instance.getTheme().themeData.primaryColor,
      // snakeColor: ThemeFactory.instance.getTheme().themeData.accentColor,

      // showUnselectedLabels: showUnselectedLabels,
      // showSelectedLabels: showSelectedLabels,
      // shape: bottomBarShape,
      // padding: padding,

      currentIndex: currentIndex,
      onTap: (index) {
        setState(() => currentIndex = index);
        widget.onTap(index);
      },

      items: widget.items.map((e) =>
          BottomNavigationBarItem(
            icon: Icon(e.icon),
            label: e.title,
            // title: Text(e.title),
          )).toList(),
    );
  }
}
