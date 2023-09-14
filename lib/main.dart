import 'package:flutter/material.dart';
import 'package:si_no_app/config/theme/app_theme.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Si, No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5). theme(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar'),
        
        ),

      body: Center(child: FilledButton.tonal(
      onPressed: (){},
      child: const Text('Click Me')
      )),
      )
    
    );
  }
}