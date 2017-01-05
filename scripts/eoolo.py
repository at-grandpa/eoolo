#!/root/.pyenv/shims/python

def expr1():
    print('method expr1')
    return 'return expr1'

def expr2():
    print('method expr2')
    return 'return expr2'

print(expr1() or expr2())

