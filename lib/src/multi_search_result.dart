import 'package:collection/collection.dart';
import 'searchable.dart';

class MultiSearchResult {
  final List<Searcheable> results;

  const MultiSearchResult({
    required this.results,
  });

  factory MultiSearchResult.fromMap(Map<String, Object?> json) {
    final list = json['results'] as List<Object?>;
    final parsed = list
        .cast<Map<String, Object?>>()
        .map((e) => Searcheable.createSearchResult(e));
    return MultiSearchResult(results: parsed.toList());
  }
}
