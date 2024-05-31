{ ... }: {
  config = {
    attrsOf = { foo = "bar"; monkey = "donkey"; s = "4"; };

    listOf = [ 1 3 5 7 12 20 ];

    nullOr = true;

    either = "I am string.";

    oneOf = 21;
  };
}
