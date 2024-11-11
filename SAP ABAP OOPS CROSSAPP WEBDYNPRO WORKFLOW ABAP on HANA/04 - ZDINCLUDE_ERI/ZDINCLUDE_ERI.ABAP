*&---------------------------------------------------------------------*
*& Report ZDINCLUDE_ERI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdinclude_eri.

INCLUDE ZDINC_ERI.

START-OF-SELECTION.

WRITE:/ ' PINCODE VALUE IS ', pincode,
      / 'CITY NAME VALUE IS ', cname,
      / 'CITY TYPE VALUE IS', ctype.

ULINE.

PERFORM SUB1.
