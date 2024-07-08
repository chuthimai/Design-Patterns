import 'builder.dart';
import 'prototype.dart';

class Document implements Prototype {
  late String _title;
  late String _author;
  late String _category;
  late String _content;
  late DateTime _releasedAt;

  @override
  String toString() {
    return "Title: $_title"
        "\nAuthor: $_author"
        "\nCategory: $_category"
        "\nContent: $_content"
        "\nReleased at: ${_releasedAt.year}";
  }

  Document();

  Document.builder(Builder builder) {
    _title = builder.title;
    _author = builder.author;
    _category = builder.category;
    _content = builder.content;
    _releasedAt = builder.releasedAt;
  }

  Builder builder() {
    return Builder();
  }

  @override
  Object clone() {
    return builder()
        .setTitle(_title)
        .setAuthor(_author)
        .setCategory(_category)
        .addToContent(_content)
        .setReleasedAt(_releasedAt)
        .build();
  }
}
