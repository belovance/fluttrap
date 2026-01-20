import 'package:flutter/material.dart';
import 'package:fluttrap/fluttrap.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            children: [..._fluttrapBackgrounds, ..._fluttrapBorders],
          ),
        ),
      ),
    );
  }

  List<Widget> get _fluttrapBackgrounds {
    return [
          Text(
            "Backgrounds",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(),
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
        .toList();
  }

  List<Widget> get _fluttrapBorders {
    return [
          Text(
            "Borders",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(),
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
        .toList();
  }
}
