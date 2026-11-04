import 'dart:typed_data';
import 'dart:convert';

class Message {
  int type = 1;
  int length = 0;
  String recipient = "";
  String sender = "";
  String message = "";

  Uint8List toBytes(){
    final recipientBytes = utf8.encode(recipient);
    final senderBytes = utf8.encode(sender);
    final messageBytes = utf8.encode(message);

    return Uint8List(0);
  }
}

class ChangeRoom {
  int type = 2;
  int room_num = 0;
}

class Fight {
  int type = 3;
}

class PvpFight {
  int type = 4;
  String recipient = "";

  Uint8List toBytes(){
    final recipientBytes = utf8.encode(recipient);
    return Uint8List(0);
  }
}

class Loot {
  int type = 5;
  String recipient = "";

  Uint8List toBytes(){
    final recipientBytes = utf8.encode(recipient);
    return Uint8List(0);
  }
}

class Start {
  int type = 6;
}

class Error {
  int type = 7;
  /*
  Error Code List
  0 - Other: Not covered by this list
  1 - Bad Room: Attempted to change to an inappropriate room
  2 - Player Exists: Attempted to create a player that exists
  3 - Bad Monster: Attempt to loot a nonexistent player/monster
  4 - Stat Error: Caused by setting inappropriate player stats.
  5 - Not Ready: Attempted an action too early, i.e. change room before starting
  6 - No Target: Attempted to loot noexistent player, fight something in another room.
  7 - No Fight: Sent if requested fight cannot happen for any reason.
  8 - No PvP: Servers do not have to support player-vs-player combat.
   */
  int error_code = 0;
  int msg_length = 0;
  String message = "";
  }

class Accept {
  int type = 8;
  int action = 0;
}

class Room {
  int type = 9;
  int room_num = 0;
  String room_name = "";
  int desc_len = 0;
  String room_desc = "";
}

class Character {
  int type = 10;
  String name = "";
  int flags = 0;
  int attack = 0;
  int defends = 0;
  int regen = 0;
  int health = 100;
  int gold = 0;
  int curr_room = 0;
  int desc_len = 0;
  String player_desc = "";
}

class Game {
  int type = 11;
  int init_pts = 0;
  int stat_limit = 0;
  int desc_len = 0;
  String game_desc = "";
}

class Leave {
  int type = 12;
}

class Connection {
  int type = 13;
  int room_num = 0;
  String room_name = "";
  int desc_len = 0;
  String room_desc = "";
}

class Version {
  int type = 14;
  int v_major = 0;
  int v_minor = 0;
  int ext_size = 0;
  String ext_list = "";
}