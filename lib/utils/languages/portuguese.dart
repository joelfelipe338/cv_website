import 'package:cv_website/desktop_home/modules/skill_tree/widgets/skill_item.dart';

class TextDataPT{
  static String myName = "Olá, meu nome é Joel Felipe";
  static String myProffision = "Sou Desenvolvedor Mobile";
  static String myDescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod arcu id massa iaculis, a tincidunt nisi iaculis. Nulla facilisi. Duis in ullamcorper leo. Maecenas nec justo vel elit suscipit tristique. Vestibulum dapibus, ligula id tristique facilisis, tortor neque pharetra odio, ut dignissim felis risus ac neque. Proin a vehicula lectus, ac bibendum ipsum. Aenean non purus ac elit venenatis dignissim";
  static String websiteProgress = "Trabalhando no site";
  static String skillTree = "HABILIDADES";
  static String acquiredSkills = "Adquiridas";
  static String developingSkills = "Em desenvolvimento";
  static String futureSkills = "Futuras";
  static String floatingActionButtonText = "Ir ao topo";
  static List<Map<String, dynamic>> skillList = [
    {"title": "CI/CD", "status": ItemStatus.waiting},
    {"title": "Testes\nUnitários", "status": ItemStatus.progress},
    {"title": "MobX", "status": ItemStatus.progress},
    {"title": "Lints", "status": ItemStatus.done},
    {"title": "POO", "status": ItemStatus.done},
    {"title": "HTML", "status": ItemStatus.done},
    {"title": "CSS", "status": ItemStatus.done},
    {"title": "Javascript", "status": ItemStatus.done},
    {"title": "JQuery", "status": ItemStatus.done},
    {"title": "Git", "status": ItemStatus.done},
    {"title": "Docker", "status": ItemStatus.done},
    {"title": "Scrum", "status": ItemStatus.done},
    {"title": "Python", "status": ItemStatus.done},
    {"title": "MySQL", "status": ItemStatus.done},
    {"title": "PostgreSQL", "status": ItemStatus.done},
    {"title": "MVC", "status": ItemStatus.done},
    {"title": "Get It", "status": ItemStatus.progress},
    {"title": "Inglês\nAvançado", "status": ItemStatus.progress},
    {"title": "Flutter Mobile", "status": ItemStatus.done},
    {"title": "Firebase", "status": ItemStatus.done},
    {"title": "Deploy", "status": ItemStatus.done},
    {"title": "DJango", "status": ItemStatus.done},
    {"title": "Flutter\nWeb", "status": ItemStatus.progress},
    {"title": "NodeJS", "status": ItemStatus.waiting},
    {"title": "Dart", "status": ItemStatus.done},
    {"title": "Kotlin", "status": ItemStatus.waiting},
    {"title": ".NET", "status": ItemStatus.waiting},
    {"title": "Swift", "status": ItemStatus.waiting},
    {"title": "Inglês\nIntermediario", "status": ItemStatus.done},
    {"title": "NPM", "status": ItemStatus.done},
    {"title": "FVM", "status": ItemStatus.done},
    {"title": "Vue.js", "status": ItemStatus.progress},
  ];
}