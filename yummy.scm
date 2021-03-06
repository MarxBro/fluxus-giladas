(clear)

(define (cubito)
    ;    (hint-none)
    ;    (hint-wire)
    (with-state
        (colour (rndvec))
        (build-cube))
    )

(define (cubitos c)
    (cond ((not(zero? c))
            (rotate (rndvec))
            (translate (vector (tan (time)) 8 (cos(time))))
            (cubito)
            (cubitos (- c 1))
            )
        ))

(define (render)
    ;    (ortho)
    ;    (set-ortho-zoom 55)
    (clip 1 10000) ; MUEVE LA CAMARA
    (rotate (vector (* 3 (sin(time))) (* 30 (cos(time))) 5 ))
    (cubitos 10))

(every-frame (render))
