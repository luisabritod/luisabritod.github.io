import 'package:flutter/material.dart';
import 'package:luisabritod_portfolio/core/core.dart';
import 'package:luisabritod_portfolio/features/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Luísa Brito | Dev Flutter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.background,
          ),
        ),
        backgroundColor: AppColors.primary,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Início', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Sobre Mim', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Projetos', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Contato', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSection(),
            SobreSection(),
            ProjetosSection(),
            ContatoSection(),
          ],
        ),
      ),
    );
  }
}
