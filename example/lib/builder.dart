library;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/test_library_generator.dart';

Builder testBuilder(BuilderOptions options) => LibraryBuilder(
      TestLibraryGenerator(),
      generatedExtension: '.test.dart',
    );
