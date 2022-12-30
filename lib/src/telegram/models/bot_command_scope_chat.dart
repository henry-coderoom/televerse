import 'package:televerse/src/televerse/televerse.dart';
import 'package:televerse/src/types/bot_command_scope_type.dart';

import 'abstracts/bot_command_scope.dart';

/// Represents the scope of bot commands, covering a specific chat.
class BotCommandScopeChat implements BotCommandScope {
  @override
  BotCommandScopeType get type => BotCommandScopeType.chat;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  ID chatId;

  BotCommandScopeChat({
    required this.chatId,
  });

  factory BotCommandScopeChat.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeChat(
      chatId: ID.create(json['chat_id']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'chat_id': chatId.toJson(),
    };
  }
}
