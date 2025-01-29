class ValueFullyService {
  static String getValueFully(String value) {
    List<String> list = value.split(' ');

    return list.length > 1 ?
      list.first.substring(0, 1) + list[1].substring(0, 1)
      : list.first.length > 1 ?
        list.first.substring(0, 2)
        : value;
  }
}