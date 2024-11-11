*&---------------------------------------------------------------------*
*& Subroutinenpool ZDSUBROUTINE2_ERI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
PROGRAM zdsubroutine2_eri.

*DATA: lv_result TYPE i.

DATA: lv_r1     TYPE i,
      lv_r2     TYPE i,
      lv_result TYPE i.

FORM sub5.
  lv_r1 = 3.
  lv_r2 = 2.

  ULINE.
  lv_result = lv_r1 MOD lv_r2.
  WRITE:/ 'SUB 5 External sub routine - Calculation result is:',lv_result.
ENDFORM.
