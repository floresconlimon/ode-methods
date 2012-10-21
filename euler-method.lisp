;; Euler method for simple ODE's

(defun euler-method (fxy x0 y0 h n)
  "Calculates a solution, dy-dx is y', fxy explains itself, h is the step size, n is the number of steps"
  (let ((solution '())
        (x x0)
        (y y0)
        (slp 0))
    (progn
      (push (cons x y) solution)
      (loop for i from 1 to n do
           (setf slp (slope fxy x y))
           (setf x (+ x h))
           (setf y (+ y (* h slp)))
           (push (cons x y) solution))
      (reverse solution))))

(defun slope (fxy xn yn)
 "calculate slope"
 (funcall fxy xn yn))

 
  

