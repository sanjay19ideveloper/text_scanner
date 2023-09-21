import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class ResultScreen extends StatefulWidget {
  final String? text;
  const ResultScreen({Key? key, required this.text}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final HtmlEditorController controller = HtmlEditorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Recognition'),
        ),
        body: HtmlEditor(
          htmlEditorOptions: HtmlEditorOptions(
      initialText:'${widget.text}'.replaceAll("\n", "<br>"),
          

          ),
          // height: 800,
          controller: controller,
         
    
        ))
        ;
  }
}
