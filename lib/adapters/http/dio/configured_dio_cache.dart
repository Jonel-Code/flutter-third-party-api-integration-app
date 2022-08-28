import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../../paths/path_provider.dart';

class ConfiguredDioCache extends DioCacheInterceptor {
  ConfiguredDioCache()
      : super(
          options: CacheOptions(
            // A default store is required for interceptor.
            store: kIsWeb
                ? HiveCacheStore(null)
                : HiveCacheStore(PathProviderAdapter.path),
            policy: CachePolicy.refreshForceCache,
            hitCacheOnErrorExcept: [401, 403],
            maxStale: const Duration(days: 60),
            priority: CachePriority.high,
            allowPostMethod: false,
          ),
        );
}
