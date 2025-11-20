// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Schedules)
const schedulesProvider = SchedulesProvider._();

final class SchedulesProvider
    extends $AsyncNotifierProvider<Schedules, List<Schedule>> {
  const SchedulesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'schedulesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$schedulesHash();

  @$internal
  @override
  Schedules create() => Schedules();
}

String _$schedulesHash() => r'b4939dd19173760fe94d25ca91193f2aa89f6e40';

abstract class _$Schedules extends $AsyncNotifier<List<Schedule>> {
  FutureOr<List<Schedule>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Schedule>>, List<Schedule>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Schedule>>, List<Schedule>>,
              AsyncValue<List<Schedule>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
