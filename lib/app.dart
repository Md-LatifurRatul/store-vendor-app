import 'package:ecom_store_vendor_only/vendor/views/auth/vendor_auth_screen.dart';
import 'package:flutter/material.dart';

class MyVendorApp extends StatelessWidget {
  const MyVendorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vendor App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const VendorAuthScreen(),
    );
  }
}
