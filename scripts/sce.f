      PROGRAM hello
          logical expr1, expr2
          WRITE (*,'(L)') (expr1().or.expr2())
      END

      logical FUNCTION expr1() result(r)
          r = .TRUE.
      END

      logical FUNCTION expr2() result(r)
          WRITE (*,'(A)') 'Not Short-circuit evaluation.'
          r = .TRUE.
      END
