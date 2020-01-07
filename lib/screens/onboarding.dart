import 'package:flutter/material.dart';
import 'package:taxonapp/screens/login_screen.dart';
import 'package:taxonapp/screens/onboarding/components/onboard_page.dart';
import 'package:taxonapp/screens/onboarding/data/onboard_page_data.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController();
  final int _numPages = 3;
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white.withOpacity(.5),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _nextButtonPressed() {
      pageController.nextPage(
        duration: Duration(
          milliseconds: 1000,
        ),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    }

    return Stack(
      children: <Widget>[
        PageView.builder(
          controller: pageController,
          itemCount: onboardData.length,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          itemBuilder: (context, index) {
            _currentPage = index;
            return OnboardPage(
              pageController: pageController,
              pageModel: onboardData[_currentPage],
            );
          },
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.black.withOpacity(.0)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp,
                stops: [.0, .4]),
          ),
        ),
        Container(
          width: double.infinity,
          height: 100.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 16.0),
                  child: Image.asset('assets/images/logo_bird.png'),
                )),
                Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Container(
                color: Colors.black45.withOpacity(.4),
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    onPressed: _nextButtonPressed),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 140.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ButtonTheme(
                          height: 45.0,
                          child: RaisedButton(
                            color: Color(0xffF1F8FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                        child: ButtonTheme(
                          height: 45.0,
                          child: RaisedButton(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: () {},
                            child: Text(
                              'REGISTER',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'eServices',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontFamily: 'CM Sans Serif'),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
