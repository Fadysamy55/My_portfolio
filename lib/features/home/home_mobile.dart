import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio_using_flutter/core/animations/entrance_fader.dart';
import 'package:my_protfolio_using_flutter/core/animations/zoom_animation.dart';
import 'package:my_protfolio_using_flutter/core/changes/img.dart';
import 'package:my_protfolio_using_flutter/core/changes/links.dart';
import 'package:my_protfolio_using_flutter/core/changes/strings.dart';
import 'package:my_protfolio_using_flutter/core/configs/others/app_typography.dart';
import 'package:my_protfolio_using_flutter/core/configs/others/space.dart';
import 'package:my_protfolio_using_flutter/core/res/responsive_size.dart';
import 'package:my_protfolio_using_flutter/core/widgets/color_chage_btn.dart';

import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

import 'widgets/animation_text.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                hellotag,
                style: AppText.h3!.copyWith(fontSize: isFontSize(context, 16)),
              ),
              // Space.x!,
              Image.asset(
                StaticImage.hi,
                height: height * 0.05,
                width: width * 0.05,
              ),
            ],
          ),
          // Space.y(1.w)!,
          Text(
            yourname,
            style: TextStyle(
              fontSize: isFontSize(context, 28),
              fontWeight: FontWeight.w600,
            ),
          ),
          Space.y(1.w)!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "A ",
                style: TextStyle(
                  fontSize: isFontSize(context, 18),
                  fontWeight: FontWeight.w400,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: mobileList,
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ],
          ),

          Space.y(2.w)!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorChageButton(
                text: 'download cv',
                onTap: () {
                  html.window.open(resume, "pdf");
                },
              ),
              const EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: ZoomAnimations(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
