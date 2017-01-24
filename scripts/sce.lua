#!/root/.luaenv/shims/lua

function expr1()
    return "return value of expr1."
end

function expr2()
    print("Not Short-circuit evaluation.")
    return "return value of expr2."
end

print(expr1() or expr2())
