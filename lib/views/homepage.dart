import 'package:flutter/material.dart';
import 'package:providerexamples/constants.dart';
import 'package:providerexamples/views/demo/desktop_app.dart';
import 'package:providerexamples/views/demo/example_provider_consumer.dart';
import 'package:providerexamples/views/demo/example_provider_consumer_problem.dart'; 
import 'package:providerexamples/views/demo/example_provider_consumer_2.dart';
import 'package:providerexamples/views/demo/example_provider_inherited_widget.dart';
import 'package:providerexamples/views/demo/example_provider_selector.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  void goToDesktopApp(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DesktopApp())
    );
  }
  void goToExampleProviderInheritedWidget(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExampleProviderInheritedWidget())
    );
  }

  void goToExampleProvider(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExampleProvider())
    );
  }

  void goToExampleProviderProblem(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExampleProviderProblem())
    );
  }
  void goToExampleProvider2(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExampleProvider2())
    );
  }

  void goToExampleSelector(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExampleSelector())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true, // Add this line to center the title
        title: Text("PROVIDER EXAMPLES", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color4,
                elevation: 0,
              ),
              onPressed: () => goToExampleProviderInheritedWidget(context),
              child: Text("InheritedWidget", style: TextStyle(color: Colors.black87)),
            ),
            SizedBox(height: 16), // Add spacing between buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color4,
                elevation: 0,
              ),
              onPressed: () => goToExampleProvider(context),
              child: Text("Provider Consumer", style: TextStyle(color: Colors.black87)),
            ),
                        SizedBox(height: 16), // Add spacing between buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color4,
                elevation: 0,
              ),
              onPressed: () => goToExampleProviderProblem(context),
              child: Text("Provider Consumer problem", style: TextStyle(color: Colors.black87)),
            ),
            SizedBox(height: 16), // Add spacing between buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color4,
                elevation: 0,
              ),
              onPressed: () => goToExampleProvider2(context),
              child: Text("Provider Consumer 2", style: TextStyle(color: Colors.black87)),
            ),
            SizedBox(height: 16), // Add spacing between buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color4,
                elevation: 0,
              ),
              onPressed: () => goToExampleSelector(context),
              child: Text("Provider Selector", style: TextStyle(color: Colors.black87)),
            ),
          ],
        ),
      ),
    );
  }
}