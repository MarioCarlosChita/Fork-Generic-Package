import 'package:fork_generic/fork_generic.dart';

ForkGeneric<String, double> divideBy(double num1, double num2) {
  if (num2 == 0) {
    return LeftForkGeneric("Is not divided by Zero");
  }
  return RightForkGeneric(num1 / num2);
}

void main() {
  divideBy(10, 5).fold((l) {
    print(l);
  }, (r) {
    print(r);
  });
}
