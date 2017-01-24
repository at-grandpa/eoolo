(defn expr1 []
  "return value of expr1.")

(defn expr2 []
  (println "Not Short-circuit evaluation.")
  "return value of expr2.")

(println (or (expr1) (expr2)))
