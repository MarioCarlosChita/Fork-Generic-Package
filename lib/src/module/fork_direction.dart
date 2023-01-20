import 'package:fork_generic/src/module/fork_generic_impl.dart';

class LeftForkGeneric<L,R> extends ForkGeneric<L,R>{
  LeftForkGeneric(this._l);
  L _l;
  L get value => _l;
}

class RightForkGeneric<L,R>  extends ForkGeneric<L,R>{
  RightForkGeneric(this._r);
  R _r;
  R get value => _r;
}
