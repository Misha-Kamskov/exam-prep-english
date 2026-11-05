import 'package:flutter/material.dart';

import '../../../../../app/theme/app_typography.dart';

import 'dart:ui';

class OfficialTestCard extends StatelessWidget {
  const OfficialTestCard({
    super.key,
    required this.title,
    required this.testType,
    required this.questions,
    required this.durationMinutes,
    required this.onClick,
  });

  final String title;
  final String testType;
  final int questions;
  final int durationMinutes;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final chart2Color = const HSLColor.fromAHSL(1.0, 203, 0.88, 0.68).toColor();

    return Card(
      elevation: 4,
      shadowColor: Colors.black.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      color: colors.surface,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onClick,
        splashColor: Colors.transparent,
        highlightColor: colors.primary.withValues(alpha: 0.05),
        child: Stack(
          children: [
            Positioned(
              right: -40,
              top: -50,
              child: IgnorePointer(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                  child: Container(
                    width: 170,
                    height: 128,
                    decoration: BoxDecoration(
                      color: chart2Color.withValues(alpha: 0.2),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 10,
              left: -30,
              child: IgnorePointer(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                  child: Container(
                    width: 170,
                    height: 128,
                    decoration: BoxDecoration(
                      color: chart2Color.withValues(alpha: 0.2),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [colors.primary, chart2Color],
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          testType.toUpperCase(),
                          style: TextStyle(
                            color: colors.onPrimary,
                            fontSize: 9.5,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Доступний',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 10.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: AppTypography.cardTitle.copyWith(
                      color: colors.onSurface,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        '$questions завдань',
                        style: AppTypography.cardDescription.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Text(
                          '·',
                          style: AppTypography.cardDescription.copyWith(
                            color: colors.onSurfaceVariant,
                          ),
                        ),
                      ),
                      Text(
                        '$durationMinutes хв',
                        style: AppTypography.cardDescription.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
