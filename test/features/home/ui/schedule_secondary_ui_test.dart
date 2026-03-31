import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/theme/app_theme.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/checklist/checklist_section.dart';
import 'package:asset_shield/features/home/ui/widgets/home_drawer.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/inspection_methods_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/potential_emergent_works_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('schedule secondary screens', () {
    testWidgets('home drawer renders themed menu surface', (tester) async {
      await _setSurfaceSize(tester);
      final scheduleTheme = ScheduleThemeData.light();

      await tester.pumpWidget(
        _buildTestApp(home: const Scaffold(body: HomeDrawer())),
      );

      final drawer = tester.widget<Drawer>(find.byType(Drawer));
      expect(drawer.backgroundColor, scheduleTheme.cardBackground);
      expect(drawer.width, closeTo(296.8657531738281, 0.01));

      final headerFinder = find.byWidgetPredicate((widget) {
        if (widget is! Container) return false;
        final decoration = widget.decoration;
        return decoration is BoxDecoration &&
            decoration.color == scheduleTheme.drawerHeaderBackground;
      });
      final header = tester.widget<Container>(headerFinder);
      expect(tester.getSize(headerFinder).height, closeTo(186, 0.01));
      expect(
        header.padding,
        EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      );

      final menuText = tester.widget<Text>(find.text('Menu'));
      expect(menuText.style?.fontFamily, AppFontFamilies.primary);
      expect(menuText.style?.fontSize, closeTo(23, 0.01));
      expect(menuText.style?.fontWeight, AppFontWeights.title);
      expect(find.text('Log Out'), findsOneWidget);
    });

    testWidgets('detail cards render inspection and emergent work sections', (
      tester,
    ) async {
      await _setSurfaceSize(tester);
      final schedule = _detailSchedule();

      await tester.pumpWidget(
        _buildTestApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ScheduleInfoCard(schedule: schedule),
                  InspectionMethodsSection(
                    inspectionMethods: schedule.inspectionMethods,
                  ),
                  PotentialEmergentWorksSection(
                    potentialEmergentWorks: schedule.potentialEmergentWorks,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      expect(find.text('Schedule Information'), findsOneWidget);
      expect(find.text('Inspection Methods'), findsOneWidget);
      expect(find.text('Potential Emergent Works'), findsOneWidget);
      expect(find.text('#1'), findsNWidgets(2));
      expect(find.text('PAUT'), findsOneWidget);
      expect(find.text('Likely'), findsOneWidget);
      expect(find.text('Deaerator Storage Tank'), findsOneWidget);
    });

    testWidgets(
      'checklist sections expand internal content with selected state',
      (tester) async {
        await _setSurfaceSize(tester);

        await tester.pumpWidget(
          _buildTestApp(
            home: Scaffold(
              body: ChecklistSections(
                questions: [
                  ChecklistQuestionTemplate(
                    id: 'q2',
                    inspectionType: 'INTERNAL',
                    question: 'Q2',
                    helpText: null,
                    responseType: ResponseType.goodFairPoorNA,
                    isDeleted: false,
                    scheduleId: 'schedule-1',
                    checklistAnswer: null,
                  ),
                  ChecklistQuestionTemplate(
                    id: 'q3',
                    inspectionType: 'INTERNAL',
                    question: 'Q3?',
                    helpText: null,
                    responseType: ResponseType.goodFairPoorNA,
                    isDeleted: false,
                    scheduleId: 'schedule-1',
                    checklistAnswer: null,
                  ),
                  ChecklistQuestionTemplate(
                    id: 'q4',
                    inspectionType: 'EXTERNAL',
                    question: 'Q4',
                    helpText: null,
                    responseType: ResponseType.yesNo,
                    isDeleted: false,
                    scheduleId: 'schedule-1',
                    checklistAnswer: null,
                  ),
                ],
                initialValues: const {
                  'q2': {'value': 'Poor', 'note': 'Existing note'},
                },
                readOnly: false,
              ),
            ),
          ),
        );

        expect(find.text('Internal'), findsOneWidget);
        expect(find.text('External'), findsOneWidget);
        expect(find.text('Q2'), findsOneWidget);
        expect(find.text('Media'), findsOneWidget);
        final selectedPoor = tester.widget<Text>(find.text('Poor').first);
        expect(
          selectedPoor.style?.color,
          ScheduleThemeData.light().chipSelectedText,
        );
      },
    );
  });
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

