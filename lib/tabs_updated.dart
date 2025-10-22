import 'package:flutter/material.dart';

class Updatedtabs extends StatefulWidget {
  const Updatedtabs({super.key});

  @override
  State<Updatedtabs> createState() => _UpdatedtabsState();
}

class _UpdatedtabsState extends State<Updatedtabs>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  List<String> menuitems = ["Home", "Setting", "About", "Contact Us"];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ...menuitems.map((item) {
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    Navigator.pop(context);
                  },
                );
              }).toList(),
            ],
          ),
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Tabs Example'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),

        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.green,
          tabs: const [
            Tab(text: "One"),
            Tab(text: "Two"),
          ],
        ),
      ),

      body: TabBarView(
        controller: _controller,
        children: [
          _buildPage('Page One', Colors.red),
          _buildPage('Page Two', Colors.blue),
        ],
      ),
    );
  }

  Widget _buildPage(String title, Color color) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          Container(width: 120, height: 120, color: color),
        ],
      ),
    );
  }
}
