import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_protfolio_using_flutter/core/changes/strings.dart';
import 'package:my_protfolio_using_flutter/core/color/colors.dart';
import 'package:my_protfolio_using_flutter/core/configs/others/space.dart';
import 'package:my_protfolio_using_flutter/core/res/responsive.dart';
import 'package:my_protfolio_using_flutter/core/theme/app_theme.dart';
import 'package:my_protfolio_using_flutter/core/utils/services_utils.dart';
import 'package:my_protfolio_using_flutter/core/widgets/custom_text_heading.dart';
import 'package:sizer/sizer.dart';

part 'services_desktop.dart';
part 'services_mobile.dart';
part 'widgets/_services_card.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
