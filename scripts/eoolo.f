      PROGRAM hello
          logical expr1, expr2
          WRITE (*,*) (expr1().or.expr2())
      END

      logical FUNCTION expr1() result(r)
          WRITE (*,*) 'method expr1'
          r = .TRUE.
      END

      logical FUNCTION expr2() result(r)
          WRITE (*,*) 'method expr2'
          r = .TRUE.
      END
