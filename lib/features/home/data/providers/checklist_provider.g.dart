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
    extends $NotifierProvider<ChecklistNotifier, ChecklistState> {
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChecklistState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChecklistState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChecklistNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checklistNotifierHash() => r'99de4be2378ac928a0a839696fdffe7bceb80dae';

final class ChecklistNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChecklistNotifier,
          ChecklistState,
          ChecklistState,
          ChecklistState,
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

abstract class _$ChecklistNotifier extends $Notifier<ChecklistState> {
  late final _$args = ref.$arg as String;
  String get scheduleId => _$args;

  ChecklistState build(String scheduleId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<ChecklistState, ChecklistState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ChecklistState, ChecklistState>,
              ChecklistState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
