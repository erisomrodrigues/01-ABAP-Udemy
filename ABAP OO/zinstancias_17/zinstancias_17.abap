*&---------------------------------------------------------------------*
*& Report zinstancias_17
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zinstancias_17.

CLASS lcl_loucutor DEFINITION.
  PUBLIC SECTION.
    DATA:
      nome            TYPE string,
      idade           TYPE i,
      ultima_mensagem TYPE string.

    METHODS:
      falar IMPORTING iv_mensagem TYPE string.

ENDCLASS.

START-OF-SELECTION.
  DATA: o_loucutor TYPE REF TO lcl_loucutor.

  CREATE OBJECT o_loucutor.

" EXEMPLO DO USO DO IS BOUND PARA VERIFICAR SE O OBJETO FOI CRIADO OU NÃO
*  IF NOT o_loucutor IS BOUND.
*    WRITE:/ 'OBJTO NÃO CRIADO'.
*  ELSE.
*    WRITE:/ 'OBJETO CRIADO'.
*  ENDIF.


  WRITE:/ o_loucutor->nome.

CLASS lcl_loucutor IMPLEMENTATION.
  METHOD falar.
  ENDMETHOD.
ENDCLASS.
