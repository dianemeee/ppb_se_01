import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String _name = '';
  String _nim = '';
  String _class = '';

  Future<void> _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = prefs.getString('name') ?? 'Belum ada data';
      _nim = prefs.getString('nim') ?? 'Belum ada data';
      _class = prefs.getString('class') ?? 'Belum ada data';
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nama: $_name', style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          Text('NIM: $_nim', style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          Text('Kelas: $_class', style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
