
class Resource<T>{
  String? message;
  T? data;
  bool loading = false;
  Resource({
    this.message,
    this.data,
    this.loading = false,});
}

class Success<T> extends Resource<T>{
  Success(T data):super(data: data);
}
class Error<T> extends Resource<T>{
  Error(String message):super(message: message);
}
class Loading<T> extends Resource<T>{
  Loading({bool loading = true}):super(loading: loading);
}







