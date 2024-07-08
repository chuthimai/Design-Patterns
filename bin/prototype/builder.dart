import 'document.dart';

class Builder {
  late String _title;
  late String _author;
  late String _category;
  String _content = '';
  late DateTime _releasedAt;

  String get title => _title;

  String get author => _author;

  DateTime get releasedAt => _releasedAt;

  String get content => _content;

  String get category => _category;

  Builder setTitle(String title) {
    _title = title;
    return this;
  }

  Builder setAuthor(String author) {
    _author = author;
    return this;
  }

  Builder setCategory(String category) {
    _category = category;
    return this;
  }

  Builder addToContent(String content) {
    if (content.trim().isNotEmpty) _content += " $content";
    return this;
  }

  Builder setReleasedAt(DateTime dateTime) {
    _releasedAt = dateTime;
    return this;
  }

  Document build() {
    return Document.builder(this);
  }
}