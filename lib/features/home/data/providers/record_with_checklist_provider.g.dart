// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_with_checklist_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RecordWithChecklistNotifier)
const recordWithChecklistProvider = RecordWithChecklistNotifierFamily._();

final class RecordWithChecklistNotifierProvider
    extends
        $AsyncNotifierProvider<
          RecordWithChecklistNotifier,
          RecordWithChecklistState
        > {
  const RecordWithChecklistNotifierProvider._({
    required RecordWithChecklistNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'recordWithChecklistProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$recordWithChecklistNotifierHash();

  @override
  String toString() {
    return r'recordWithChecklistProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RecordWithChecklistNotifier create() => RecordWithChecklistNotifier();

  @override
  bool operator ==(Object other) {
    return other is RecordWithChecklistNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$recordWithChecklistNotifierHash() =>
    r'2cbba1fed4d1bdd9ddb4e3653ef5799d66536dfc';

final class RecordWithChecklistNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RecordWithChecklistNotifier,
          AsyncValue<RecordWithChecklistState>,
          RecordWithChecklistState,
          FutureOr<RecordWithChecklistState>,
          String
        > {
  const RecordWithChecklistNotifierFamily._()
    : super(
        retry: null,
        name: r'recordWithChecklistProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RecordWithChecklistNotifierProvider call(String scheduleId) =>
      RecordWithChecklistNotifierProvider._(argument: scheduleId, from: this);

  @override
  String toString() => r'recordWithChecklistProvider';
}

abstract class _$RecordWithChecklistNotifier
    extends $AsyncNotifier<RecordWithChecklistState> {
  late final _$args = ref.$arg as String;
  String get scheduleId => _$args;

  FutureOr<RecordWithChecklistState> build(String scheduleId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<RecordWithChecklistState>,
              RecordWithChecklistState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RecordWithChecklistState>,
                RecordWithChecklistState
              >,
              AsyncValue<RecordWithChecklistState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
