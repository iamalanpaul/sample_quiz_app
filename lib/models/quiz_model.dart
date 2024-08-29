class Quiz {
  const Quiz(this.text, this.qA);
  final String text;
  final List<String> qA;

  List<String> shuffle() {
    //since shuffle() changes orginal list a new list should be made
    final shuffleList = List.of(qA);
    shuffleList.shuffle();
    return shuffleList;
  }
}
