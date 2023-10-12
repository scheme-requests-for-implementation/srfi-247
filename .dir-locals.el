;; © 2023 Marc Nieper-Wißkirchen.

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice (including
;; the next paragraph) shall be included in all copies or substantial
;; portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

((scheme-mode
  . ((eval
      . (progn
          (put '$ 'scheme-indent-function 'defun)
          (font-lock-add-keywords
           nil
           '(("\\(define-syntactic-monad\\)\\>[ \t]*\\(\\sw+\\)\\>"
              (1 font-lock-keyword-face)
              (2 font-lock-type-face))
             ("(\\(\\$\\sw*\\)\\>[ \t]*\\(let\\*-values\\|lambda\\|case-lambda\\)\\>"
              (1 font-lock-type-face)
              (2 font-lock-keyword-face))
             ("(\\(\\$\\sw*\\)\\>[ \t]*\\(define\\)\\>[ \t]*(\\(\\sw+\\)\\>"
              (1 font-lock-type-face)
              (2 font-lock-keyword-face)
              (3 font-lock-function-name-face))
             ("(\\(\\$\\sw*\\)\\>[ \t]*\\(let\\)\\>[ \t]*\\(\\sw+\\)\\>"
              (1 font-lock-type-face)
              (2 font-lock-keyword-face)
              (3 font-lock-function-name-face))
             ("(\\(\\$\\sw*\\)\\>"
              1 font-lock-type-face))))))))
