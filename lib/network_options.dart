typedef OnResiveProgres = void Function(int, int);

class NetworkOptions {
  OnResiveProgres? onReceiveProgress;

  NetworkOptions({this.onReceiveProgress});
}
