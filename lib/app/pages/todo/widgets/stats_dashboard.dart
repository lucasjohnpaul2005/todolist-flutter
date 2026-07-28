import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../theme/app_theme.dart';

class StatsDashboard extends StatelessWidget {
  final int total;
  final int done;
  final int pending;
  final int progressPercent;

  const StatsDashboard({
    super.key,
    required this.total,
    required this.done,
    required this.pending,
    required this.progressPercent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.paper,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.gray200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              _StatCard(number: total, label: 'TOTAL'),
              const SizedBox(width: 12),
              _StatCard(number: done, label: 'DONE'),
              const SizedBox(width: 12),
              _StatCard(number: pending, label: 'PENDING'),
            ],
          ),
          const SizedBox(height: 18),
          const Divider(color: AppColors.gray200, height: 1),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Progress',
                  style: GoogleFonts.inter(color: AppColors.gray600, fontSize: 14)),
              Text('$progressPercent%',
                  style: GoogleFonts.inter(color: AppColors.gray600, fontSize: 14)),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: LinearProgressIndicator(
              value: progressPercent / 100,
              minHeight: 8,
              backgroundColor: AppColors.gray200,
              valueColor: const AlwaysStoppedAnimation(AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final int number;
  final String label;

  const _StatCard({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: AppColors.gray50,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.gray100),
        ),
        child: Column(
          children: [
            Text(
              '$number',
              style: GoogleFonts.fraunces(
                  fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.primaryDark),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: AppColors.gray500,
                  letterSpacing: 0.6),
            ),
          ],
        ),
      ),
    );
  }
}
