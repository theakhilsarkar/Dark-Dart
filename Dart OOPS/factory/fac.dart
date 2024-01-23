class Shape {
  late int length;
  late int width;
  late int area;

  Shape._internal(this.length, this.width) {
    area = length * width;
    print(area);
  }

  factory Shape({required int length, required int width}) {
    return Shape._internal(length, width);
  }
}
