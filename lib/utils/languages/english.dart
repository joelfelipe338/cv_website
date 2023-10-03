import '../../desktop_home/modules/skill_tree/widgets/skill_item.dart';

class TextDataEN{
  static String myName = "Hi, my name is Joel Felipe";
  static String myProffision = "I am a Mobile Developer";
  static String myDescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod arcu id massa iaculis, a tincidunt nisi iaculis. Nulla facilisi. Duis in ullamcorper leo. Maecenas nec justo vel elit suscipit tristique. Vestibulum dapibus, ligula id tristique facilisis, tortor neque pharetra odio, ut dignissim felis risus ac neque. Proin a vehicula lectus, ac bibendum ipsum. Aenean non purus ac elit venenatis dignissim";
  static String websiteProgress = "Working on the website";
  static String skillTree = "Skill Tree";
  static String floatingActionButtonText = "Go to top";
  static List<Map<String, dynamic>> skillList = [
    {"title": "CI/CD", "status": ItemStatus.waiting},
    {"title": "Unit\nTesting", "status": ItemStatus.done},
    {"title": "MobX", "status": ItemStatus.progress},
  ];
}