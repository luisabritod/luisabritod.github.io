import 'package:flutter/material.dart';
import 'package:luisabritod_portfolio/core/core.dart';

class SobreSection extends StatelessWidget {
  const SobreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: AppColors.surface,
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                Icons.person_pin_circle_outlined,
                size: 200,
                color: AppColors.primary,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sobre Mim',
                    style: AppTextStyles.title, // Usando nosso estilo de título
                  ),
                  const SizedBox(height: UIConstants.defaultPadding),
                  const Text(
                    '👩‍💻 Sou desenvolvedora Flutter e estudante de Engenharia de Computação na UFOP, na reta final do curso.',
                    style: AppTextStyles.body,
                  ),
                  const SizedBox(height: UIConstants.defaultSpacing),
                  const Text(
                    '🚀 Apaixonada por desenvolvimento mobile, gosto de Flutter pela integração entre frontend e backend e pelo grande incentivo que tive para aprender a tecnologia. Tenho experiência com React, React Native e JavaScript. Já participei de um projeto acadêmico de desenvolvimento de sistemas móveis e web para gerenciamento de leitos hospitalares.',
                    style: AppTextStyles.body,
                  ),
                  const SizedBox(height: UIConstants.defaultSpacing),
                  const Text(
                    '💡 Curto desafios, resolver problemas e aprender coisas novas. No momento, meu hobby favorito tem sido cozinhar e testar receitas diferentes!',
                    style: AppTextStyles.body,
                  ),
                  const SizedBox(height: UIConstants.defaultSpacing),
                  const Text(
                    '📌 Aqui no GitHub, compartilho projetos e experimentos. Fique à vontade para explorar!',
                    style: AppTextStyles.body,
                  ),
                  const SizedBox(height: UIConstants.defaultSpacing),
                  const Text(
                    '📫 Quer trocar uma ideia? Me chama!',
                    style: AppTextStyles.body,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
