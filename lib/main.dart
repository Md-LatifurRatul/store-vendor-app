import 'package:ecom_store_vendor_only/app.dart';
import 'package:ecom_store_vendor_only/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const supabaseUrl = 'https://dlwyusfsdjvmermvdjfy.supabase.co';
  const supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRsd3l1c2ZzZGp2bWVybXZkamZ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzYwMDY0MzgsImV4cCI6MjA1MTU4MjQzOH0.op1GJRybQ9cOKMlBZXeaGrE9UtQsVTcF8HLlvRYU1kE';

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseKey,
  );

  runApp(const MyVendorApp());
}
