import 'dart:math';

class Position {
  int x;
  int y;

  Position(this.x, this.y);

  Position.zero() : this(0, 0);

  Position.one() : this(1, 1);

  double distanceTo(Position other) {
    var dx = other.x - x;
    var dy = other.y - y;
    return sqrt(dx * dx + dy * dy);
  }

  Position divideBy(num num) {
    return Position(x ~/ num, y ~/ num);
  }
}

main() {
  final Position p1 = Position.one();

  final p = Position(-5, 6);

  print(p1.distanceTo(p));

  final p0 = Position.zero();

  p0.divideBy(0);
}
