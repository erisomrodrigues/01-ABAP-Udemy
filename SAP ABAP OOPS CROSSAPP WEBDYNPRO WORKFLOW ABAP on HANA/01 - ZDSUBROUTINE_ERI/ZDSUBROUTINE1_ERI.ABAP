*&---------------------------------------------------------------------*
*& Subroutinenpool ZDSUBROUTINE1_ERI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
PROGRAM ZDSUBROUTINE1_ERI.


DATA: LV_R1 TYPE I,
      LV_R2 TYPE I,
      LV_RESULT TYPE I.

FORM SUB6.

  lv_r1 = 2.
  lv_r2 = 2.

  lv_result = lv_r1 ** lv_r2.

  ULINE.
  WRITE:/ 'SUB 6 External sub routine - Calculation result is: ', lv_result.
ENDFORM.
