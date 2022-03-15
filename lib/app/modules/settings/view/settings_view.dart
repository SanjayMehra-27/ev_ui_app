import 'package:ev_ui_app/app/modules/supports/controller/supports_controller.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

final List<String> issues = [
  "I have an issue with my app",
  "I have an issue with my smart plug",
  "I have a general inquiry",
];

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);
  SupportController supportController = Get.put(SupportController());
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
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // todo: add support list with selectable items
              ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Obx(
                          () => ListTile(
                            onTap: () {
                              supportController.selectedIndex(index);
                            },
                            leading:
                                supportController.selectedIndex.value == index
                                    ? const Icon(
                                        Icons.check,
                                        color: Colors.green,
                                      )
                                    : const Icon(
                                        Icons.circle_outlined,
                                        color: Colors.grey,
                                      ),
                            title: Text(
                              issues[index],
                              style: const TextStyle(
                                  color: SECONDARY_COLOR,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ));
                  },
                  itemCount: issues.length),

              // todo: add a message box for writing issue
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: TextField(
                    controller: supportController.issueMessageController.value,
                    maxLines: 15,
                    cursorColor: SECONDARY_COLOR,
                    cursorHeight: 20,
                    decoration: const InputDecoration(
                        hintText: "Type here..",
                        contentPadding: EdgeInsets.all(8),
                        border: InputBorder.none)),
              ),

              // todo: add a submit button
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5),
                width: Get.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: PRIMARY_COLOR),
                  onPressed: () {},
                  child: const Text("Submit",
                      style: TextStyle(fontSize: 20, letterSpacing: 1.1)),
                ),
              ),
              // todo: add Call Customer Care Service
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.phone,
                    color: SUCCESS_COLOR,
                  ),
                  TextButton(
                    onPressed: () {
                      launch("tel://3001234567");
                    },
                    child: Text("Call Customer Service",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 1.1,
                            color: SUCCESS_COLOR.withOpacity(0.8))),
                  ),
                ],
              ),
              // todo: add Chat Customer Care Service
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.sms_sharp,
                    color: SUCCESS_COLOR,
                  ),
                  TextButton(
                    onPressed: () {
                      launch("sms:+913001234567");
                    },
                    child: Text("Customer Service",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 1.1,
                            color: SUCCESS_COLOR.withOpacity(0.8))),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
