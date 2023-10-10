class Students {
  List<Map<String, String>> people;

  Students(this.people);

  sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void output() {
    for (var student in people) {
      print(student);
    }
  }

  plus(Map<String, String> person) {
    people.add(person);
  }

  remove(String field) {
    people.removeWhere((student) => student.containsKey(field));
  }
}
