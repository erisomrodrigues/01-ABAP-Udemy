*&---------------------------------------------------------------------*
*& Report ZDAGE_ERI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdage_eri.

PARAMETER p_bdate TYPE sy-datum.
PARAMETER p_Edate TYPE sy-datum.

DATA: lv_days   TYPE i,
      lv_months TYPE i,
      lv_years  TYPE i,
      lv_todays TYPE i.

CALL FUNCTION 'HR_SGPBS_YRS_MTHS_DAYS'
  EXPORTING
    beg_da              = P_BDATE
    end_da              = p_edate
 IMPORTING
   NO_DAY              = lv_days
   NO_MONTH            = lv_months
   NO_YEAR             = lv_years
   NO_CAL_DAY          = lv_todays.
* EXCEPTIONS
*   DATEINT_ERROR       = 1
*   OTHERS              = 2.

WRITE:/ 'AGE IS ==>', lv_years,'YEARS',lv_months,'MONTHS',lv_days,'DAYS'.
WRITE:/ 'TOTAL DAYS ARE ==>', lv_todays.

IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.
