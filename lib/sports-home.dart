import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportsapp/elements.dart';
import 'package:sportsapp/sizeconfig.dart';
import 'package:sportsapp/sports-details.dart';
import 'package:sportsapp/style.dart';

class SportsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Style.backgroundColor,
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: SizeConfig.width,
              height: SizeConfig.width! * 0.25,
              margin: EdgeInsets.only(bottom: 30),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemExtent: SizeConfig.width! * 0.25,
                  itemBuilder: (ctx, i) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Style.backgroundColor2,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            games[i].path,
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            games[i].game,
                            style: TextStyle(color: Style.appWhite),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Upcoming Markets",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.w700, color: Style.appWhite),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                CupertinoPageRoute(builder: (_) => SportsDetails()),
              ),
              child: Container(
                width: SizeConfig.width,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff2f323c),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        left: -100,
                        top: 0,
                        child: SvgPicture.asset(
                          "assets/arsenal.svg",
                          color: Colors.white.withOpacity(0.02),
                          width: 250,
                        )),
                    Positioned(
                        right: -100,
                        top: 0,
                        child: SvgPicture.asset(
                          "assets/manchester-united.svg",
                          color: Colors.white.withOpacity(0.02),
                          width: 250,
                        )),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2, color: Style.appGreen),
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xff282b35),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Wrap(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Style.appGreen,
                                  radius: 5,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "LIVE",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        color: Style.appGreen,
                                        letterSpacing: 2,
                                      ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/arsenal.svg",
                                    height: 80,
                                    width: 80,
                                    color: Style.appWhite,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Arsenal",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          color:
                                              Style.appWhite.withOpacity(0.7),
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "2",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(
                                              color: Style.appWhite,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        ":",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(
                                              color: Style.appWhite
                                                  .withOpacity(0.7),
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(
                                              color: Style.appWhite,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "72'",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: Style.appGreen),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/manchester-united.svg",
                                    height: 80,
                                    width: 80,
                                    color: Style.appWhite,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Man United",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          color:
                                              Style.appWhite.withOpacity(0.7),
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Scoreboard(first: "1", second: " 2.34"),
                              Scoreboard(first: "X", second: " 5.40"),
                              Scoreboard(first: "2", second: " 3.14"),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            News(
                title: "Barcelona Vs Real Madrid",
                subtitle: "Saturday,08 Aug 2021. 2:30 AM"),
            News(
                title: "Arsenal Vs Aston Villa",
                subtitle: "Thursday,02 Sep 2021. 5:00 PM"),
            News(
                title: "Barcelona Vs Real Madrid",
                subtitle: "Saturday,08 Aug 2021. 2:30 AM"),
            News(
                title: "Man City Vs Liverpool",
                subtitle: "Thursday,02 Sep 2021. 5:00 PM"),
            News(
                title: "Barcelona Vs Bayern",
                subtitle: "Saturday,08 Aug 2021. 2:30 AM"),
            News(
                title: "Arsenal Vs Aston Villa",
                subtitle: "Thursday,02 Sep 2021. 5:00 PM"),
            News(
                title: "Barcelona Vs Real Madrid",
                subtitle: "Saturday,08 Aug 2021. 2:30 AM"),
            News(
                title: "Arsenal Vs Aston Villa",
                subtitle: "Thursday,02 Sep 2021. 5:00 PM"),
          ],
        ),
      ),
    );
  }
}

class News extends StatelessWidget {
  final String title, subtitle;
  const News({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Style.appWhite.withOpacity(0.7),
            ),
      ),
      subtitle: Text(subtitle,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Style.appWhite.withOpacity(0.5),
              )),
      trailing: Icon(
        Icons.clear,
        color: Style.appWhite.withOpacity(0.7),
      ),
    );
  }
}

class Scoreboard extends StatelessWidget {
  final String first, second;
  const Scoreboard({Key? key, required this.first, required this.second})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Style.backgroundColor3,
        ),
        child: Text.rich(TextSpan(
            text: first,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.white,
                ),
            children: [
              TextSpan(
                  text: second,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white.withOpacity(0.5)))
            ])),
      ),
    );
  }
}
