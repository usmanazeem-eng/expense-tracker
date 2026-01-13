import 'package:flutter/material.dart';

class LoadingLine extends StatefulWidget {
  const LoadingLine({super.key});

  @override
  State<LoadingLine> createState() => _LoadingLineState();
}

class _LoadingLineState extends State<LoadingLine> {
  double width = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          width = 140;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 4,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.centerLeft,
      child: AnimatedContainer(
        duration: const Duration(seconds: 5),
        curve: Curves.linear,
        width: width,
        height: 4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
