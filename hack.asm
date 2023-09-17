TOOLBOX                 equ     $cef5
MIRACLE_GLOVE           equ     9

SECTION "empty_toolbox", ROMX[$45c9], BANK[5]
            call    put_miracle_glove_into_toolbox

SECTION "free_space", ROMX[$7f00], BANK[5]
put_miracle_glove_into_toolbox::
            ; replace original instruction
            call    $12e8

            ld      a, 1
            ld      [TOOLBOX+MIRACLE_GLOVE], a

            ret
