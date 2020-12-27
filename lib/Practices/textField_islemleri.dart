import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TextfieldIslemleri extends StatefulWidget {
  @override
  _TextfieldIslemleriState createState() => _TextfieldIslemleriState();
}

class _TextfieldIslemleriState extends State<TextfieldIslemleri> {
  var input = "";
  FocusNode focusNode;
  int maxline = 1;
  TextEditingController controller1;

  @override
  void initState() {
    focusNode = FocusNode();
    controller1 = TextEditingController(text: "varsayılan değer");
    super.initState();

    focusNode.addListener(() {
      setState(() {
        if (focusNode.hasFocus) {
          maxline = 3;
        } else {
          maxline = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            onPressed: () {
              controller1.text = "buton tıklayarak veri atadım";
            },
            child: Icon(Icons.edit_outlined),
            mini: true,
            backgroundColor: Colors.purple,
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            heroTag: 2,
            onPressed: () {
              FocusScope.of(context).requestFocus(focusNode);
            },
            child: Icon(Icons.edit_outlined),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              maxLines: maxline,
              maxLengthEnforced: true,
              maxLength: 10,
              controller: controller1,
              focusNode: focusNode,
              decoration: InputDecoration(
                  hintText: "yazınızı girind",
                  labelText: "Başlık",
                  labelStyle: TextStyle(color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  icon: Icon(Icons.post_add_outlined),
                  suffixIcon: Icon(Icons.done_all_outlined),
                  suffixText: "ok?",
                  filled: true,
                  fillColor: Colors.green.shade100),
              onSubmitted: (String s) {
                input = s;
              },
              onChanged: (String s) {
                input = s;
              },
              cursorColor: Colors.purple,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              maxLengthEnforced: true,
              maxLength: 10,
              // focusNode: focusNode,
              decoration: InputDecoration(
                  hintText: "yazınızı girind",
                  labelText: "Başlık",
                  labelStyle: TextStyle(color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hoverColor: Colors.black87,
                  icon: Icon(Icons.post_add_outlined),
                  suffixIcon: Icon(Icons.done_all_outlined),
                  suffixText: "ok?",
                  filled: true,
                  fillColor: Colors.green.shade100),
              onSubmitted: (String s) {
                input = s;
              },
              onChanged: (String s) {
                input = s;
              },
              cursorColor: Colors.purple,
            ),
          ),
          Container(
            width: double.infinity,
            height: 200, //MediaQuery.of(context).size.height,
            color: Colors.grey[500],
            child: Align(
              child: Text(
                input,
                style: TextStyle(color: Colors.purple, fontSize: 20),
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
