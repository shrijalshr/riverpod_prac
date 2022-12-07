import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practice One',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

final currentData = Provider<DateTime>((ref) => DateTime.now());

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(currentData);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice One"),
      ),
      body: Center(
        child: Text(date.toIso8601String()),
      ),
    );
  }
}