ScheduleV2Response _detailSchedule() {
  final timestamp = DateTime(2026, 3, 24);

  return ScheduleV2Response(
    id: 'schedule-1',
    scheduleName: 'SCH26000011',
    status: 'PUBLISHED',
    description: 'GTB YUTVGH GVYUKB',
    createdAt: timestamp,
    updatedAt: timestamp,
    dueDate: timestamp,
    inspectionDate: timestamp,
    isRBISchedule: false,
    isRecurring: true,
    inspectionInterval: 30,
    damageMechanism: 'Damage mechanism data not available',
    inspectionEffectiveness: 'Inspection effectiveness data not available',
    aiSummary: null,
    comments: null,
    isDeleted: false,
    scheduleTypeId: 'schedule-type-1',
    operationId: 'operation-1',
    equipmentId: 'equipment-1',
    createdById: 'user-1',
    approvedById: null,
    reviewedById: null,
    attachments: const [],
    checklistQuestionTemplates: const [],
    inspectionMethods: [
      InspectionMethodV2(
        id: 'method-1',
        createdAt: timestamp,
        updatedAt: timestamp,
        scheduleV2Id: 'schedule-1',
        methodId: 'ref-1',
        method: ReferenceData(
          id: 'ref-1',
          createdAt: timestamp,
          updatedAt: timestamp,
          category: 'inspection-method',
          value: 'PAUT',
          displayValue: null,
        ),
        specialAccessId: 'ref-2',
        specialAccess: ReferenceData(
          id: 'ref-2',
          createdAt: timestamp,
          updatedAt: timestamp,
          category: 'special-access',
          value: 'Scaffolding',
          displayValue: null,
        ),
        insulationRemovalId: 'ref-3',
        insulationRemoval: ReferenceData(
          id: 'ref-3',
          createdAt: timestamp,
          updatedAt: timestamp,
          category: 'insulation-removal',
          value: 'Hot Insulation',
          displayValue: null,
        ),
        cleaningId: 'ref-4',
        cleaning: ReferenceData(
          id: 'ref-4',
          createdAt: timestamp,
          updatedAt: timestamp,
          category: 'cleaning',
          value: 'Air Blow',
          displayValue: null,
        ),
        location: 'N/A',
        notes: null,
        isDeleted: false,
      ),
    ],
    potentialEmergentWorks: [
      PotentialEmergentWorkV2(
        id: 'work-1',
        createdAt: timestamp,
        updatedAt: timestamp,
        scheduleV2Id: 'schedule-1',
        potentialEmergentWorkId: 'ref-5',
        potentialEmergentWork: ReferenceData(
          id: 'ref-5',
          createdAt: timestamp,
          updatedAt: timestamp,
          category: 'emergent-work',
          value: 'Further removal of insulation',
          displayValue: null,
        ),
        likelihoodId: 'ref-6',
        likelihood: ReferenceData(
          id: 'ref-6',
          createdAt: timestamp,
          updatedAt: timestamp,
          category: 'likelihood',
          value: 'Likely',
          displayValue: null,
        ),
        notes: null,
        isDeleted: false,
      ),
    ],
    components: const [],
    approvedBy: null,
    createdBy: null,
    reviewedBy: null,
    equipment: Equipment(
      id: 'equipment-1',
      createdAt: timestamp,
      updatedAt: timestamp,
      equipmentId: 'EQUIP-1',
      name: 'Deaerator Storage Tank',
      cmmsSystem: 'CMMS',
      isCorrosionLoopAvailable: false,
      corrosionLoopId: null,
      isDeleted: false,
    ),
    operation: null,
    scheduleType: null,
    record: null,
  );
}
