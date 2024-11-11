TYPES: BEGIN OF ty_india,
         pincode TYPE i,
         cname   TYPE string,
         ctype   TYPE string,
       END OF ty_india.

DATA: it_india TYPE TABLE OF ty_india,
      wa_india TYPE ty_india.


PERFORM sub7. "TABLES it_india. " SYNTAX ERROR

PERFORM display_it_india TABLES it_india.

ULINE.

PERFORM process_it_india TABLES it_india.

PERFORM display_it_india TABLES it_india.

FORM sub7. "TABLES   p_it_india STRUCTURE it_india.


  wa_india-pincode = 100001.
  wa_india-cname = 'NEW DELHI'.
  wa_india-ctype = 'METRO'.
  APPEND wa_india TO it_india.

  wa_india-pincode = 100002.
  wa_india-cname = 'NEW DELHI2'.
  wa_india-ctype = 'METRO2'.
  APPEND wa_india TO it_india.

  wa_india-pincode = 100003.
  wa_india-cname = 'NEW DELHI3'.
  wa_india-ctype = 'METRO3'.
  APPEND wa_india TO it_india.

  wa_india-pincode = 100004.
  wa_india-cname = 'NEW DELHI4'.
  wa_india-ctype = 'METRO4'.
  APPEND wa_india TO it_india.

  wa_india-pincode = 100005.
  wa_india-cname = 'NEW DELHI5'.
  wa_india-ctype = 'METRO5'.
  APPEND wa_india TO it_india.

ENDFORM.

FORM display_it_india  TABLES   p_it_india. "STRUCTURE it_india.
  LOOP AT p_it_india INTO wa_india.
    WRITE:/ wa_india-pincode, wa_india-cname, wa_india-ctype.
  ENDLOOP.
ENDFORM.

*FORM process_it_india  TABLES   p_it_india STRUCTURE IT_india. " SYNTAX ERROR IN STRUCTURE.
FORM process_it_india  TABLES p_it_india STRUCTURE WA_india.

  DELETE p_it_india WHERE ctype = 'METRO3'.

ENDFORM.
