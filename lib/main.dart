import 'package:flutter/material.dart';

import 'app.dart';
import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injection();
  runApp(App());
}
