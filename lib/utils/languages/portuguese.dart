import 'package:cv_website/desktop_home/modules/skill_tree/widgets/skill_item.dart';

class TextDataPT{
  static String myName = "Olá, meu nome é Joel Felipe";
  static String myProffision = "Sou Desenvolvedor Mobile";
  static String myDescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod arcu id massa iaculis, a tincidunt nisi iaculis. Nulla facilisi. Duis in ullamcorper leo. Maecenas nec justo vel elit suscipit tristique. Vestibulum dapibus, ligula id tristique facilisis, tortor neque pharetra odio, ut dignissim felis risus ac neque. Proin a vehicula lectus, ac bibendum ipsum. Aenean non purus ac elit venenatis dignissim";
  static String websiteProgress = "Trabalhando no site";
  static String skillTree = "Árvore de Habilidades";
  static String floatingActionButtonText = "Ir ao topo";
  static List<Map<String, dynamic>> skillList = [
    {"title": "CI/CD", "status": ItemStatus.waiting},
    {"title": "Testes\nUnitários", "status": ItemStatus.done},
    {"title": "MobX", "status": ItemStatus.progress},
  ];
}