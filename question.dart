import 'package:flutter/material.dart';

class MyProject extends StatefulWidget {
  final String id_, question_, aa_, bb_, cc_, dd_, answer_;

  const MyProject(
      {Key? key,
      required this.id_,
      required this.question_,
      required this.aa_,
      required this.bb_,
      required this.cc_,
      required this.dd_,
      required this.answer_})
      : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

//DECLARE GLOBAL PARAM
enum ANSWER { a, b, c, d, e }

ANSWER? _quiz = ANSWER.e; //Default Answer

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("QUIZ ONLINE")),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Question No." + widget.id_,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.question_,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),

          //......................................................................
          ListTile(
            title: Row(
              children: [
                Text("a.   "),
                Expanded(child: Text(widget.aa_)),
              ],
            ),
            leading: Radio<ANSWER>(
              value: ANSWER.a,
              groupValue: _quiz,
              onChanged: (ANSWER? value) {
                setState(() {
                  _quiz = value;
                });
              },
            ),
          ),
          //......................................................................
          ListTile(
            title: Row(
              children: [
                Text("b.   "),
                Expanded(child: Text(widget.bb_)),
              ],
            ),
            leading: Radio<ANSWER>(
              value: ANSWER.b,
              groupValue: _quiz,
              onChanged: (ANSWER? value) {
                setState(() {
                  _quiz = value;
                });
              },
            ),
          ),
          //......................................................................
          ListTile(
            title: Row(
              children: [
                Text("c.   "),
                Expanded(child: Text(widget.cc_)),
              ],
            ),
            leading: Radio<ANSWER>(
              value: ANSWER.c,
              groupValue: _quiz,
              onChanged: (ANSWER? value) {
                setState(() {
                  _quiz = value;
                });
              },
            ),
          ),
          //......................................................................
          ListTile(
            title: Row(
              children: [
                Text("d.   "),
                Expanded(child: Text(widget.dd_)),
              ],
            ),
            leading: Radio<ANSWER>(
              value: ANSWER.d,
              groupValue: _quiz,
              onChanged: (ANSWER? value) {
                setState(() {
                  _quiz = value;
                });
              },
            ),
          ),
          //......................................................................
          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(120, 2, 120, 2),
            child: ElevatedButton(
                onPressed: () {},
                child: const Center(child: Text("E N T E R"))),
          )
        ],
      ),
    );
  }
}
