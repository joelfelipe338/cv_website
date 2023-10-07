import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../controllers/app_controller.dart';
import '../../../desktop_home/modules/skill_tree/widgets/skill_item.dart';
import '../../../utils/utils_functions.dart';

class SkillTreeMobile extends StatelessWidget {
  SkillTreeMobile({Key? key}) : super(key: key);

  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final _pageController = PageController(
          initialPage: 0,
        );
        final _pageController2 = PageController(
          initialPage: 0,
        );
        List<Map<String,dynamic>> itensDone = appController.skillList.where((item) => item['status'] == ItemStatus.done).toList();
        List<Map<String,dynamic>> itensProgress = appController.skillList.where((item) => item['status'] == ItemStatus.progress).toList();
        List<Map<String,dynamic>> itensWaiting = appController.skillList.where((item) => item['status'] == ItemStatus.waiting).toList();

        return Stack(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: appController.activeSecondaryTheme, width: 4)
                ),
                width: 1000,
                height: 320,
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 6,),
                        Container(
                          height: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){
                                _pageController.previousPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                                _pageController2.previousPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                              }, icon: Icon(Icons.arrow_back, color: appController.activeSecondaryTheme,),),
                              Expanded(
                                child: PageView(
                                  controller: _pageController,
                                  children: [
                                    Center(
                                      child: Container(
                                          width: double.infinity,
                                          child: Text(appController.acquiredSkills,textAlign: TextAlign.center,style: appController.activeThemeData.textTheme.displaySmall,)),
                                    ),
                                    Center(
                                      child: Container(
                                          width: double.infinity,
                                          child: Text(appController.developingSkills,textAlign: TextAlign.center,style: appController.activeThemeData.textTheme.displaySmall)),
                                    ),
                                    Center(
                                      child: Container(
                                          width: double.infinity,
                                          child: Text(appController.futureSkills,textAlign: TextAlign.center,style: appController.activeThemeData.textTheme.displaySmall)),
                                    ),

                                  ],
                                ),
                              ),
                              IconButton(onPressed: (){

                                _pageController.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                                _pageController2.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);

                              }, icon: Icon(Icons.arrow_forward, color: appController.activeSecondaryTheme,),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Divider(color: appController.activeSecondaryTheme,thickness: 2,),
                        ),
                        Container(
                          height: 300,
                          child: Row(
                            children: [

                              Expanded(
                                child: PageView(
                                  controller: _pageController2,
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
                              ),
                            ],
                          ),
                        ),

                      ],
                    )
                )
            ),
            Container(
              width: 1000,
              child: Align(alignment: Alignment.topCenter,
                child: Container(
                    height: 44,
                    margin: EdgeInsets.only(top: 20),
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
