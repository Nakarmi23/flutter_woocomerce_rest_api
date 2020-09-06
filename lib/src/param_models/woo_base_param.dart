import 'package:json_annotation/json_annotation.dart';

abstract class WooBaseParam<OB> {
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
  OB orderBy;
}

enum WooParamOrder { asc, desc }
