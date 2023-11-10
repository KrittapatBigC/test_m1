library module_1;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_1/test1_provider.dart';
import 'package:provider/provider.dart';

class Test1Page extends StatelessWidget {
  const Test1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Selector Example'),
      ),
      body: true ? Container() : Center(
        // Using Selector to listen to a particular part of the model
        child: Selector<Counter, int>(
          selector: (_, counter) => counter.count,
          builder: (_, count, __) => Text(
            'You clicked the button $count times',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Using Provider.of<T>(context, listen: false) to call a method on the model
          Provider.of<Counter>(context, listen: false).increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
