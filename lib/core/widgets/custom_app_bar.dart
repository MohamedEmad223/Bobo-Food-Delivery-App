import 'package:bobo_food_delivery_app/core/theme/color_helper.dart';
import 'package:bobo_food_delivery_app/core/utils/assets_helper.dart';
import 'package:bobo_food_delivery_app/core/widgets/sized_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoboAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final Widget? action;
  final VoidCallback? onBackTap;

  const BoboAppBar({
    super.key,
    this.showBackButton = false,
    this.action,
    this.onBackTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return AppBar(
      backgroundColor: isDark ? ColorHelper.mainDarkColor : Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: isDark
          ? SvgPicture.asset(AssetsHelper.chooseScreenLogoDark)
          : SvgPicture.asset(AssetsHelper.chooseScreenLogo),
      leading: showBackButton
          ? BackButton(
              color: isDark ? ColorHelper.white24 : ColorHelper.darkColor,
              onPressed: onBackTap ?? () => Navigator.pop(context),
            )
          : SizedSpacer(hasAction: action != null),
      actions: [
        if (action != null)
          Padding(padding: const EdgeInsets.only(right: 8), child: action!)
        else
          SizedSpacer(hasAction: showBackButton),
      ],
    );
  }
}
