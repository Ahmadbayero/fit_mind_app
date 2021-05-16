import 'package:fit_mind_app/data.dart';
import 'package:fit_mind_app/styles.dart';
import 'package:fit_mind_app/widgets/page_view_slide.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController _pageController;
  int _isActiveIndex;

  @override
  void initState() {
    _pageController = PageController();
    _isActiveIndex = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _handlePageChange({int index}) {
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 900), curve: Curves.easeIn);
    setState(() {
      _isActiveIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: _size.width,
        height: _size.height,
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        color: AppColor.backgroundColorDark,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      onPageChanged: (value) => _handlePageChange(index: value),
                      itemCount: slides.length,
                      itemBuilder: (context, index) {
                        return PageViewSlide(
                          slide: slides[index],
                        );
                      },
                    ),
                    Positioned(
                      bottom: 80.0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < slides.length; i++)
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              width: _isActiveIndex == i ? 15.0 : 8.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                color: _isActiveIndex == i
                                    ? AppColor.buttonColor
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: _size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('GET STARTED'),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style:
                            TextStyle(color: Colors.white70, letterSpacing: .7),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('SignIn',
                            style: TextStyle(
                                color: Colors.white, letterSpacing: .7)),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
