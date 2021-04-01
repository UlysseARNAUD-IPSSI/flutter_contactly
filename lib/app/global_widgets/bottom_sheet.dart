import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:taskly/app/global_widgets/input_text_feild.dart';
import 'package:taskly/app/global_widgets/proceed_button.dart';
import 'package:taskly/app/modules/home/controllers/home_controller.dart';
import 'package:taskly/app/theme/text_theme.dart';

class BottomSheetContent extends GetView<HomeController> {
  final Function selectDate;
  final Function selectTime;
  const BottomSheetContent({
    Key key,
    this.selectDate,
    this.selectTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: Get.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 60,
            width: 73,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: GetBuilder<HomeController>(
              id: 'dropDownIcon',
              init: HomeController(),
              builder: (controller) {
                return DropdownButton(
                  value: controller.selectedIcon,
                  underline: Container(color: Colors.transparent),
                  hint: Padding(
                    padding: EdgeInsets.only(left: 8, top: 8),
                    child: SvgPicture.asset(controller.icons.first, width: 40),
                  ),
                  items: controller.icons.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8, top: 8),
                          child: SvgPicture.asset(value, width: 40),
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: controller.changeIcon,
                  dropdownColor: Theme.of(context).primaryColorLight,
                );
              },
            ),
          ),
          SizedBox(height: 30),
          InputTextFormField(
            hintText: 'Tittle',
            tController: controller.titleController,
            textFeildColor: Theme.of(context).primaryColorLight,
            contentTextColor: Theme.of(context).primaryColorDark,
          ),
          SizedBox(height: 25),
          InputTextFormField(
            hintText: 'Description',
            tController: controller.descController,
            textFeildColor: Theme.of(context).primaryColorLight,
            contentTextColor: Theme.of(context).primaryColorDark,
          ),
          SizedBox(height: 25),
          Row(
            children: [
              InkWell(
                onTap: () {
                  controller.selectDate(context);
                },
                child: InputTextFormField(
                  hintText: 'Date',
                  tController: controller.dateController,
                  textFeildColor: Theme.of(context).primaryColorLight,
                  contentTextColor: Theme.of(context).primaryColorDark,
                  width: Get.width * 0.371,
                  isEnabled: false,
                ),
              ),
              SizedBox(width: Get.width * 0.05),
              Text(
                '@',
                style: kSub2HeadTextStyle.copyWith(
                    color: Theme.of(context).primaryColorDark, fontSize: 24),
              ),
              SizedBox(width: Get.width * 0.05),
              InkWell(
                onTap: () {
                  controller.selectTime(context);
                },
                child: InputTextFormField(
                  hintText: 'Time',
                  tController: controller.timeController,
                  textFeildColor: Theme.of(context).primaryColorLight,
                  contentTextColor: Theme.of(context).primaryColorDark,
                  width: Get.width * 0.371,
                  isEnabled: false,
                ),
              ),
            ],
          ),
          SizedBox(height: 45),
          ProceedButton(
            size: Get.size,
            title: 'Create Task',
            buttonColor: Theme.of(context).primaryColor.withOpacity(0.9),
            onPress: controller.addTask,
          ),
        ],
      ),
    );
  }
}
