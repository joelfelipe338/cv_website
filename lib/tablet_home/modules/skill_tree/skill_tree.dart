import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../controllers/app_controller.dart';
import '../../../desktop_home/modules/skill_tree/widgets/skill_item.dart';
import '../../../utils/utils_functions.dart';

class SkillTreeTablet extends StatelessWidget {
  SkillTreeTablet({Key? key}) : super(key: key);

  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: appController.activeSecondaryTheme, width: 4)
          ),
          width: screenSize(context).width * 0.8,
          height: screenSize(context).height * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: appController.skillList.map((item)
            => SkillItem(status: item['status'],title: item['title'],),).toList(),
          ),
        );
      },
    );
  }
}
