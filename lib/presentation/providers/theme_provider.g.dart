// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$colorListHash() => r'c0ea68790cae5881babd0962fcc87974eb3a24a1';

/// See also [colorList].
@ProviderFor(colorList)
final colorListProvider = AutoDisposeProvider<List<Color>>.internal(
  colorList,
  name: r'colorListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$colorListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ColorListRef = AutoDisposeProviderRef<List<Color>>;
String _$themeHash() => r'11fa0dc327e3f11a8f0e5a769fb1e806be11efcc';

/// See also [Theme].
@ProviderFor(Theme)
final themeProvider = AutoDisposeNotifierProvider<Theme, bool>.internal(
  Theme.new,
  name: r'themeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Theme = AutoDisposeNotifier<bool>;
String _$themeNotifierHash() => r'dcbd61cda4b8aaa953955c0485a96d1743860f19';

/// See also [ThemeNotifier].
@ProviderFor(ThemeNotifier)
final themeNotifierProvider =
    AutoDisposeNotifierProvider<ThemeNotifier, AppTheme>.internal(
  ThemeNotifier.new,
  name: r'themeNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themeNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeNotifier = AutoDisposeNotifier<AppTheme>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
