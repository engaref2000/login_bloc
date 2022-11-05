import 'package:flutter/foundation.dart';

import 'bloc.dart';

class BlocProvider with ChangeNotifier, DiagnosticableTreeMixin {
  Bloc bloc = Bloc();
}
