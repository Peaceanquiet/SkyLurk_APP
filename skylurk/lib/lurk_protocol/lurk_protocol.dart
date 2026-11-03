import 'dart:io';

class LurkProtocol {
  Socket? socket;

  Future<void> connect(String ip, int port) async {
    socket = await Socket.connect(ip, port, timeout: const Duration(seconds: 5),
  );
  
  }

}