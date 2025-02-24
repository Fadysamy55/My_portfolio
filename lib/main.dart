import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio_using_flutter/firebase_options.dart';
import 'package:my_protfolio_using_flutter/my_site.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MySite());
}
