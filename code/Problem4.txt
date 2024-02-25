
CL-USER 1 > (defun is-memberp(element set)
(if (member element set) t nil))
IS-MEMBERP

CL-USER 2 > (is-memberp 'a '(b c d a))
T

CL-USER 3 > (is-memberp 'e '(b c d a))
NIL

CL-USER 4 > (defun equal-setsp(set1 set2)
(and (subsetp set1 set2)
(subsetp set2 set1)))
EQUAL-SETSP

CL-USER 5 > (equal-setsp '(b c d a) '(a b c d))
T

CL-USER 6 > (equal-setso '(b c d a) '(b c d a 2))

Error: Undefined operator EQUAL-SETSO in form (EQUAL-SETSO (QUOTE (B C D A)) (QUOTE (B C D A 2))).
  1 (continue) Try invoking EQUAL-SETSO again.
  2 Return some values from the form (EQUAL-SETSO (QUOTE (B C D A)) (QUOTE (B C D A 2))).
  3 Try invoking something other than EQUAL-SETSO with the same arguments.
  4 Set the symbol-function of EQUAL-SETSO to another function.
  5 Set the macro-function of EQUAL-SETSO to another function.
  6 (abort) Return to top loop level 0.

Type :b for backtrace or :c <option number> to proceed.
Type :bug-form "<subject>" for a bug report template or :? for other options.

CL-USER 7 : 1 > (equal-setsp '(b c d a) '(b c d a 2))
NIL

CL-USER 8 : 1 > 