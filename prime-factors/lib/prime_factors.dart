class PrimeFactors {
  List<int> factors(int input) {
    int wip = input;
    List<int> factors = [];
    for (var i = 2; i <= input; i++) {
      if (wip % i == 0) {
        wip ~/= i;
        factors.add(i);
      }
    }
    return factors;
  }
}
