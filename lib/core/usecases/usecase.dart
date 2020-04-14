abstract class Usecase<Type, Params> {
  const Usecase();

  Type call(Params params);
}

class NoParams {
  const NoParams();
}
