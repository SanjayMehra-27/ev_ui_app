import 'package:ev_ui_app/app/modules/settings/controller/settings_controller.dart';
import 'package:ev_ui_app/app/routes/app_routes.dart';
import 'package:ev_ui_app/app/services/theme_service/theme_service.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:ev_ui_app/app/utils/enums/global_enums.dart';
import 'package:ev_ui_app/app/utils/style/style.dart';
import 'package:ev_ui_app/app/widgets/coming_soon/coming_soon.dart';
import 'package:ev_ui_app/app/widgets/labels_copy/inline/label_value_pair_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';

  ThemeService themeService = Get.put(ThemeService());
final List<SettingMenus> menus = [
  SettingMenus(
    title: 'EV Plug',
    onTap: () {
      Get.to(() => const ComingSoonWidget());
    },
  ),
  SettingMenus(
    title: 'FAQ',
    onTap: () {
      Get.to(() => const ComingSoonWidget());
    },
  ),
  SettingMenus(
    title: 'Support',
    onTap: () {
      Get.toNamed(AppRoutes.SUPPORTS);
    },
  ),
  SettingMenus(
    title: 'Notifications',
    onTap: () {
      Get.to(() => const ComingSoonWidget());
    },
  ),
  SettingMenus(
    title: 'Legal',
    onTap: () {
      Get.to(() => const ComingSoonWidget());
    },
  ),
  SettingMenus(
    title: 'Dark Theme',
    isForToggleButton: true,
    onTap: () {
      themeService.switchTheme();
    },
  ),
  SettingMenus(
    title: 'Reset Password',
    onTap: () {
      Get.to(() => const ComingSoonWidget());
    },
  ),
];

class SettingMenus {
  final String title;
  final Function onTap;
  final IconData? icon;
  final bool? isForToggleButton;

  SettingMenus(
      {required this.title,
      required this.onTap,
      this.icon,
      this.isForToggleButton = false});
}

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);
  SettingsController settingsController = Get.put(SettingsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(color: DARK_COLOR),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // todo: User Details : [Registered User Email, EV Plug ID, Customer ID]
              LabelValuePairWidget(
                label: 'Registered User',
                labelStyle: Heading1BoldGrey,
                value: 'john.doe@gmail.com',
                spacing: 1,
                valueStyle: SubHeadingPrimary,
                labelType: LabelType.TOP_DOWN,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              const SizedBox(height: 15),
              LabelValuePairWidget(
                label: 'EV Plug ID',
                labelStyle: Heading1BoldGrey,
                value: 'QX-Series-000AE2029',
                spacing: 1,
                valueStyle: Heading1Black87,
                labelType: LabelType.TOP_DOWN,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              const SizedBox(height: 15),
              LabelValuePairWidget(
                label: 'Customer ID',
                labelStyle: Heading1BoldGrey,
                value: '123456789',
                spacing: 1,
                valueStyle: Heading1Black87,
                labelType: LabelType.TOP_DOWN,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              const SizedBox(height: 15),
              // todo: add support list with selectable items
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    style: ListTileStyle.drawer,
                    contentPadding: EdgeInsets.zero,
                    onTap: () {
                      try {
                        menus[index].onTap();
                      } catch (e) {
                        print("Error: $e");
                      }
                    },
                    trailing: menus[index].isForToggleButton != null &&
                            menus[index].isForToggleButton == true
                        ? SizedBox(
                            width: 80,
                            child: Obx(() => FlutterSwitch(
                                  width: 100.0,
                                  height: 40.0,
                                  activeColor: DARK_COLOR,
                                  inactiveColor:
                                      SECONDARY_COLOR.withOpacity(0.5),
                                  valueFontSize: 25.0,
                                  toggleSize: 30.0,
                                  value: themeService.isDarkModeEnable.value,
                                  borderRadius: 30.0,
                                  padding: 8.0,
                                  showOnOff: false,
                                  onToggle: (val) {
                                    // todo: update theme
                                    themeService.switchTheme();
                                  },
                                )))
                        : const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),
                    title: Text(
                      menus[index].title,
                      style: const TextStyle(
                          color: SECONDARY_COLOR, fontWeight: FontWeight.bold),
                    ),
                  );
                },
                itemCount: menus.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),

              // todo: add logout button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Logout",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1.1,
                            color: DANGER.withOpacity(0.8))),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
