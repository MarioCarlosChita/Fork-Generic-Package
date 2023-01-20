
abstract class ForkGenericException implements Exception{
  String message;
  ForkGenericException(this.message);
}

class IsNotRightForkGenericException extends  ForkGenericException {
  IsNotRightForkGenericException():super("The return is not in the right");
  String toString() => "{message:$message}";
}

class IsNotLeftForkGenericException extends  ForkGenericException {
  IsNotLeftForkGenericException():super("The return is not in the left");
  String toString() => "{message:$message}";
}

class IsNotClearDirectionTypeException extends   ForkGenericException {
  IsNotClearDirectionTypeException():super("Is not clear what is the direction type.");
  String toString() => "{message:$message}";
}
