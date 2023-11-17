import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;

class testwidget extends StatelessWidget {
  Future<String> loadAsset() async {
    return await rootBundle.loadString('book_list/tmp.csv');
  }

  @override
  Widget build(BuildContext context) {
    String text = "tasdasmp";
    return FutureBuilder<String>(
      future: loadAsset(),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          text = snapshot.data!;
        }
        return Text(text);
      },
    );
  }
}
