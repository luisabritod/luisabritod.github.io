import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:luisabritod_portfolio/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class ContatoSection extends StatelessWidget {
  const ContatoSection({super.key});

  Future<void> _lauchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Não foi possível abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Vamos conversar?',
              style: AppTextStyles.title.copyWith(color: Colors.white),
            ),
            SizedBox(height: UIConstants.defaultSpacing),
            Text(
              'luisabritodev@gmail.com',
              style: AppTextStyles.body.copyWith(color: Colors.white70),
            ),
            SizedBox(height: UIConstants.defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _lauchURL('https://github.com/luisabritod');
                  },
                  icon: FaIcon(FontAwesomeIcons.github, color: Colors.white),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    _lauchURL('https://www.linkedin.com/in/luisabritodias');
                  },
                  icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
