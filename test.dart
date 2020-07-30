import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedValue = 0;

  Widget _editButton(int position, dynamic questionPaperDetails) {
    return Theme(
      data: Theme.of(context).copyWith(
        cardColor: Colors.white,
      ),
      child: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Container(
              color: _selectedValue == 1 ? Colors.red : Colors.white,
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Container(
              color: _selectedValue == 2 ? Colors.red : Colors.white,
            ),
          ),
        ],
        onSelected: (value) {
          setState(() {
            _selectedValue = value;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _editButton(0, 1),
    );
  }
}
