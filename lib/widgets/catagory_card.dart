import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../containers.dart';



class CatagoryCard extends StatelessWidget {

  final String svgSrc;
  final String title;
  final VoidCallback onPressed;

  const CatagoryCard({
    super.key, 
    required this.svgSrc, 
    required this.title, 
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13), 
          boxShadow: [
              BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,    //correction
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(svgSrc),
                  Spacer(),
                  Text(
                    title,
                    style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

