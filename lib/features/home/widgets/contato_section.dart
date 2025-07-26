import 'package:flutter/material.dart';

class ContatoSection extends StatelessWidget {
  const ContatoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.blue[100],
      child: const Center(child: Text('Seção Contato')),
    );
  }
}
