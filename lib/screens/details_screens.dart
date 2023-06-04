import 'package:flutter/material.dart';
import 'package:meditation_app/containers.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.05,),
                  Text(
                    "Meditation",
                    style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "3-10 min Course",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(width: size.width * .6,
                  child: Text(
                    "Live happier and healthier by learning the fundamentals of meditations and mindfulness"),
                  ),
                  SizedBox(
                    width: size.width * .5,
                    child: const SearchBar(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
