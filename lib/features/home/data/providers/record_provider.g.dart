// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RecordNotifier)
const recordProvider = RecordNotifierFamily._();

final class RecordNotifierProvider
    extends $AsyncNotifierProvider<RecordNotifier, RecordState> {
  const RecordNotifierProvider._({
    required RecordNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'recordProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$recordNotifierHash();

  @override
  String toString() {
    return r'recordProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RecordNotifier create() => RecordNotifier();

  @override
  bool operator ==(Object other) {
    return other is RecordNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$recordNotifierHash() => r'a51a9357a7140d425d9d627ad438b2a456ea75ab';

final class RecordNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RecordNotifier,
          AsyncValue<RecordState>,
          RecordState,
          FutureOr<RecordState>,
          String
        > {
  const RecordNotifierFamily._()
    : super(
        retry: null,
        name: r'recordProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RecordNotifierProvider call(String scheduleId) =>
      RecordNotifierProvider._(argument: scheduleId, from: this);

  @override
  String toString() => r'recordProvider';
}

abstract class _$RecordNotifier extends $AsyncNotifier<RecordState> {
  late final _$args = ref.$arg as String;
  String get scheduleId => _$args;

  FutureOr<RecordState> build(String scheduleId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<RecordState>, RecordState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<RecordState>, RecordState>,
              AsyncValue<RecordState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
