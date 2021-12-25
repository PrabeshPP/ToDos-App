// ignore_for_file: prefer_const_declarations

import 'package:flutter/widgets.dart';

// we are using Keys to uniquely identify each widget in the devlopment process
class FlutterToDosKeys {
  static final extraActionsPopupMenuButton =
      const Key("__extraActionsPopupMenuButton__");
  static final extraActionsEmptyContainer =
      const Key("__extraActionsEmptyContainer__");
  static final filteredTodosEmptyContainer =
      const Key("__filteredTodosEmptyContainer__");

  static final statsLoadInProgressIndicator =
      const Key("__statsLoadInProgressIndicator__");
  static final emptyStatsContainer = const Key("__emptyStatsContainer__");
  static final emptyDetailsContainer = const Key("__emptyDetailsContainer__");
  static final detailsScreenCheckBox = const Key("__detailsScreenCheckBox__");
  
}
