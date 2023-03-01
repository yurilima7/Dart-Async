import 'package:args/command_runner.dart';

void main(List<String> args) {
  // final argParser = ArgParser();
  // argParser.addFlag('data', abbr: 'd');
  // argParser.addOption("name", abbr: 'n');
  // argParser.addOption("template", abbr: 't');
  // argParser.parse(args);

  // final argResult = argParser.parse(args);
  // print("${argResult['data']}");
  // print("${argResult['name']}");
  // print("${argResult['template']}");
  CommandRunner('ADF CLI', 'ADF CLI')
    ..addCommand(ExemploCommand())
    ..run(args);
}

class ExemploCommand extends Command {
  @override
  String get description => 'Exemplo de comando';

  @override
  String get name => 'exemplo';

  ExemploCommand() {
    argParser.addOption('template',
        abbr: 't', help: 'Template de criação do projeto');
  }

  @override
  void run() {
    print(argResults?['template']);
    print('executar qualquer coisa');
  }
}
