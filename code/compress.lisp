CL-USER 1 > (defun compress (list)
(if (null (rest list))
list
(if (equal (first list) (first (rest list)))
(compress (rest list))
(cons (first list) (compress (rest list))))))
COMPRESS

CL-USER 2 > (compress '(a a a b c d d e))
(A B C D E)

CL-USER 3 > (compress '())
NIL

CL-USER 4 > (compress '(a b c c c a))
(A B C A)

CL-USER 5 > (compress '(a a b b c c c c a b b))
(A B C A B)

CL-USER 6 > 