import 'package:flutter/material.dart';

class title_text extends StatelessWidget {
  final String text;
  const title_text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),

      child: Text(
        text,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ),
    );
  }
}
