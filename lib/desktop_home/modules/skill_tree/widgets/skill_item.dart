import 'package:cv_website/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

enum ItemStatus {done, progress, waiting}


class SkillItem extends StatelessWidget {

  final ItemStatus status;
  final String title;

  SkillItem({Key? key,required this.status, required this.title}) : super(key: key);

  AppController appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return appController.activeLightTheme ? itemLightTheme() : itemDarkTheme();
  }

  Widget itemLightTheme(){
    return Container(
      height: 60,
      width: 140,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: appController.activeSecondaryTheme, width: 5,)
              ),
              child: Center(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: 90
                    ),
                    child: FittedBox(child: Text(title,
                      style: appController.activeThemeData.textTheme.displaySmall,
                      textAlign: TextAlign.center,
                    ))),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomRight,
            child: Container(
                decoration: BoxDecoration(
                  color: appController.activePrimaryTheme,
                ),child: Icon(status == ItemStatus.done ? Icons.check_box
                : status == ItemStatus.progress ? Icons.timelapse
                : Icons.block, size: 28,)),)
        ],
      ),
    );
  }

  Widget itemDarkTheme(){
    return Container(
      height: 60,
      width: 140,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color: appController.activeSecondaryTheme, width: 5,)
              ),
              child: Center(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: 90
                    ),
                    child: FittedBox(child: Text(title,
                      style: appController.activeThemeData.textTheme.displaySmall,
                      textAlign: TextAlign.center,
                    ))),
              ),
            ),
          ),
          Stack(
            children: [
              Align(alignment: Alignment.bottomRight,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: appController.activeSecondaryTheme
                  ),
                  child: Center(
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: status == ItemStatus.done ? const Color(0xff11c700)
                           : status == ItemStatus.progress ? Colors.yellow
                           : Colors.red,
                        border: Border.all(color: appController.activePrimaryTheme),
                          boxShadow: [
                            BoxShadow(
                                color:status == ItemStatus.done ?  Colors.lightGreenAccent.withOpacity(0.7)
                                    : status == ItemStatus.progress ?  Colors.yellowAccent.withOpacity(0.7)
                                    :  Colors.redAccent.withOpacity(0.7),
                                spreadRadius: 6,
                                blurRadius: 8,
                                offset: const Offset(0,0)
                            ),
                          ]
                      ),
                    ),
                  ),

                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
