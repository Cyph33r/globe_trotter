extension StringUtil on String {
  toTitleCase() {
    if (isEmpty) return "";
    if (length == 1) return toUpperCase();
    return this[0].toUpperCase() + substring(1);
  }
}

extension ListUtil on List {
  String stringify(
      {String prefix = "", String separator = "", String postfix = ""}) {
    var toReturn = prefix;
    for (int i = 0; i < length; i++) {
      if (i != length - 1) {
        toReturn += this[i] + separator;
      } else {
        toReturn += this[i];
      }
    }
    toReturn += postfix;
    return toReturn;
  }
}
