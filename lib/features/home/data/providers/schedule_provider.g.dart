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
    extends $AsyncNotifierProvider<Schedules, ScheduleState> {
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

String _$schedulesHash() => r'e584e87432890fe2b154f2aba5b5252b4fbf681b';

abstract class _$Schedules extends $AsyncNotifier<ScheduleState> {
  FutureOr<ScheduleState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ScheduleState>, ScheduleState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ScheduleState>, ScheduleState>,
              AsyncValue<ScheduleState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
