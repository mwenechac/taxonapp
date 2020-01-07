import 'package:flutter/material.dart';
import 'package:taxonapp/screens/onboarding/models/onboard_page_model.dart';

class OnboardPage extends StatefulWidget {
  final PageController pageController;
  final OnboardPageModel pageModel;

  const OnboardPage(
      {Key key, @required this.pageModel, @required this.pageController})
      : super(key: key);

  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/lady_bg.png'),
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
