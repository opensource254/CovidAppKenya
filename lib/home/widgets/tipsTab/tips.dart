import 'package:flutter/material.dart';

import '../../widgets/reUsables/re-usablePage.dart';
import '../../widgets/reUsables/reusableCardWithImageAsset.dart';
import 'store/constants.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: coronaDetailedInfo.length,
      itemBuilder: ((BuildContext context, index) {
        String _title = coronaDetailedInfo[index]['title'];
        String _path = coronaDetailedInfo[index]['path'];
//        String _content = coronaDetailedInfo[index]['content'];
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
              child: ReusableCardWithImageAsset(
                title: _title,
                path: _path,
              ),
              onTap: () => _handleCardTap(context, index, _title, _path)),
        );
      }),
    );
  }

  void _handleCardTap(
      BuildContext context, int index, String _title, String _path) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      switch (index) {
        case (0):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: 'What is Rona',
          );
          break;
        case (1):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: 'Symptoms',
          );
          break;
        case (2):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: 'Transmission',
          );
          break;
        case (3):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: 'Prevention',
          );
          break;
        case (4):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: 'Mask',
          );
          break;
        case (5):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: 'Fake News',
          );
          break;
      }
      return null;
    }));
  }
}
