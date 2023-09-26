REPORT ZDF4HELP.

PARAMETERS P_D1 TYPE ZDPINCODE.

TYPES: BEGIN OF TY_CHILD,
  PINCODE TYPE ZDPINCODE,
  END OF TY_CHILD.

DATA: IT_CHILD TYPE TABLE OF TY_CHILD,
      WA_CHILD TYPE TY_CHILD.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR P_D1.

*MESSAGE 'HELLO USER EVENT GETS TRIGGERED' TYPE 'I'.

SELECT PINCODE FROM ZDCHILDTABLE INTO TABLE IT_CHILD UP TO 6 ROWS.

  IF IT_CHILD IS NOT INITIAL.
  CALL FUNCTION 'F4IF_INT_TABLE_VALUE_REQUEST'
    EXPORTING
*     DDIC_STRUCTURE         = ' '
      RETFIELD               = 'PINCODE'
*     PVALKEY                = ' '
     DYNPPROG               = SY-REPID
*     DYNPNR                 = SY-DYNNR
     DYNPROFIELD            = 'PINCODE'
*     STEPL                  = 0
*     WINDOW_TITLE           =
*     VALUE                  = ' '
     VALUE_ORG              = 'S'
*     MULTIPLE_CHOICE        = ' '
*     DISPLAY                = ' '
*     CALLBACK_PROGRAM       = ' '
*     CALLBACK_FORM          = ' '
*     CALLBACK_METHOD        =
*     MARK_TAB               =
*   IMPORTING
*     USER_RESET             =
    TABLES
      VALUE_TAB              = IT_CHILD
*     FIELD_TAB              =
*     RETURN_TAB             =
*     DYNPFLD_MAPPING        =
*   EXCEPTIONS
*     PARAMETER_ERROR        = 1
*     NO_VALUES_FOUND        = 2
*     OTHERS                 = 3
            .
  IF SY-SUBRC <> 0.
* Implement suitable error handling here
  ENDIF.
  ENDIF.
