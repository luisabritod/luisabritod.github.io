import 'package:flutter/material.dart';
import 'package:luisabritod_portfolio/core/core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Não foi possível abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: AppColors.background,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: UIConstants.defaultPadding),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('/images/profile.png'),
              backgroundColor: AppColors.background,
            ),
            SizedBox(height: UIConstants.defaultPadding),
            Text("Luísa Brito", style: AppTextStyles.heading1),
            SizedBox(height: UIConstants.defaultSpacing),
            Text('Desenvolvedora Flutter', style: AppTextStyles.heading2),
            SizedBox(height: UIConstants.defaultPadding * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _launchURL('https://github.com/luisabritod');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    foregroundColor: AppColors.background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        UIConstants.defaultRadius,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(FontAwesomeIcons.github),
                      SizedBox(width: 8),
                      Text('Github'),
                    ],
                  ),
                ),
                SizedBox(width: UIConstants.defaultPadding),
                ElevatedButton(
                  onPressed: () {
                    _launchURL('https://www.linkedin.com/in/luisabritodias');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    foregroundColor: AppColors.background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        UIConstants.defaultRadius,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(FontAwesomeIcons.linkedin),
                      SizedBox(width: 8),
                      Text('LinkedIn'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
