enum Environment {prod }

abstract class BuildConfigs {
  String url();
  // String firebaseServerKey();
  Environment get env;

  BuildConfigs._();

  factory BuildConfigs(Environment env) {
    switch (env) {
      case Environment.prod:
        return _ProdBuildConfigs();
    }
  }
}



class _ProdBuildConfigs extends BuildConfigs {
  _ProdBuildConfigs() : super._();

  @override
  Environment get env => Environment.prod;

  @override
  String url() {
    return 'https://api.storerestapi.com/';
  }

  // @override
  // String firebaseServerKey() {
  //   return 'AAAA-FeKWUo:APA91bFWFEsQWyRpqm8-sjCFkPCFZ1Bh9PY2xWZWRdV9rn0E_mlAISeTllOEkrCBrSkDOe4XftH7r-1zMps6uvP2Pyl6uOcarg1p-a17RNIFUbJefnGC7v_NN7EpMaIeue0yzh0Sht3X';
  // }

}