import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSizeTextPage extends StatefulWidget {
  const AutoSizeTextPage({Key? key}) : super(key: key);

  @override
  State<AutoSizeTextPage> createState() => _AutoSizeTextState();
}

class _AutoSizeTextState extends State<AutoSizeTextPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Auto Size Text"),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              TextField(
                controller: controller,
                maxLines: 5,
                onChanged: (value){
                  setState(() {});
                },
                ),
              Card(
                child: Container(
                   padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: AutoSizeText(controller.text,
                  maxLines: 3,
                  minFontSize: 10,
                  
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}