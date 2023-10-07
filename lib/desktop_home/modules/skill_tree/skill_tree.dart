import 'package:cv_website/desktop_home/modules/skill_tree/widgets/skill_item.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../controllers/app_controller.dart';
import '../../../utils/utils_functions.dart';

class SkillTreeDesktop extends StatelessWidget {
  SkillTreeDesktop({Key? key}) : super(key: key);

  final appController = GetIt.I.get<AppController>();


  @override
  Widget build(BuildContext context) {

    return Observer(
      builder: (context) {

        List<Map<String,dynamic>> itensDone = appController.skillList.where((item) => item['status'] == ItemStatus.done).toList();
        List<Map<String,dynamic>> itensProgress = appController.skillList.where((item) => item['status'] == ItemStatus.progress).toList();
        List<Map<String,dynamic>> itensWaiting = appController.skillList.where((item) => item['status'] == ItemStatus.waiting).toList();

        return Stack(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: appController.activeSecondaryTheme, width: 4)
                ),
                width: 900,
                height: 320,
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Expanded(child: Text(appController.acquiredSkills,textAlign: TextAlign.center,style: appController.activeThemeData.textTheme.displaySmall,)),
                            Expanded(child: Text(appController.developingSkills,textAlign: TextAlign.center,style: appController.activeThemeData.textTheme.displaySmall)),
                            Expanded(child: Text(appController.futureSkills,textAlign: TextAlign.center,style: appController.activeThemeData.textTheme.displaySmall)),
                          ],),
                        Row(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Divider(color: appController.activeSecondaryTheme,),
                            )),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Divider(color: appController.activeSecondaryTheme),
                            )),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Divider(color: appController.activeSecondaryTheme),
                            )),
                          ],),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Wrap(
                                alignment: WrapAlignment.spaceAround,
                                children: itensDone.map((item)
                                => SkillItem(status: item['status'],title: item['title'],),).toList(),
                              ),
                            ),
                            Expanded(child: Wrap(
                              alignment: WrapAlignment.spaceAround,
                              children: itensProgress.map((item)
                              => SkillItem(status: item['status'],title: item['title'],),).toList(),
                            ),),
                            Expanded(child:  Wrap(
                              alignment: WrapAlignment.spaceAround,
                              children: itensWaiting.map((item)
                              => SkillItem(status: item['status'],title: item['title'],),).toList(),
                            ),)
                          ],
                        ),
                      ],
                    )
                )
            ),
            Container(
              width: 900,
              child: Align(alignment: Alignment.topCenter,
              child: Container(
                height: 44,
                margin: EdgeInsets.only(top: 0),
                decoration: BoxDecoration(
                  color: appController.activePrimaryTheme,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                    border: Border.all(color: appController.activeSecondaryTheme, width: 4)
                ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(appController.skillTree, style: appController.activeThemeData.textTheme.displayMedium,textAlign: TextAlign.center,),
                  )
                ],
              )
              ),),
            )
          ],
        );
      },
    );
  }
}
