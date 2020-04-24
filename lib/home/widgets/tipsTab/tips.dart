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
        String _content = coronaDetailedInfo[index]['content'];
//        String _content = coronaDetailedInfo[index]['content'];
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
              child: ReusableCardWithImageAsset(
                title: _title,
                path: _path,
              ),
              onTap: () =>
                  _handleCardTap(context, index, _title, _path, _content)),
        );
      }),
    );
  }

  void _handleCardTap(BuildContext context, int index, String _title,
      String _path, String _content) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      switch (index) {
        case (0):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: _content,
          );
          break;
        case (1):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: _content,
          );
          break;
        case (2):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: _content,
          );
          break;
        case (3):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: _content,
          );
          break;
        case (4):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: _content,
          );
          break;
        case (5):
          return ReUsablePageTitleContent(
            title: _title,
            imagePath: _path,
            content: _content,
          );
          break;
      }
      return null;
    }));
  }
}
