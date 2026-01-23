import 'package:flutter/material.dart';
import 'package:fluttrap/fluttrap.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Widget get _fluttrapBackgrounds => ListView(
    children:
        [
              FluttrapBackground.primary(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Primary", style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Secondary", style: TextStyle(color: Colors.white)),
              ).bgSecondary,

              FluttrapBackground.success(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Success", style: TextStyle(color: Colors.white)),
                ),
              ),

              FluttrapBackground.danger(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Danger", style: TextStyle(color: Colors.white)),
                ),
              ),
              FluttrapBackground.warning(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Warning"),
                ),
              ),

              FluttrapBackground.info(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Info"),
                ),
              ),
              FluttrapBackground.light(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Light"),
                ),
              ),
              FluttrapBackground.dark(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Dark", style: TextStyle(color: Colors.white)),
                ),
              ),
              FluttrapBackground.white(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("White"),
                ),
              ),
              FluttrapBackground.black(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Black", style: TextStyle(color: Colors.white)),
                ),
              ),
              FluttrapBackground.transparent(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Transparent"),
                ),
              ),
            ]
            .map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: e,
              ),
            )
            .toList(),
  );

  Widget get _fluttrapBorders => ListView(
    children:
        [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Primary"),
              ).border1.borderPrimary.rounded1,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Secondary"),
              ).border2.borderSecondary.rounded2,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Success"),
              ).border3.borderSuccess.rounded3,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Info"),
              ).border4.borderInfo.rounded4,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Warning"),
              ).border5.borderWarning.rounded5,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Danger"),
              ).borderDanger.roundedPill,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Light"),
              ).borderLight.roundedCircle,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Dark"),
              ).borderDark,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("White"),
              ).borderWhite,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Black"),
              ).borderBlack,
            ]
            .map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: e,
              ),
            )
            .toList(),
  );

  Widget get _fluttrapTextColors => ListView(
    children:
        [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Primary"),
              ).textPrimary,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Secondary"),
              ).textSecondary,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Success"),
              ).textSuccess,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Info"),
              ).textInfo,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Warning"),
              ).textWarning,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Danger"),
              ).textDanger,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Light"),
              ).textLight.bgDark,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Dark"),
              ).textDark,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("White"),
              ).textWhite.bgBlack,
            ]
            .map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: e,
              ),
            )
            .toList(),
  );

  Widget get _fluttrapOpacity => ListView(
    children:
        [
              FluttrapOpacity.opacity100(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("100%"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("75%"),
              ).opacity75,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("50%"),
              ).opacity50,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("25%"),
              ).opacity25,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("0%"),
              ).opacity(0),
            ]
            .map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: e,
              ),
            )
            .toList(),
  );

  Widget get _fluttrapShadows => ListView(
    children:
        [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("No Shadow"),
              ).bgLight,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Small Shadow"),
              ).bgLight.shadowSm,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Regular Shadow"),
              ).bgLight.shadow,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Large Shadow"),
              ).bgLight.shadowLg,
            ]
            .map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: e,
              ),
            )
            .toList(),
  );

  Widget get _fluttrapSizing => ListView(
    children:
        [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Width 25%"),
                  ).bgPrimary.w25,
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Width 50%"),
                  ).bgPrimary.w50,
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Width 75%"),
                  ).bgPrimary.w75,
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Width 100%"),
              ).bgPrimary.w100,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Height 25%"),
              ).bgPrimary.h25,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Height 50%"),
              ).bgPrimary.h50,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Height 75%"),
              ).bgPrimary.h75,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Height 100%"),
              ).bgPrimary.h100,
            ]
            .map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: e,
              ),
            )
            .toList(),
  );

  Widget get _fluttrapSpacing => ListView(
    children:
        [
              ColoredBox(
                color: Fluttrap.colors.secondary,
                child: Text(
                  "Padding 1 - Margin 1",
                  textAlign: TextAlign.center,
                ).borderBlack.p1.m1.bgPrimary,
              ),
              ColoredBox(
                color: Fluttrap.colors.secondary,
                child: Text(
                  "Padding 2 - Margin 2",
                  textAlign: TextAlign.center,
                ).borderBlack.p2.m2.bgPrimary,
              ),
              ColoredBox(
                color: Fluttrap.colors.secondary,
                child: Text(
                  "Padding 3 - Margin 3",
                  textAlign: TextAlign.center,
                ).borderBlack.p3.m3.bgPrimary,
              ),
              ColoredBox(
                color: Fluttrap.colors.secondary,
                child: Text(
                  "Padding 4 - Margin 4",
                  textAlign: TextAlign.center,
                ).borderBlack.p4.m4.bgPrimary,
              ),
              ColoredBox(
                color: Fluttrap.colors.secondary,
                child: Text(
                  "Padding 5 - Margin 5",
                  textAlign: TextAlign.center,
                ).borderBlack.p5.m5.bgPrimary,
              ),
            ]
            .map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: e,
              ),
            )
            .toList(),
  );

  Map<String, Widget> get _tabs => {
    "Backgrounds": _fluttrapBackgrounds,
    "Borders": _fluttrapBorders,
    "Text Colors": _fluttrapTextColors,
    "Opacity": _fluttrapOpacity,
    "Shadows": _fluttrapShadows,
    "Sizing": _fluttrapSizing,
    "Spacing": _fluttrapSpacing,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Fluttrap Demo'), centerTitle: true),
        body: DefaultTabController(
          length: _tabs.length,
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                tabs: _tabs.keys.map((title) => Tab(text: title)).toList(),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TabBarView(children: _tabs.values.toList()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
