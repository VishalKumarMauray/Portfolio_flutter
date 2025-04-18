import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/controller/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Theme Provider Demo'),
      //   actions: [
      //     Switch(
      //       value: themeProvider.isDarkMode,
      //       onChanged: (value) {
      //         themeProvider.toggleTheme(value);
      //       },
      //     ),
      //   ],
      // ),
      body: const Center(
        child: Text('Toggle the switch to change theme'),
      ),
    );
  }
}
