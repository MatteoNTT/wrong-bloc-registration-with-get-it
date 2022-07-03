import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../application/route/routes.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Page')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.router.push(const SecondaryRoute());
            },
            child: const Text('Go to secondary page')),
      ),
    );
  }
}
