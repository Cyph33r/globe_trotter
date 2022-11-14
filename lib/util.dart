extension StringUtil on String {
  String toTitleCase() {
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
        toReturn += this[i].toString() + separator;
      } else {
        toReturn += this[i].toString();
      }
    }
    toReturn += postfix;
    return toReturn;
  }
}
