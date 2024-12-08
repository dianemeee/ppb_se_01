import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 7'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Input Data'),
            Tab(text: 'Tampilkan Data'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          FirstPage(),
          SecondPage(),
        ],
      ),
    );
  }
}
