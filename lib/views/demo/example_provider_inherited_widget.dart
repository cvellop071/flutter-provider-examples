import 'package:flutter/material.dart';

class DataProvider extends InheritedWidget {
  final int data;

  const DataProvider({
    super.key,
    required super.child,
    required this.data,
  });

  @override
  bool updateShouldNotify(DataProvider oldWidget) => oldWidget.data != data;

  static DataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DataProvider>();
  }
  
  void setData(int newValue) {
    // This method can be used to update the data value
    // In a real application, you would typically use a state management solution
    // to handle updates and notify listeners.
    // For this example, we will just print the new value.
    //print('Data updated to: $newValue');
    // You can also call setState() on the parent widget to trigger a rebuild
    // and update the UI accordingly.
    // For example:
    // (context as StatefulElement).setState(() {
    //   data = newValue;
    // });
    // Note: This is just a placeholder. In a real application, you would
    // implement a proper state management solution to handle updates.
    // For example, using Provider, Riverpod, or any other state management library.
  }
}

class DataConsumer extends StatelessWidget {
  const DataConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    final dataConsumer = DataProvider.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Data Consumer'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (dataConsumer != null) {
                final newValue = dataConsumer.data + 1;
                dataConsumer.setData(newValue); // Increment data value
              }
            },
            child: const Text('Perform Action'),
          ),
          const SizedBox(height: 16),
          if (dataConsumer != null) // Check if dataConsumer is not null
            Text('Data: ${dataConsumer.data}'),
          if (dataConsumer == null) // Check if dataConsumer is null
            const Text('No data available'),
        ],
      ),
    );
  }
}

class ExampleProviderInheritedWidget extends StatelessWidget{
  const ExampleProviderInheritedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Provider Inherited Widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example Provider Inherited Widget'),
        ),
        body: DataProvider(
          data: 42,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello, World!'),
              DataConsumer(),
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