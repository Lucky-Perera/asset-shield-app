import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/theme/app_theme.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/pagination_bar.dart';
import 'package:asset_shield/features/home/ui/widgets/record_status_pill.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_item.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_list.dart';
import 'package:asset_shield/features/home/ui/widgets/search_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('schedule list UI refresh', () {
    testWidgets(
      'renders refreshed screen surface with confirmed typography and statuses',
      (tester) async {
        await _pumpScheduleScreen(tester);
        final scheduleTheme = ScheduleThemeData.light();

        final scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
        expect(scaffold.backgroundColor, scheduleTheme.pageBackground);

        final title = tester.widget<Text>(find.text('Schedules'));
        expect(title.style?.fontFamily, AppFontFamilies.primary);
        expect(title.style?.fontSize, closeTo(16, 0.01));
        expect(title.style?.fontWeight, AppFontWeights.title);
        expect(title.style?.color, scheduleTheme.primaryText);

        expect(find.text('Draft'), findsOneWidget);
        expect(find.text('No record'), findsOneWidget);
        expect(find.text('Pending Approval'), findsOneWidget);
        expect(
          find.descendant(
            of: find.byType(PaginationBar),
            matching: find.text('1'),
          ),
          findsOneWidget,
        );
        expect(
          find.descendant(
            of: find.byType(PaginationBar),
            matching: find.text('2'),
          ),
          findsOneWidget,
        );
      },
    );

    testWidgets('uses 12px card text with updated card colors', (tester) async {
      await _setSurfaceSize(tester);
      final scheduleTheme = ScheduleThemeData.light();
      final schedule = _schedule(
        scheduleName: 'SCH26000011',
        equipmentId: 'cmm7hw4j600jl4h0qt05tqjln',
        status: RecordStatus.draft,
      );

      await tester.pumpWidget(
        _buildTestApp(
          home: Scaffold(
            body: Center(
              child: ScheduleItem(schedule: schedule, onTap: () {}),
            ),
          ),
        ),
      );

      final richText = tester
          .widgetList<RichText>(
            find.descendant(
              of: find.byType(ScheduleItem),
              matching: find.byType(RichText),
            ),
          )
          .firstWhere(
            (widget) => (widget.text as TextSpan).toPlainText().contains(
              'S.I. : SCH26000011',
            ),
          );

      final spans = (richText.text as TextSpan).children!;
      final labelStyle = (spans.first as TextSpan).style!;
      final valueStyle = (spans.last as TextSpan).style!;

      expect(labelStyle.fontFamily, AppFontFamilies.primary);
      expect(labelStyle.fontSize, closeTo(12, 0.01));
      expect(labelStyle.fontWeight, AppFontWeights.label);
      expect(valueStyle.fontSize, closeTo(12, 0.01));
      expect(valueStyle.fontWeight, AppFontWeights.label);

      final cardContainer = tester
          .widgetList<Container>(
            find.descendant(
              of: find.byType(ScheduleItem),
              matching: find.byType(Container),
            ),
          )
          .firstWhere((widget) => widget.decoration is BoxDecoration);
      final cardDecoration = cardContainer.decoration! as BoxDecoration;

      expect(cardDecoration.color, scheduleTheme.cardBackground);
      expect(cardDecoration.border, isNotNull);
      expect(
        (cardDecoration.border! as Border).top.color,
        scheduleTheme.cardBorder,
      );
      expect((cardDecoration.border! as Border).top.width, 1);
      expect(cardDecoration.borderRadius, BorderRadius.circular(8));

      final scheduleRow = tester
          .widgetList<Row>(
            find.descendant(
              of: find.byType(ScheduleItem),
              matching: find.byType(Row),
            ),
          )
          .first;
      expect(scheduleRow.crossAxisAlignment, CrossAxisAlignment.center);
    });

    testWidgets('maps record status pills to the confirmed colors', (
      tester,
    ) async {
      await _setSurfaceSize(tester);
      final scheduleTheme = ScheduleThemeData.light();

      await tester.pumpWidget(
        _buildTestApp(
          home: Scaffold(
            body: Center(
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: const [
                  RecordStatusPill(status: RecordStatus.draft),
                  RecordStatusPill(),
                  RecordStatusPill(status: RecordStatus.pendingApproval),
                  RecordStatusPill(status: RecordStatus.rejected),
                ],
              ),
            ),
          ),
        ),
      );

      final draftText = tester.widget<Text>(find.text('Draft'));
      expect(draftText.style?.fontSize, closeTo(12, 0.01));
      expect(draftText.style?.fontWeight, AppFontWeights.label);
      expect(draftText.style?.color, scheduleTheme.draftTone.foreground);

      expect(_pillColor(tester, 'Draft'), scheduleTheme.draftTone.background);
      expect(
        _pillColor(tester, 'No record'),
        scheduleTheme.noRecordTone.background,
      );
      expect(
        _pillColor(tester, 'Pending Approval'),
        scheduleTheme.pendingTone.background,
      );
      expect(
        _pillColor(tester, 'Rejected'),
        scheduleTheme.rejectedTone.background,
      );
    });

    testWidgets('keeps pagination behavior and refreshed styles', (
      tester,
    ) async {
      await _setSurfaceSize(tester);
      final scheduleTheme = ScheduleThemeData.light();
      int? selectedPage;

      await tester.pumpWidget(
        _buildTestApp(
          home: Align(
            alignment: Alignment.bottomCenter,
            child: PaginationBar(
              currentPage: 1,
              totalPages: 3,
              onPageChanged: (page) => selectedPage = page,
            ),
          ),
        ),
      );

      final activePage = tester.widget<Text>(
        find.descendant(
          of: find.byType(PaginationBar),
          matching: find.text('1'),
        ),
      );
      expect(activePage.style?.fontSize, closeTo(16, 0.01));
      expect(activePage.style?.color, scheduleTheme.cardBackground);

      await tester.tap(find.byIcon(Icons.arrow_forward_ios));
      await tester.pump();
      expect(selectedPage, 2);

      await tester.tap(
        find.descendant(
          of: find.byType(PaginationBar),
          matching: find.text('3'),
        ),
      );
      await tester.pump();
      expect(selectedPage, 3);
    });

    testWidgets('uses only safe-area inset below the pagination controls', (
      tester,
    ) async {
      await _setSurfaceSize(tester);
      final scheduleTheme = ScheduleThemeData.light();
      tester.view.padding = const FakeViewPadding(bottom: 34);
      addTearDown(() => tester.view.resetPadding());

      await tester.pumpWidget(
        _buildTestApp(
          home: AppScaffold(
            body: const SafeArea(bottom: false, child: SizedBox.expand()),
            bottomNavigationBar: PaginationBar(
              currentPage: 1,
              totalPages: 2,
              onPageChanged: (_) {},
            ),
          ),
        ),
      );

      final bottomBarFinder = find.byWidgetPredicate((widget) {
        if (widget is! Container) return false;
        final decoration = widget.decoration;
        return decoration is BoxDecoration &&
            decoration.border is Border &&
            (decoration.border! as Border).top.color ==
                scheduleTheme.cardBorder.withValues(alpha: 0.65);
      });
      final bottomBarContainer = tester.widget<Container>(bottomBarFinder);

      expect(bottomBarContainer.padding, EdgeInsets.fromLTRB(24, 16, 24, 34));
      expect(tester.getRect(bottomBarFinder).bottom, 812);
    });
  });
}

