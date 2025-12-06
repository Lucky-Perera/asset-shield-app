// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChecklistNotifier)
const checklistProvider = ChecklistNotifierFamily._();

final class ChecklistNotifierProvider
    extends $AsyncNotifierProvider<ChecklistNotifier, ChecklistState> {
  const ChecklistNotifierProvider._({
    required ChecklistNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'checklistProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checklistNotifierHash();

  @override
  String toString() {
    return r'checklistProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChecklistNotifier create() => ChecklistNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChecklistNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checklistNotifierHash() => r'dd825a3d443c68bfbfdd41c5f757b7cb5c56841a';

final class ChecklistNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChecklistNotifier,
          AsyncValue<ChecklistState>,
          ChecklistState,
          FutureOr<ChecklistState>,
          String
        > {
  const ChecklistNotifierFamily._()
    : super(
        retry: null,
        name: r'checklistProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChecklistNotifierProvider call(String scheduleId) =>
      ChecklistNotifierProvider._(argument: scheduleId, from: this);

  @override
  String toString() => r'checklistProvider';
}

abstract class _$ChecklistNotifier extends $AsyncNotifier<ChecklistState> {
  late final _$args = ref.$arg as String;
  String get scheduleId => _$args;

  FutureOr<ChecklistState> build(String scheduleId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<ChecklistState>, ChecklistState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ChecklistState>, ChecklistState>,
              AsyncValue<ChecklistState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
