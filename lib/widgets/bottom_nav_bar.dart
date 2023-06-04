import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../containers.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: "Today",
            svgSrc: "assets/icons/calendar.svg",
            onPressed: () {},
          ),
          BottomNavItem(
            title: "All Exercises",
            svgSrc: "assets/icons/gym.svg",
            onPressed: () {},
            isActive: true,
          ),
          BottomNavItem(
            title: "Settings",
            svgSrc: "assets/icons/Settings.svg",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  
  final String svgSrc;
  final String title;
  final VoidCallback onPressed;
  final bool isActive;

  const BottomNavItem({
    super.key, 
    required this.svgSrc, 
    required this.title, 
    required this.onPressed, 
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,    //correction
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            svgSrc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}


