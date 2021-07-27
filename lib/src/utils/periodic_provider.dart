import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../data/config/periodic_config.dart';
import '../data/periodic_state.dart';

///General provoider for general state.
final periodicProvider = StateNotifierProvider((ref) => PeriodicState());

///Configuration provider.
final configProvider = ScopedProvider<PeriodicConfig>((ref) => throw UnimplementedError());
