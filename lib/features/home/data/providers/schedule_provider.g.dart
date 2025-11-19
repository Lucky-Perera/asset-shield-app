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
    extends $AsyncNotifierProvider<Schedules, List<ScheduleModel>> {
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

String _$schedulesHash() => r'291cbdcb5fec00c63f558a212bfb2b89d98705f1';

abstract class _$Schedules extends $AsyncNotifier<List<ScheduleModel>> {
  FutureOr<List<ScheduleModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<ScheduleModel>>, List<ScheduleModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ScheduleModel>>, List<ScheduleModel>>,
              AsyncValue<List<ScheduleModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
