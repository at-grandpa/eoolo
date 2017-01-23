(defn expr1 []
  (println "method expr1")
  "return expr1")

(defn expr2 []
  (println "method expr2")
  "return expr2")

(println (or (expr1) (expr2)))
