import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Key global para mostrar diálogos desde cualquier punto (incl. errores async).
final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

bool _isShowingAppError = false;
DateTime? _lastAppErrorAt;

/// Instala handlers globales: framework, async y ErrorWidget.
void installGlobalErrorHandlers() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint('[GlobalError] FlutterError: ${details.exceptionAsString()}');

    // Overflows y errores "silent" no deben bloquear al usuario con un diálogo
    final msg = details.exceptionAsString();
    if (details.silent ||
        msg.contains('A RenderFlex overflowed') ||
        msg.contains('overflowed by')) {
      return;
    }

    _scheduleShowError(
      message: 'Ocurrió un error inesperado. Por favor intenta de nuevo.',
      details: details.exceptionAsString(),
    );
  };

  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint('[GlobalError] PlatformDispatcher: $error\n$stack');
    _scheduleShowError(
      message: 'Ocurrió un error inesperado. Por favor intenta de nuevo.',
      details: error.toString(),
    );
    // true = error manejado (evita crash duro en release cuando es posible)
    return true;
  };

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.error_outline, color: Colors.red, size: 48),
                const SizedBox(height: 16),
                const Text(
                  'Error',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Algo salió mal al mostrar esta pantalla.\nPor favor intenta de nuevo o regresa atrás.',
                  textAlign: TextAlign.center,
                ),
                if (kDebugMode) ...[
                  const SizedBox(height: 12),
                  Text(
                    details.exceptionAsString(),
                    style: const TextStyle(fontSize: 11, color: Colors.black54),
                    textAlign: TextAlign.center,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  };
}

void _scheduleShowError({required String message, String? details}) {
  // Evitar spam de diálogos
  final now = DateTime.now();
  if (_lastAppErrorAt != null &&
      now.difference(_lastAppErrorAt!) < const Duration(seconds: 2)) {
    return;
  }
  _lastAppErrorAt = now;

  WidgetsBinding.instance.addPostFrameCallback((_) {
    showAppError(message: message, details: details);
  });
}

/// Muestra un diálogo de error cerrable (OK). Usar en catch locales o vía handlers.
Future<void> showAppError({
  String message = 'Please try again',
  String? details,
  BuildContext? context,
}) async {
  if (_isShowingAppError) return;

  final ctx = context ?? appNavigatorKey.currentContext;
  if (ctx == null) {
    debugPrint('[GlobalError] No context to show dialog: $message');
    return;
  }

  _isShowingAppError = true;
  try {
    await showDialog<void>(
      context: ctx,
      barrierDismissible: true,
      builder: (dialogCtx) {
        return Theme(
          data: ThemeData(colorScheme: const ColorScheme.light()),
          child: CupertinoAlertDialog(
            title: const Text('Error'),
            content: Column(
              children: [
                const SizedBox(height: 8),
                Text(message),
                if (kDebugMode && details != null && details.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    details,
                    style: const TextStyle(fontSize: 11, color: Colors.black54),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  if (Navigator.of(dialogCtx).canPop()) {
                    Navigator.of(dialogCtx).pop();
                  }
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  } finally {
    _isShowingAppError = false;
  }
}
