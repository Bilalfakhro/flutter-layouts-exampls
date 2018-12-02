///
/// Created by NieBin on 18-12-2
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///

import "package:flutter/material.dart";
import '../constant/string_const.dart';

const BAR_FONT_SIZE = 21.0;
const BAR_TITLE_COLOR = Colors.white;

class TopAppBar extends AppBar {
  TopAppBar({
    GroupType group,
    ItemType itemType,
    PreferredSize bottomView,
    VoidCallback onClick,
  }) : super(
          leading: IconButton(
            icon: Icon(
              BAR_ICONS[group.index],
              color: BAR_TITLE_COLOR,
            ),
            onPressed: onClick,
          ),
          title: Text(
            BOTTOM_TITLES[itemType.index],
            style: TextStyle(
              color: BAR_TITLE_COLOR,
              fontSize: BAR_FONT_SIZE,
            ),
          ),
          bottom: bottomView,
          backgroundColor: BAR_BACK_COLORS[group.index],
        );
}
