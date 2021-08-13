import 'package:flutter/cupertino.dart';

abstract class Command {
  execute() {}
}

class MacroCommand extends Command {
  List<Command> _commands = [];
  List<Command> _removed = [];

  append(Command command) {
    _commands.add(command);
  }

  clear() {
    _commands.clear();
  }

  @override
  execute() {
    for (var command in _commands) {
      _removed.clear();
      command.execute();
    }
  }

  undo() {
    _removed.add(
      _commands.removeLast(),
    );
  }

  redo() {
    _commands.add(
      _removed.removeLast(),
    );
  }
}
