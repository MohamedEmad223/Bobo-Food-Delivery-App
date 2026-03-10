import 'package:bobo_food_delivery_app/core/utils/assets_helper.dart';
import 'package:bobo_food_delivery_app/core/widgets/sized_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: SvgPicture.asset(AssetsHelper.chooseScreen),
      leading: showBackButton
          ? BackButton(onPressed: onBackTap ?? () => Navigator.pop(context))
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
