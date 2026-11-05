import 'package:auto_route/auto_route.dart';
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
    final textTheme = theme.textTheme;

    return SafeArea(
      child: ColoredBox(
        color: colors.surface,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Практика',
                style: AppTypography.pageTitle.copyWith(
                  color: colors.onSurface,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Оберіть режим підготовки',
                style: AppTypography.pageSubtitle.copyWith(
                  color: colors.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 16),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.fileText,
                title: 'Офіційні тести НМТ і ЗНО',
                description: 'Реальні варіанти минулих років з офіційними бланками відповідей',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.timer,
                title: 'Симуляція іспиту',
                description:
                    'Повний блок англійської мови з таймером і автозавершенням',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.bookOpen,
                title: 'Теорія та правила',
                description:
                    'Граматичні правила з поясненнями та прикладами вживання',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.timer,
                title: 'Симуляція іспиту',
                description:
                'Повний блок англійської мови з таймером і автозавершенням',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.bookOpen,
                title: 'Теорія та правила',
                description:
                'Граматичні правила з поясненнями та прикладами вживання',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.timer,
                title: 'Симуляція іспиту',
                description:
                'Повний блок англійської мови з таймером і автозавершенням',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.bookOpen,
                title: 'Теорія та правила',
                description:
                'Граматичні правила з поясненнями та прикладами вживання',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.timer,
                title: 'Симуляція іспиту',
                description:
                'Повний блок англійської мови з таймером і автозавершенням',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.bookOpen,
                title: 'Теорія та правила',
                description:
                'Граматичні правила з поясненнями та прикладами вживання',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.timer,
                title: 'Симуляція іспиту',
                description:
                'Повний блок англійської мови з таймером і автозавершенням',
              ),
              const SizedBox(height: 10),

              PracticeModeCard(
                onClick: () {},
                icon: LucideIcons.bookOpen,
                title: 'Теорія та правила',
                description:
                'Граматичні правила з поясненнями та прикладами вживання',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
