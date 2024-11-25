import 'package:flutter/material.dart';

import '../global/shapes/custom_appbar.dart';
import '../global/widgets/layouts/custom_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      isScrollable: false,
      appBar: BasicAppBar(title: Text('Home')),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
