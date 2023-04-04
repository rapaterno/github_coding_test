import 'app_localization.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get searchPackages => 'Search packages';

  @override
  String get noResultsFound => 'No results found';

  @override
  String get whatAreYouLookingFor => 'What are you looking for?';

  @override
  String get thereHasBeenAnErrorPullDownToRefresh => 'There has been an error. Pull down to refresh';

  @override
  String get stars => 'Stars';

  @override
  String get watchers => 'Watchers';

  @override
  String get issues => 'Issues';

  @override
  String get language => 'Language';

  @override
  String get forks => 'Forks';
}
