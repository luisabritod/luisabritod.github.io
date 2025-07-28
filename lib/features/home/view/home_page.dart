import 'package:flutter/material.dart';
import 'package:luisabritod_portfolio/core/core.dart';
import 'package:luisabritod_portfolio/features/home/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  final keyHome = GlobalKey();
  final keySobre = GlobalKey();
  final keyProjetos = GlobalKey();
  final keyContato = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

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
            onPressed: () {
              _scrollToSection(keyHome);
            },
            child: Text('Início', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              _scrollToSection(keySobre);
            },
            child: Text('Sobre Mim', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              _scrollToSection(keyProjetos);
            },
            child: Text('Projetos', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              _scrollToSection(keyContato);
            },
            child: Text('Contato', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            HomeSection(key: keyHome),
            SobreSection(key: keySobre),
            ProjetosSection(key: keyProjetos),
            ContatoSection(key: keyContato),
          ],
        ),
      ),
    );
  }
}
