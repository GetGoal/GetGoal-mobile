import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di.dart';
import '../bloc/language/language_bloc.dart';

final languageBloc = BlocProvider(
  create: ((context) => getIt<LanguageBloc>()),
);
