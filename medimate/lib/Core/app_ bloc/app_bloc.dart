import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medimate/controllers/sign_up_bloc/check_box_bloc/check_box_bloc.dart';

final List<BlocProvider> appBlocProviders = [
  BlocProvider<CheckBoxBloc>(create: (context) => CheckBoxBloc()),

  // Add more blocs here as needed
];
