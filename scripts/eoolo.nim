proc expr1():bool =
  echo "method expr1"
  return true

proc expr2():bool =
  echo "method expr2"
  return true

# Logical operators in java accept only boolean.
echo expr1() or expr2()
