import 'package:delivery_app1/home/main_food_page.dart';
import 'package:delivery_app1/pages/account/account_page.dart';
import 'package:delivery_app1/pages/auth/sign_up_page.dart';
import 'package:delivery_app1/pages/cart/cart_history.dart';
import 'package:delivery_app1/pages/cart/cart_page.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../pages/auth/sign_in_page.dart';

class HomePage extends StatefulWidget {
// String  email;
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late PersistentTabController _controller;


  // List pages = [
  //   MainFoodPage(),
  //   Container(
  //     child: Center(child: Text('Next page')),
  //   ),
  //   Container(
  //     child: Center(child: Text('Next next page')),
  //   ),
  //   Container(
  //     child: Center(child: Text('Next next next page')),
  //   ),
  // ];
  //
void onTapNav(int index){
  _selectedIndex=index;
  setState((){
    _selectedIndex=index;
  });
}

@override
void initState(){
  super.initState();
  _controller = PersistentTabController(initialIndex: 0);

}
  List<Widget> _buildScreens() {
    return [
      MainFoodPage(),
      // SignInPage(),
      // Container(
      //   child: Center(child: Text('Next page')),
      // ),
     CartPage(),
     AccountPage()
    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary:Colors.amberAccent,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.shopping_cart),
        title: ("Cart"),
        activeColorPrimary:AppColors.mainColor,
        inactiveColorPrimary: Colors.amberAccent,
      ),


      // PersistentBottomNavBarItem(
      //   icon: Icon(CupertinoIcons.archivebox),
      //   title: ("Archive"),
      //   activeColorPrimary: AppColors.mainColor,
      //   inactiveColorPrimary: Colors.amberAccent,
      // ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Me"),
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary: Colors.amberAccent,
      ),
    ];
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: pages[_selectedIndex],
  //     bottomNavigationBar: BottomNavigationBar(
  //      selectedItemColor : AppColors.mainColor,
  //       unselectedItemColor: Colors.amberAccent,
  //       onTap:onTapNav ,
  //       currentIndex: _selectedIndex,
  //       items: [
  //         BottomNavigationBarItem(
  //             icon: Icon(
  //               Icons.home_outlined,
  //             ),
  //             label: 'Home'),
  //         BottomNavigationBarItem(
  //             icon: Icon(
  //               Icons.shopping_cart,
  //             ),
  //             label: 'Cart'),
  //         BottomNavigationBarItem(
  //             icon: Icon(
  //               Icons.archive,
  //             ),
  //             label: 'Archive'),
  //         BottomNavigationBarItem(
  //             icon: Icon(
  //               Icons.person,
  //             ),
  //             label: 'Me'),
  //
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}

