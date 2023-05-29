import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverCrossAxisGroup(slivers: [
              const SliverAppBar(
                title: Text('Sample section'),
                toolbarHeight: 30,
                expandedHeight: 60,
                backgroundColor: Colors.amber,
                floating: true,
                snap: true,
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                  )
                ),
              ),
            ]),
            SliverToBoxAdapter(
              child: Container(
                height: 1000,
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
