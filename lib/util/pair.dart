class Pair<E, F> {
  E first;
  F second;

  Pair(this.first, this.second);

  String toString() => '($first, $second)';

  bool operator ==(other) {
    if (other is! Pair) return false;
    return other.first == first && other.second == second;
  }

  int get hashCode => first.hashCode ^ second.hashCode;
}
