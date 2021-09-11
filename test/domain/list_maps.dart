//https://stackoverflow.com/questions/68190242/flutter-qs-unhandled-exception-type-internallinkedhashmapstring-dynamic/68190651#68190651
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Iterate a map", () {
    final Map map = {"ej": 1, "ej2": 2};

    // for(final data in map){
    //
    // }
  });

  test("Json", () {
    final Map<String, dynamic> jsonData = {
      "RC": "00",
      "CMD": "PNLContent",
      "VALUES": [
        {
          "dt_status": "SUCCESS",
          "dt_name": "Caramel",
          "dt_trs": "0000000001",
          "dt_GTag": "00002",
          "dt_GAd": "Macchiato",
          "dt_Gsum": "22500",
          "dt_Urs": "22212",
        }
      ],
    };

    final values = jsonData["VALUES"];
    final List<PNLDATA> pnldata = [];
    for (final Map data in values) {
      pnldata.add(PNLDATA(
          data['dt_name'] as String,
          data['dt_trs'] as String,
          data['dt_GTag'] as String,
          data['dt_GAd'] as String,
          data["dt_Gsum"] as String));
    }

    expect(pnldata.length, 1);
  });
}

class PNLDATA {
  final String dt_name;
  final String dt_trs;
  final String dt_GTag;
  final String dt_GAd;
  final String dt_Gsum;

  PNLDATA(
      this.dt_name, this.dt_trs, this.dt_GTag, this.dt_GAd, this.dt_Gsum);
}
