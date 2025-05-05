import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//--------------------------------------------------
// This is a simple example of using the Provider package in Flutter.
// DataModel is a ChangeNotifier that holds a string value.
// It has a method to update the data and notify listeners.
// The ExampleProvider widget uses ChangeNotifierProvider to provide the DataModel to its descendants.
//--------------------------------------------------
class DataModel with ChangeNotifier {
  String _data = 'Initial Data';

  String get data => _data;

  void updateData(String newData) {
    _data = newData;
    notifyListeners();
  }
}

class InfoModel with ChangeNotifier {
  String _data = 'Initial Data';

  String get info => _data;

  void updateInfo(String newData) {
    _data = newData;
    notifyListeners();
  }
}


//--------------------------------------------------
// This is the main widget that uses the Provider package.
// It allows the user to update the data in the DataModel.
// The data is displayed in a Text widget, and the user can update it using a TextField.
// The updated data is reflected in the Text widget when the user presses the button.
// The widget is wrapped in a ChangeNotifierProvider, which provides the DataModel to its descendants.
// The Consumer widget listens for changes in the DataModel and rebuilds the Text widget when the data changes.
// This is a simple example of using the Provider package in Flutter.
// This example demonstrates how to use the Provider package to manage state in a Flutter application.
// It includes a TextField for user input, a Text widget to display the data, and a button to update the data.
//--------------------------------------------------
class ExampleProvider2 extends StatelessWidget {
  const ExampleProvider2({super.key});

  @override
  Widget build(BuildContext context) {
    final datoTextController = TextEditingController();
    final infoTextController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Provider Consumer 2'),
      ),
      //___________________________________________
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider<DataModel>(create: (_) => DataModel()),
          ChangeNotifierProvider<InfoModel>(create: (_) => InfoModel()),
        ],
        builder: (context, child) => Center(
      //-------------------------------------------
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextField(
                  controller: datoTextController,
                  decoration: const InputDecoration(
                    labelText: 'Nuevo dato:',
                  ),
                ),
              ),
              Consumer<DataModel>(
                builder: (context, dataModel, child) {
                  return Text('Dato: ${dataModel.data}');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  final dataModel = Provider.of<DataModel>(context, listen: false);
                  dataModel.updateData(datoTextController.text);
                },
                child: const Text('Update Data'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextField(
                  controller: infoTextController,
                  decoration: const InputDecoration(
                    labelText: 'Nuevo info:',
                  ),
                ),
              ),
              Consumer<InfoModel>(
                builder: (context, infoModel, child) {
                  return Text('Info: ${infoModel.info}');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  final infoModel = Provider.of<InfoModel>(context, listen: false);
                  infoModel.updateInfo(infoTextController.text);
                },
                child: const Text('Update Info'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Navigate back to the homepage
                },
                child: const Text('Back to Homepage'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
