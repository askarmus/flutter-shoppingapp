import 'package:flutter/material.dart';

import '../../pages_generic_components/drawwer.dart';
import '../components/badge_shop_cart_appbar.dart';
import '../components/filter_favorite_appbar.dart';
import '../components/filter_favorite_enum.dart';
import '../components/overview_grid.dart';
import '../core/overview_texts_icons_provided.dart';

class OverviewPage extends StatelessWidget {
  final EnumFilter _enum;

  OverviewPage(this._enum);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            _enum == EnumFilter.All ? OVERV_TIT_ALL_APPBAR : OVERV_TIT_FAV_APPBAR),
        actions: [FilterFavoriteAppbar(_enum), BadgeShopCartAppbar()],
      ),
      drawer: Drawwer(),
      body: OverviewGrid(_enum)
    );
  }
}
