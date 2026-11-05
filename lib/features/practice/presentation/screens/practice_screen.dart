import 'package:auto_route/auto_route.dart';
import 'package:exam_prep_english/app/router/app_router.dart';
import 'package:exam_prep_english/features/practice/presentation/widgets/practice_mode_card.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../app/theme/app_typography.dart';

@RoutePage()
class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return SafeArea(
      child: ColoredBox(
        color: theme.scaffoldBackgroundColor,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Практика',
                style: AppTypography.pageTitle.copyWith(
                  color: colors.onSurface,
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 16),
              PracticeModeCard(
                onClick: () {
                  context.router.push(const OfficialTestsRoute());
                },
                icon: LucideIcons.fileText,
                title: 'Офіційні тести НМТ і ЗНО',
                description: 'Реальні варіанти минулих років з офіційними бланками відповідей',
              ),
            ],
          ),
        ),
      ),
    );
  }
}