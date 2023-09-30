import 'package:flutter/material.dart';

class SizeList extends StatefulWidget { 
  final String sizeText;
   const SizeList({super.key, required this.sizeText ,});

  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  @override
  Widget build(BuildContext context) {
    return 
     Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 34,
        width: 36,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: const Border(
              right: BorderSide(width: 1),
              left: BorderSide(width: 1),
              top: BorderSide(width: 1),
              bottom: BorderSide(width: 1),
            )),
        child: Text(
          widget.sizeText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
