import './model/hello.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class GrpcServerDataSource {
  Future<HelloReply> sendNameToHelloService(String name) async {
    ClientChannel channel = ClientChannel(
      "localhost",
      port: 9000,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    HelloRequest request = HelloRequest();
    request.name = name;

    var service = HelloGrpcClient(channel);
    return await service.sayHello(request);
  }
}
