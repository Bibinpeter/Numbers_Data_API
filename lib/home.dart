import 'package:flutter/material.dart';
import 'package:numberapi/apis.dart'; // Make sure you import the necessary APIs

class ScreenHome extends StatefulWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final numberInputController = TextEditingController();

   String _resultext="press get result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: numberInputController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: " Enter a number",
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 0, 0, 0)),
              ),
              onPressed: () async {
                final number = numberInputController.text;
                final result=await getnumberfact(number: number);
               setState(() {
                 _resultext=result.text??"";
               });
              },
              child: const Text('get fact about number'),
            ),
            Text(_resultext),
          ],
        ),
      ),
    );
  }
}
