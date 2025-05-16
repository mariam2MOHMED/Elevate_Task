import 'package:flutter/material.dart';

import 'core/di/service_lactor.dart';
import 'feature/presentation/view/screens/product_screen.dart';

void main() {
  setUp();
  runApp(const ElevateTask());
}

class ElevateTask extends StatelessWidget {
  const ElevateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen()
    );
  }
}
