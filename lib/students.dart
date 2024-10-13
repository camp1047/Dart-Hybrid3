class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
    // this sorts the list of maps by the value of the field passed in as an argument
  }

  void output() {
    for (var person in people) {
      print('First Name: ${person['first']}, Last Name: ${person['last']}, Email: ${person['email']}');
    }
    // this prints out the values of the keys in the map
  }

  void plus(Map<String, String> person) {
    people.add(person);
    // this adds a new map to the list of maps
  }

  void remove(String field, String value) {
    people.removeWhere((person) => person[field] == value);
    // this removes a map from the list of maps based on the value of the field passed in as an argument
  }
}
