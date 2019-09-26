#lang racket

(define (ball-val ball)
   (if (equal? ball 'R) 10
      (if (equal? ball 'G) 15
         (if (equal? ball 'B) 20
            (if (equal? ball 'W) 1
               "Not a valid ball"
            )
         )
      )
   )
)

(define (count-balls color bucket)
   (cond((null? bucket) 0)
      ((equal? color (car bucket)) (+ 1 (count-balls color (cdr bucket))))
      (else (+ 0 (count-balls color (cdr bucket))))
      )
)

(define (color-counts bucket)
    (list(count-balls 'R bucket) (count-balls 'G bucket) (count-balls 'B bucket) (count-balls 'W bucket))
)

(define (bucket-val bucket)
   (if(null? bucket) 0
       (+(ball-val (car bucket)) (bucket-val (cdr bucket)))
   )
)

(define (judge bucket_1 bucket_2)
  (if (< (bucket-val bucket_1) (bucket-val bucket_2))
      "Bucket 2, Won..!"
      (if(> (bucket-val bucket_1) (bucket-val bucket_2))
         "Bucket 1, Won..!"
         "It's a Tie..!"
      )
   )
 )