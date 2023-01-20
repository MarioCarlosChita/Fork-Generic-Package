import 'package:fork_generic/src/core/fork_generic_exception.dart';
import 'fork_direction.dart';

ForkGeneric<L, R> leftForkGeneric<L, R>(L l) => LeftForkGeneric(l);
ForkGeneric<L, R> rightForkGeneric<L, R>(R r) => RightForkGeneric(r);

class ForkGeneric<L, R> {
  const ForkGeneric();

  R get rightValue {
    ForkGeneric data = this;
    try {
      if (data is RightForkGeneric) {
        return data.value;
      }
      throw IsNotRightForkGenericException();
    } catch (_) {
      throw IsNotRightForkGenericException();
    }
  }

  L get leftValue {
    ForkGeneric data = this;
    try {
      if (data is LeftForkGeneric) {
        return data.value;
      }
      throw IsNotLeftForkGenericException();
    } catch (_) {
      throw IsNotLeftForkGenericException();
    }
  }

  bool isRight(){
    return this  is RightForkGeneric;
  }

  bool isLeft(){
    return this is  LeftForkGeneric;
  }

  B fold<B>(B Function(L l) ifLeft, B Function(R r) ifRight) {
    ForkGeneric data = this;
    if (data is  RightForkGeneric){
      return ifRight(data.value);
    }
    if (data is  LeftForkGeneric){
      return  ifLeft(data.value);
    }
    throw IsNotClearDirectionTypeException();
  }
}
