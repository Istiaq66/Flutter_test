import 'package:flutter/material.dart';

// Define your app colors
abstract class AppColors {
  // Primary colors from your design
  static const Color blue667eea = Color(0xFF667eea);
  static const Color purple764ba2 = Color(0xFF764ba2);

  // Neutral colors
  static const Color neutral050 = Color(0xFFf8fafc);
  static const Color neutral100 = Color(0xFFf1f5f9);
  static const Color neutral200 = Color(0xFFe2e8f0);
  static const Color neutral300 = Color(0xFFcbd5e1);
  static const Color neutral400 = Color(0xFF94a3b8);
  static const Color neutral500 = Color(0xFF64748b);
  static const Color neutral600 = Color(0xFF475569);
  static const Color neutral700 = Color(0xFF334155);
  static const Color neutral800 = Color(0xFF1e293b);
  static const Color neutral900 = Color(0xFF0f172a);
  static const Color neutral950 = Color(0xFF020617);

  // Status colors
  static const Color success = Color(0xFF10b981);
  static const Color warning = Color(0xFFd97706);
  static const Color error = Color(0xFFdc2626);
  static const Color info = Color(0xFF0891b2);

  // Auction specific colors
  static const Color bidActive = Color(0xFF7c3aed);
  static const Color bidWon = Color(0xFF16a34a);
  static const Color bidLost = Color(0xFFdc2626);
  static const Color watchlist = Color(0xFFd97706);
}