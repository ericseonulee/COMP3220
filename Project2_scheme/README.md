# Lee County Funfair Project 

This problem is solving “Lee County Funfair” with Scheme programming. Your task is to yield correct result of the game with two players for given inputs.

### Quick start
**Make sure you have latest version of Dr.Rackett downloaded. This project is tested with Windows 10.

# Table of Contents
* [Installing/Running the app](#installing-running-the-app)
* [Author](#author)

#### Installing/ Running the app

There is no extra installation needed instead of installing Dr.Rackett.
___

#### API Intro

Some APIs are written, like `ball-val` API returns the value of the ball. Given a valid ball color and it returns corresponding score for the color of the ball.

```
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
```

Another procedure is `count-balls`. Once the procedure takes a whole bucket of balls and user defined color as inputs, it will count the number of balls with the color user defined in the bucket and return it.

```
(define (count-balls color bucket)
   (cond((null? bucket) 0)
      ((equal? color (car bucket)) (+ 1 (count-balls color (cdr bucket))))
      (else (+ 0 (count-balls color (cdr bucket))))
      )
)

```

Another procedure is `color-counts`. Once the procedure takes a whole bucket of balls as inputs, it will count the number of balls of each color and return in in order of *red*, *green*, *blue*, and *white*.

```
(define (color-counts bucket)
    (list(count-balls 'R bucket) (count-balls 'G bucket) (count-balls 'B bucket) (count-balls 'W bucket))
)

```

Another procedure is `bucket-val`. Once the procedure takes a whole bucket of balls as inputs, it will return the total number of points that bucket is worth.

```
(define (bucket-val bucket)
   (if(null? bucket) 0
       (+(ball-val (car bucket)) (bucket-val (cdr bucket)))
   )
)
```

Another procedure is `judge`. Once the procedure takes two buckets of balls as inputs, it will return who won the game player of *BUCKET_1* or *BUCKET_2*.

```
(define (judge bucket_1 bucket_2)
  (if (< (bucket-val bucket_1) (bucket-val bucket_2))
      "Bucket 2, Won..!"
      (if(> (bucket-val bucket_1) (bucket-val bucket_2))
         "Bucket 1, Won..!"
         "It's a Tie..!"
      )
   )
 )

```

___

## Author
 [Eric Lee](/LICENSE)
