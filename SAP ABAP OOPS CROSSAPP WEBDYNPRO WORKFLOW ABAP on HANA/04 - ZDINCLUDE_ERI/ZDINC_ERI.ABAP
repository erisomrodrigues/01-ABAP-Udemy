*&---------------------------------------------------------------------*
*& Include ZDINC_ERI
*&---------------------------------------------------------------------*
DATA: PINCODE TYPE I VALUE '10001',
      CNAME   TYPE STRING VALUE 'NEW DELHI',
      CTYPE   TYPE STRING VALUE 'METRO'.
*&---------------------------------------------------------------------*
*& Form SUB1
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM sub1 .
  PINCODE = 10002.
  CNAME = 'NEW DELHI2'.
  CTYPE = 'METRO2'.

  WRITE:/ 'VALUE OF PINCODE IN SUB ROUTINE ', pincode,
        / 'VALUE OF CNAME IN SUB ROUTINE', cname,
        / 'VALUE OF CCTYPE IN SUB ROUTINE', CTYPE.
ENDFORM.
