import 'package:flutter/material.dart';
import 'package:my_protfolio_using_flutter/core/configs/others/space.dart';
import 'package:my_protfolio_using_flutter/core/providers/drawer_provider.dart';
import 'package:my_protfolio_using_flutter/core/res/responsive.dart';
import 'package:my_protfolio_using_flutter/core/theme/app_theme.dart';
import 'package:my_protfolio_using_flutter/core/widgets/navbar_logo.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class NavBarTablet extends StatelessWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    var theme = Theme.of(context);
    return Container(
      color: theme.navBarColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 10.w : 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          Space.xm!,
          const NavBarLogo(),
          // Space.x1!,
        ],
      ),
    );
  }
}
