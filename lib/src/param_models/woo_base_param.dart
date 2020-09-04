import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
abstract class WooBaseParam {
  String context;
  int page;
  int perPage;
  String search;
  String after;
  String before;
  List<int> exclude;
  List<int> include;
  int offset;
  WooParamOrder order;
  WooProductParamOrderBy orderBy;
}

enum WooParamOrder { asc, desc }
enum WooProductParamOrderBy { date, id, include, title, slug }
