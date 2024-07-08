import 'document.dart';

void main() {
  final Document document = Document()
      .builder()
      .setTitle("Master Design Patterns")
      .setAuthor("Dzung")
      .setCategory("Technology")
      .addToContent("Hello")
      .addToContent("World")
      .setReleasedAt(DateTime.now())
      .build();

  print(document);
}
