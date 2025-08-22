
import 'package:flutter/material.dart';

class InLoadingCircle extends StatelessWidget {
  const InLoadingCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
