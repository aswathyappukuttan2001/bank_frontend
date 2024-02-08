

import 'package:banksapp/pages/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(home());
}
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menu(),
    );
  }
}