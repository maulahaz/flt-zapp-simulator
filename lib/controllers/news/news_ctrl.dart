import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../datasources/remote/news_remote_dts.dart';
import '../../models/x_models.dart';

final newsProvider = FutureProvider<List<NewsModel>>((ref) async {
  return ref.watch(newsApiProvider).fetchNewsData();
});