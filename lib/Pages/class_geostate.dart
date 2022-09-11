enum GeoType { square, circle }

class GeoState {
  final double squarewidth;
  final double squareheight;
  final double radius;
  final GeoType type;

  GeoState({
    required this.squarewidth,
    required this.squareheight,
    required this.radius,
    required this.type,
  });

  factory GeoState.square() {
    return GeoState(
      squarewidth: 200,
      squareheight: 50,
      radius: 0,
      type: GeoType.square,
    );
  }

  factory GeoState.ball() {
    return GeoState(
      squarewidth: 70,
      squareheight: 70,
      radius: 100,
      type: GeoType.circle,
    );
  }
}
