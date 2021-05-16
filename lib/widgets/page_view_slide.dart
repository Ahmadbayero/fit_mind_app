import 'package:fit_mind_app/models/slide_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewSlide extends StatelessWidget {
  const PageViewSlide({
    Key key,
    @required this.slide,
  }) : super(key: key);

  final Slide slide;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(slide.svgUrl, height: 200),
          SizedBox(height: 20.0),
          Text(
            slide.title,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.white,
                ),
          ),
          SizedBox(height: 10.0),
          Text(
            slide.subTitle,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Colors.white,
                  letterSpacing: .8,
                ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}