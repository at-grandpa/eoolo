#!/root/.pyenv/shims/python

def expr1():
    return 'return value of expr1.'

def expr2():
    print('Not Short-circuit evaluation.')
    return 'return value of expr2.'

print(expr1() or expr2())

