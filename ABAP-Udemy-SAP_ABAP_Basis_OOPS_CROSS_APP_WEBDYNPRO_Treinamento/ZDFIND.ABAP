*&---------------------------------------------------------------------*
*& Report ZDFIND
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZDFIND.

DATA LV_D1 TYPE STRING VALUE 'HELLO USER, WELCOME TO SAP ABAP TRAINING'.
DATA LV_D2 TYPE I.

*FIND 'SAP' IN LV_D1 MATCH OFFSET LV_D2.
*FIND 'USER' IN LV_D1 MATCH OFFSET LV_D2.
*WRITE:/ 'INDEX VALUE OF SAP IS :- ', LV_D2.

FIND 'USER' IN LV_D1.

IF SY-SUBRC = 0.
  WRITE:/ 'FIND STATMENT SUCESSFULLY EXECUTED'.
ELSE.
  WRITE:/ 'FIND STATMENT NOT UCCESSFULLY EXECUTED'.

ENDIF.
