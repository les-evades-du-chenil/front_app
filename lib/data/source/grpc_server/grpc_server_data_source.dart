import 'package:grpc/grpc.dart';

class GrpcServerDataSource {
  void init() {
    ClientChannel channel = ClientChannel(
      "localhost",
      port: 9000,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }
}
