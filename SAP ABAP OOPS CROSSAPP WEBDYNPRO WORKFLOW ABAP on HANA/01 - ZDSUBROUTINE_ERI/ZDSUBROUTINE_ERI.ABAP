*&---------------------------------------------------------------------*
*& Report ZDSUBROUTINE_ERI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdsubroutine_eri.

DATA: lv_r1     TYPE i,
      lv_r2     TYPE i,
      lv_result TYPE i.

lv_r1 = 100.
lv_r2 = 50.

lv_result = lv_r1 + lv_r2.

PERFORM sub1.

ULINE.

DATA: lv_d3 TYPE i VALUE 5,
      lv_d4 TYPE i VALUE 2,
      ch_d1 TYPE i,
      ch_d2 TYPE i.

PERFORM sub2 USING lv_d3 lv_d4 CHANGING ch_d1 ch_d2.

WRITE:/ ' SUB 2 SUM - Calculation result is:', ch_d1,
      / ' SUB 2 SUBTRACTION - Calculation result is:', ch_d2.
*
DATA: lv_d1 TYPE i VALUE 20,
      lv_d2 TYPE i VALUE 10.

ULINE.
CLEAR lv_result.
PERFORM sub3 USING lv_d1 lv_d2.

ULINE.
CLEAR lv_result.
PERFORM sub4 USING 100 50.

CLEAR lv_result.
PERFORM sub5(zdsubroutine2_eri).

CLEAR lv_result.
PERFORM sub6 IN PROGRAM zdsubroutine1_eri.

FORM sub1.
  WRITE:/ ' SUB 1 Calculation result is :', lv_result.
ENDFORM.

FORM sub2  USING    p_lv_d3
                    p_lv_d4
           CHANGING p_ch_d1
                    p_ch_d2.

  p_ch_d1 = p_lv_d3 + p_lv_d4.
  p_ch_d2 = p_lv_d3 - p_lv_d4.

ENDFORM.

FORM sub3  USING P_lv_d1 P_lv_d2.
  DATA: lv_result TYPE i.

  lv_result = p_lv_d1 * p_lv_d2.

  WRITE:/ ' SUB 3 Calculation result is', lv_result.

ENDFORM.

FORM sub4  USING v_d1 v_d2.
  DATA: lv_result TYPE i.

  lv_result = v_d1 / v_d2.

  WRITE:/ ' SUB 4 Calculation result is :', lv_result.
ENDFORM.
