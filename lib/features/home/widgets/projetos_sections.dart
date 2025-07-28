import 'package:flutter/material.dart';
import 'package:luisabritod_portfolio/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjetosSection extends StatelessWidget {
  const ProjetosSection({super.key});

  Future<void> _lauchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Não foi possível abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> projetos = [
      {
        'title': 'Guia Culinário (Receitas)',
        'description':
            'Um app com navegação entre telas e uma arquitetura limpa com Service e Provider, consumindo a API TheMealDB.',
        'gif_path': 'assets/gifs/receitas_demo.gif',
        'github_url':
            'https://github.com/luisabritod/jornada-flutter/tree/main/05-navegacao-e-multiplas-telas',
      },
      {
        'title': 'Vitrine de Produtos (GetX)',
        'description':
            'App que consome uma API de lista de produtos, construído com GetX e uma arquitetura profissional com Service e Controller.',
        'gif_path': 'assets/gifs/vitrine_getx_demo.gif',
        'github_url':
            'https://github.com/luisabritod/jornada-flutter/tree/main/06-bootcamp-getx-bloc/getx/vitrine_getx',
      },
      {
        'title': 'To-Do App com Firebase',
        'description':
            'App full-stack com operações CRUD, onde os dados são salvos e sincronizados em tempo real com o Cloud Firestore. A base de qualquer app com login e dados na nuvem.',
        'gif_path': 'assets/gifs/todo_firebase_demo.gif',
        'github_url':
            'https://github.com/luisabritod/jornada-flutter/tree/main/07-integracao-firebase/todo_firebase_app',
      },
    ];
    return Container(
      padding: EdgeInsets.all(32),
      width: double.infinity,
      color: AppColors.surface,
      child: Column(
        children: [
          Text('Meus projetos', style: AppTextStyles.title),
          SizedBox(height: UIConstants.defaultPadding),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              final projeto = projetos[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 8),
                    Image.asset(
                      height: 200,
                      projeto['gif_path']!,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
                      child: Text(
                        projeto['title']!,
                        style: AppTextStyles.title.copyWith(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        projeto['description']!,
                        style: AppTextStyles.body.copyWith(fontSize: 14),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: ElevatedButton(
                        onPressed: () {
                          _lauchURL(projeto['github_url']!);
                        },
                        child: Text('Ver no Github'),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: projetos.length,
          ),
        ],
      ),
    );
  }
}
