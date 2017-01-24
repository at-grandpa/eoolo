proc expr1():bool =
  return true

proc expr2():bool =
  echo "Not Short-circuit evaluation."
  return true

# Logical operators accept only boolean.
echo expr1() or expr2()
