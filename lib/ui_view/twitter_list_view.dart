import 'package:covidappkenya/app_theme.dart';
import 'package:covidappkenya/helpers/hex_color.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterListView extends StatefulWidget {
  const TwitterListView(
      {Key key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController mainScreenAnimationController;
  final Animation<dynamic> mainScreenAnimation;
  @override
  _TwitterListViewState createState() => _TwitterListViewState();
}

class _TwitterListViewState extends State<TwitterListView>
    with TickerProviderStateMixin {
  AnimationController animationController;
  List<String> areaListData = <String>[
    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Coat_of_arms_of_Kenya_%28Official%29.svg/1200px-Coat_of_arms_of_Kenya_%28Official%29.svg.png',

  ];

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.mainScreenAnimationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: widget.mainScreenAnimation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - widget.mainScreenAnimation.value), 0.0),
            child: AspectRatio(
              aspectRatio: 0.6,
              child: ListView(
                padding: const EdgeInsets.only(left: 16, right: 16),
                physics: const BouncingScrollPhysics(),
                children: List<Widget>.generate(
                  areaListData.length,
                      (int index) {
                    final int count = areaListData.length;
                    final Animation<double> animation =
                    Tween<double>(begin: 0.0, end: 1.0).animate(
                      CurvedAnimation(
                        parent: animationController,
                        curve: Interval((1 / count) * index, 1.0,
                            curve: Curves.fastOutSlowIn),
                      ),
                    );
                    animationController.forward();
                    return AreaView(
                      imagepath: areaListData[index],
                      animation: animation,
                      animationController: animationController,
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AreaView extends StatelessWidget {
  const AreaView({
    Key key,
    this.imagepath,
    this.animationController,
    this.animation,
  }) : super(key: key);

  final String imagepath;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation.value), 0.0),
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: AppTheme.grey.withOpacity(0.4),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                  onTap: () {},
                  child: Row(
                    children: <Widget>[

                      /*Twitter avatar*/
                      Padding(
                        padding:EdgeInsets.only(left: 10.0,),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(imagepath),
                          backgroundColor: Colors.white12,
                          radius: 30,
                        ),
                      ),//Padding

                      Padding(
                        padding: EdgeInsets.only(left: 10.0,top: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            /*Twitter Name, handler time*/
                            Row(children: <Widget>[

                              Text(
                                "Ministry of health",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: HexColor('000000'),
                                    fontFamily: AppTheme.fontName,
                                    fontWeight: FontWeight.bold
                                ),
                              ),//Text

                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "@MOH_Kenya",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: AppTheme.lightText,
                                    fontFamily: AppTheme.fontName,
                                  ),
                                ),//Text
                              ),//Padding

                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "1h",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: AppTheme.lightText,
                                    fontFamily: AppTheme.fontName,
                                  ),
                                ),//Text
                              ),//Padding

                              Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    FeatherIcons.chevronDown,
                                    size: 16,
                                    color: AppTheme.lightText,
                                  )//Icon
                              ),//Padding

                            ],),//Row

                            /*Twitter text*/
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child:  ListView(
                                children: <Widget>[
                                  Text('')
                                ],
                              )
                            ),



                          ],
                        ),//Column
                      ),//Padding

                    ],
                  ),//Row
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