Future<void> _pumpScheduleScreen(WidgetTester tester) async {
  await _setSurfaceSize(tester);
  final controller = TextEditingController();
  addTearDown(controller.dispose);

  await tester.pumpWidget(
    _buildTestApp(
      home: AppScaffold(
        backgroundColor: ScheduleThemeData.light().pageBackground,
        endDrawer: const Drawer(),
        bottomNavigationBar: PaginationBar(
          currentPage: 1,
          totalPages: 2,
          onPageChanged: (_) {},
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              SearchHeader(
                isSearching: false,
                searchController: controller,
                onToggleSearch: () {},
                onRefresh: () {},
                onSearchChanged: (_) {},
              ),
              Expanded(
                child: ScheduleList(
                  schedules: [
                    _schedule(
                      scheduleName: 'SCH26000011',
                      equipmentId: 'cmm7hw4j600jl4h0qt05tqjln',
                      status: RecordStatus.draft,
                    ),
                    _schedule(
                      scheduleName: 'SCH26000010',
                      equipmentId: 'cmm7hgaxs00e24h0q0cy3qhsf',
                    ),
                    _schedule(
                      scheduleName: 'SCH26000005',
                      equipmentId: 'cmm7did1024k4h0q0c62',
                      status: RecordStatus.pendingApproval,
                    ),
                  ],
                  searchQuery: '',
                  onRefresh: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  await tester.pumpAndSettle();
}

Future<void> _setSurfaceSize(WidgetTester tester) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = const Size(375, 812);
  addTearDown(tester.view.resetDevicePixelRatio);
  addTearDown(tester.view.resetPhysicalSize);
}

Widget _buildTestApp({required Widget home}) {
  return ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) {
      return MaterialApp(theme: AppTheme.lightTheme, home: home);
    },
  );
}

Color? _pillColor(WidgetTester tester, String label) {
  final decoratedBox = tester.widget<DecoratedBox>(
    find.ancestor(
      of: find.text(label),
      matching: find.byWidgetPredicate(
        (widget) =>
            widget is DecoratedBox && widget.decoration is BoxDecoration,
      ),
    ),
  );

  return (decoratedBox.decoration as BoxDecoration).color;
}

ScheduleV2Response _schedule({
  required String scheduleName,
  required String equipmentId,
  RecordStatus? status,
}) {
  final timestamp = DateTime(2025, 1, 1);

  return ScheduleV2Response(
    id: scheduleName,
    scheduleName: scheduleName,
    status: 'ACTIVE',
    description: 'Schedule description',
    createdAt: timestamp,
    updatedAt: timestamp,
    dueDate: timestamp,
    inspectionDate: timestamp,
    isRBISchedule: false,
    isRecurring: true,
    inspectionInterval: 30,
    damageMechanism: null,
    inspectionEffectiveness: null,
    aiSummary: null,
    comments: null,
    isDeleted: false,
    scheduleTypeId: 'schedule-type-1',
    operationId: 'operation-1',
    equipmentId: equipmentId,
    createdById: 'user-1',
    approvedById: null,
    reviewedById: null,
    attachments: const [],
    checklistQuestionTemplates: const [],
    inspectionMethods: const [],
    potentialEmergentWorks: const [],
    components: const [],
    approvedBy: null,
    createdBy: null,
    reviewedBy: null,
    equipment: null,
    operation: null,
    scheduleType: null,
    record: status == null
        ? null
        : RecordV2Response(
            id: 'record-$scheduleName',
            createdAt: timestamp,
            updatedAt: timestamp,
            description: 'Record description',
            recordCreatedDate: timestamp,
            status: status,
            inspectionDate: timestamp,
            actionCreated: 'Action',
            comments: null,
            isDeleted: false,
            scheduleId: scheduleName,
            referenceDataId: null,
            equipmentId: equipmentId,
            scheduleTypeId: 'schedule-type-1',
            submittedById: null,
            approvedById: null,
          ),
  );
}
