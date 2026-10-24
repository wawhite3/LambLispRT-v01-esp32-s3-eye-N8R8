;;; Copyright 2026 by Frobenius Norm LLC 2026-07-05 01:30:00
(syslog "Target: esp32-s3-eye -- LambLisp camera node (OV2640 + ST7789), REPL on native USB-Serial/JTAG\n")
(set! app-loop
  (guard (e (#t (syslog "eye: eye-make-loop unavailable -- no-op app-loop (clean REPL)\n")
                (lambda () (lambda () #f))))
    (if (procedure? eye-make-loop)
        eye-make-loop
        (lambda () (lambda () #f)))))
