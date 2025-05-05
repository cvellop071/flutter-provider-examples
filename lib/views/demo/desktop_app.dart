import 'package:desktop/desktop.dart';
import 'package:flutter/material.dart' as mat; // Import for navigation

class DesktopApp extends StatelessWidget {
  const DesktopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mat.Colors.black, // Set background color to black
      child: Column(
        children: [
          mat.ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Navigate back to the homepage
            },
            child: const Text('Back to Homepage'),
          ),
          Expanded(
            child: Tree(
              title: Builder(
                builder: (context) => Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    'Tree with widgets',
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
              ),
              nodes: [
                TreeNode.child(
                  titleBuilder: (context) => const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.cameraEnhance),
                      ),
                      Text('Node 0'),
                    ],
                  ),
                  builder: (context) => Center(
                      child: Text(
                    'Node 0',
                    style: Theme.of(context).textTheme.title,
                  )),
                ),
                TreeNode.children(
                  titleBuilder: (context) => const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.place),
                      ),
                      Text('Node 1'),
                    ],
                  ),
                  children: [
                    TreeNode.child(
                      titleBuilder: (context) => const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Icon(Icons.locationCity),
                          ),
                          Text('Node 0'),
                        ],
                      ),
                      builder: (context) => Center(
                        child: Text(
                          'Node 1 -> 0',
                          style: Theme.of(context).textTheme.title,
                        ),
                      ),
                    ),
                    TreeNode.child(
                      titleBuilder: (context) => const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Icon(Icons.map),
                          ),
                          Text('Node 1'),
                        ],
                      ),
                      builder: (context) => Center(
                          child: Text(
                        'Node 1 -> 1',
                        style: Theme.of(context).textTheme.title,
                      )),
                    ),
                  ],
                ),
                TreeNode.child(
                  titleBuilder: (context) => const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.message),
                      ),
                      Text('Node 2'),
                    ],
                  ),
                  builder: (context) => Center(
                      child: Text(
                    'Node 2 ',
                    style: Theme.of(context).textTheme.title,
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}