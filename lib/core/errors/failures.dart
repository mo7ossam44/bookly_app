abstract class Failure {}

class ServerFaliure extends Failure {
  final String errMessag;

  ServerFaliure(this.errMessag);
}
