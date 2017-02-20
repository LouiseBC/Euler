;;Euler 6: Sum square difference

(define (square x)
		(* x x))

(define (n-sum-squared sum counter max)
		(if (> counter max)
			sum
			(n-sum-squared (+ sum (square counter) )
						   (+ counter 1)
						   max)))

(define (sum-of-n sum counter max)
      (if (> counter max)
          sum
          (sum-of-n (+ sum counter)
          			(+ counter 1)
         			max)))

(display (- (square(sum-of-n 0 1 100)) (n-sum-squared 0 1 100)))