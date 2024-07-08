abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print('Draw Circle');
  }
}

class Square implements Shape {
  @override
  void draw() {
    print('Draw Square');
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print('Draw Rectangle');
  }
}

class NullShape implements Shape {
  @override
  void draw() {
    print('Null Shape');
  }

}

class ShapeFactory {
  Shape? getShape(String shapeType) {
    if (shapeType.toLowerCase() == 'circle') return Circle();
    if (shapeType.toLowerCase() == 'square') return Square();
    if (shapeType.toLowerCase() == 'rectangle') return Rectangle();
    return NullShape();
  }
}

void main() {
  ShapeFactory shapeFactory = ShapeFactory();
  Shape? shape1 = shapeFactory.getShape('Circle');
  shape1!.draw();
  Shape? shape2 = shapeFactory.getShape('Square');
  shape2!.draw();
}