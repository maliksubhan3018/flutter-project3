import 'package:flutter/material.dart';

class TabsClass extends StatefulWidget {
  const TabsClass({super.key});

  @override
  State<TabsClass> createState() => _TabsClassState();
}

class _TabsClassState extends State<TabsClass>
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
      
      // ✅ Drawer automatically slides from the left side
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // Optional header for style
              // Your menu items
              ...menuitems.map((item) {
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    Navigator.pop(context); // close the drawer
                   
                  },
                );
              }).toList(),
            ],
          ),
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Tabs Example'),
        // ✅ This automatically opens the drawer
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),

      body: Column(
        children: [
          TabBar(
            controller: _controller,
            indicatorColor: Colors.green,
            tabs: [_buildTab('One', 0), _buildTab('Two', 1)],
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: [
                _buildPage('Page One', Colors.red),
                _buildPage('Page Two', Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String text, int index) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: _controller.index == index ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: _controller.index == index ? Colors.white : Colors.black,
          fontWeight: _controller.index == index
              ? FontWeight.bold
              : FontWeight.normal,
        ),
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
          Container(width: 50, height: 50, color: color),
        ],
      ),
    );
  }
}
