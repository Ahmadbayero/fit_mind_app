class Slide {
  final String svgUrl;
  final String title;
  final String subTitle;

  Slide({this.svgUrl, this.title, this.subTitle})
      : assert(
          svgUrl != null && title != null && subTitle != null,
        );
}
