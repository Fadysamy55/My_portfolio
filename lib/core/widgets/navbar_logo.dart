import 'package:flutter/material.dart';
import 'package:my_protfolio_using_flutter/core/res/responsive.dart';
import 'package:my_protfolio_using_flutter/core/theme/app_theme.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    //
    var textSty = TextStyle(
      color: theme.textColor,
      fontWeight: FontWeight.w100,
      fontSize: Responsive.isDesktop(context) ? 28 : 20,
    );

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("< ", style: textSty),
          Text("Eng.Fady Samy", style: textSty),
          Text(
            Responsive.isDesktop(context) ? " />\t\t" : " />",
            style: textSty,
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
