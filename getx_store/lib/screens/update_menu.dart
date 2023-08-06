import 'package:flutter/material.dart';
import 'package:getx_store/widgets/rounded_input.dart';

class UpdateMenu extends StatelessWidget {
  const UpdateMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // debug
    print("UpdateMenu screen building...");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Menu'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RoundedInput(
              hintText: "Name",
              onSubmit: (value) => print(value),
            ),
            const SizedBox(height: 16),
            RoundedInput(
              hintText: "Color",
              onSubmit: (value) => print(value),
            ),
            const SizedBox(height: 16),
            TextButton(
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => {},
            ),
            const SizedBox(height: 16),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Name"),
                SizedBox(height: 16),
                Text("Color"),
                SizedBox(height: 16),
                Text("Location"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
