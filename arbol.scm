(define (arbolin n)
    (cond ((not (zero? n))
            ; dibujar el maldito arbol
            (with-state
                (colour (vector 0.72 0.27 0.2))
                (scale (vector 0.8 0.8 0.8))
                (translate (vector 0 0.5 0))
                (rotate (vector 0 30 0))
                
                (with-state
                    (scale (vector 0.1 1 0.21))
                    (build-cube))
                ; izquierda
                (with-state
                    (rotate(vector 0 0 45))
                    (translate(vector -0.1 0.3 0))
                    (arbolin (- n 1)))
                ; derecha
                (with-state
                    (rotate(vector 0 0 -45))
                    (translate(vector 0.1 0.3 0))
                    (arbolin(- n 1)))))))

(clear)
(every-frame (arbolin 8))
