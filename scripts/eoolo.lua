#!/root/.luaenv/shims/lua

function expr1()
    print("method expr1")
    return "return expr1"
end

function expr2()
    print("method expr2")
    return "return expr2"
end

print(expr1() or expr2())
