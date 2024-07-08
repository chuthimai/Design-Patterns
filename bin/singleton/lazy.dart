class Singleton {
  static Singleton? _instance;

  // private constructor
  Singleton._internal() {
    print('Creating an instance of Singleton');
  }

  // lazy instantiation
  static Singleton? get instance {
    _instance ??= Singleton._internal();
    return _instance;
  }
}

void main() {
  var s = Singleton.instance;
  print(s);
}