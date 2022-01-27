import 'package:flutter/material.dart';
import '../test.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;
  final Color bgColor;

  Accordion(this.title, this.content, this.bgColor);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      decoration: BoxDecoration(color: widget.bgColor),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  color: Colors.white,
                  icon: Icon(_showContent
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      _showContent = !_showContent;
                    });
                  },
                ),
                Text(
                  widget.title,
                  style: const TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(right: 20.0),
              child: const Text(
                "86%",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            )
          ],
        ),
        _showContent
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      widget.content,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const Test()));
                          },
                          child: const Text(
                            "Try Again",
                            style: TextStyle(color: Color(0xFFBA509D)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            : Container()
      ]),
    ));
  }
}
