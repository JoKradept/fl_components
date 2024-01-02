class Punto {
  int x;
  int y;

  Punto({required this.x, required this.y});

  Map<String, dynamic> toMap() {
    return {'id': '', 'x': x, 'y': y};
  }
}
