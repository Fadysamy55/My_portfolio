import 'package:flutter/material.dart';
import 'package:my_protfolio_using_flutter/core/widgets/footer.dart';
import 'package:my_protfolio_using_flutter/features/contact/contact.dart';
import 'package:my_protfolio_using_flutter/features/home/home.dart';
import 'package:my_protfolio_using_flutter/features/portfolio/portfolio.dart';
import 'package:my_protfolio_using_flutter/features/services/services.dart';
import 'package:my_protfolio_using_flutter/features/skills/skills.dart';

class BodyUtils {
  static List<Widget> views = [
    HomePage(),
    // About(),
    SkillsSection(),

    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
