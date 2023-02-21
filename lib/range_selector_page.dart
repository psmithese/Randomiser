import 'package:flutter/material.dart';
import 'package:randomizer/randomizer_page.dart';
import 'package:randomizer/range_selector_form.dart';

class RangeSeletorPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  RangeSeletorPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Range"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
       
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RandomizerPage(),),);
          }
          // ignore: todo
          //* TODO: Navigate to the generator page
        },
      ),
    );
  }

  // @override
  // State<RangeSeletorPage> createState() => _RangeSeletorPageState();
}
