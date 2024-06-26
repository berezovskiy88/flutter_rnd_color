import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_rnd_color/src/core/localization/generated/l10n.dart';

/// {@template localization}
/// Localization class which is used to localize app.
/// This class provides handy methods and tools.
/// {@endtemplate}
final class Localization extends GeneratedLocalization {
  /// {@macro localization}
  static Localization? _current;

  /// Locale which is currently used.
  final Locale locale;

  /// {@macro localization}
  static const localizationDelegate = _LocalizationDelegate(
    AppLocalizationDelegate(),
  );

  /// List of supported locales.
  static List<Locale> get supportedLocales =>
      const AppLocalizationDelegate().supportedLocales;

  /// List of localization delegates.
  static List<LocalizationsDelegate<void>> get localizationDelegates => [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        Localization.localizationDelegate,
      ];

  /// {@macro localization}
  static Localization? get current => _current;

  /// {@macro localization}
  Localization._({required this.locale});

  /// Computes the default locale.
  ///
  /// This is the locale that is used when no locale is specified.
  static Locale computeDefaultLocale() {
    final locale = PlatformDispatcher.instance.locale;

    if (const AppLocalizationDelegate().isSupported(locale)) return locale;

    return const Locale('en');
  }

  /// Obtain [Localization] instance from [BuildContext].
  static Localization of(BuildContext context) =>
      Localizations.of<Localization>(context, Localization) ??
      (throw ArgumentError('No Localization found in context'));
}

final class _LocalizationDelegate extends LocalizationsDelegate<Localization> {
  final AppLocalizationDelegate _delegate;

  const _LocalizationDelegate(this._delegate);

  @override
  bool isSupported(Locale locale) => _delegate.isSupported(locale);

  @override
  Future<Localization> load(Locale locale) =>
      GeneratedLocalization.load(locale).then(
        (_) => Localization._current = Localization._(locale: locale),
      );

  @override
  bool shouldReload(_LocalizationDelegate old) => false;
}
