import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Slideablelist extends StatelessWidget {
  const Slideablelist({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(12, (index) => 'Item ${index + 1}');

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            pinned: true,
            floating: false,
            snap: false,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Slideable Sliver List"),

              background: FlutterLogo(),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ), // space between tiles
                child: Slidable(
                  key: ValueKey(items[index]),

                  startActionPane: ActionPane(
                    motion: const DrawerMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('${items[index]} edited')),
                          );
                        },
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        icon: Icons.edit,
                        label: 'Edit',
                      ),
                      SlidableAction(
                        onPressed: (context) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('${items[index]} deleted')),
                          );
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),

                  child: Container(
                    color: Colors.amber,
                    child: ListTile(
                      tileColor: Colors.amber,

                      leading: const Icon(Icons.label),
                      title: Text(items[index]),
                      subtitle: const Text('Swipe to see actions'),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ),
                ),
              );
            }, childCount: items.length),
          ),
        ],
      ),
    );
  }
}
