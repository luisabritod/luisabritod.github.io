import 'package:flutter/material.dart';

class SobreSection extends StatelessWidget {
  const SobreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.green[100],
      child: const Center(child: Text('Seção Sobre')),
    );
  }
}
