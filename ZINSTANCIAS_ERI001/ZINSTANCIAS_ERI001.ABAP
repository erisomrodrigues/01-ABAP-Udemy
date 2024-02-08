*&---------------------------------------------------------------------*
*& Report zinstancias_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zinstancias_eri001.

CLASS lcl_loucutor DEFINITION.
  PUBLIC SECTION.
    DATA:
      nome            TYPE string,
      idade           TYPE i,
      ultima_mensagem TYPE string.

    METHODS:
      falar           IMPORTING iv_mensagem TYPE string.

ENDCLASS.

DATA:
    O_LOUCUTOR TYPE REF TO lcl_loucutor.

CREATE OBJECT o_loucutoR.
    WRITE:/ o_loucutor->nome.

if O_LOUCUTOR IS NOT BOUND.
    WRITE:/ 'OBJETO NÃO CRIADO'.
else.
    WRITE:/ 'OBJETOS CRIADO'.
endif.

CLASS lcl_loucutor IMPLEMENTATION.
  METHOD falar.

  ENDMETHOD.

ENDCLASS.
