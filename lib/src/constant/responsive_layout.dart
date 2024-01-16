import 'package:flutter/cupertino.dart';

class ResponsiveLayOutForHomeAndBrandView extends StatelessWidget {
  final Widget smallMobileBody;
  final Widget normalMobileBody;
  const ResponsiveLayOutForHomeAndBrandView(
      {super.key,
      required this.normalMobileBody,
      required this.smallMobileBody});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 390) {
          return smallMobileBody;
        } else {
          return normalMobileBody;
        }
      },
    );
  }
}

class ResponsiveLayOutForSignUpView extends StatelessWidget {
  final Widget smallMobileBody;
  final Widget normalMobileBody;
  const ResponsiveLayOutForSignUpView(
      {super.key,
      required this.normalMobileBody,
      required this.smallMobileBody});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight < 743) {
          return smallMobileBody;
        } else {
          return normalMobileBody;
        }
      },
    );
  }
}
