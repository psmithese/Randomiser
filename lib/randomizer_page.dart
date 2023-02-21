import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomizer/randomizer_change_notifier.dart';

class RandomizerPage extends StatelessWidget {
  const RandomizerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Randomizer',
        ),
      ),
      body: Center(child: Consumer<RadomizerChangeNotifier>(
        builder: (context, notifier, child) {
          return Text(
            notifier.generatedNumber?.toString() ?? 'Generate a number',
            style: const TextStyle(fontSize: 40),
          );
        },
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Generate'),
        onPressed: () {
          context.read<RadomizerChangeNotifier>().generatedRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  // @override
  // State<RandomizerPage> createState() => _RandomizerPageState();
}
