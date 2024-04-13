*&---------------------------------------------------------------------*
*& Report ZATRIBUTOS_VARIAVEIS_ERI001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zatributos_variaveis_eri001.

CLASS lcl_loucutor DEFINITION.
  PUBLIC SECTION.
    DATA:
      nome            TYPE string,
      idade           TYPE i,
      ultima_mensagem TYPE string.

    METHODS:
      constructor IMPORTING iv_nome  TYPE string
                            iv_idade TYPE i OPTIONAL,

      falar       IMPORTING iv_mensagem        TYPE string       OPTIONAL
                            it_mensagem        TYPE string_table OPTIONAL
                            iv_ultima_mensagem TYPE boolean OPTIONAL
                              PREFERRED PARAMETER iv_mensagem,
      dizer_ultima_mensagem.

ENDCLASS.

START-OF-SELECTION.
  DATA: lo_loucutor1 TYPE REF TO lcl_loucutor.

  CREATE OBJECT lo_loucutor1
    EXPORTING
      iv_nome  = 'MAX'
      iv_idade = 23.

  lo_loucutor1->falar( 'OLÁ, SEJAM BEM VINDOS' ).
  lo_loucutor1->falar( 'QUERO CAFÉ' ).

  lo_loucutor1->dizer_ultima_mensagem( ).

  lo_loucutor1->falar( 'QUERO IR PARA CASA' ).
  lo_loucutor1->falar( 'Quero dormir' ).
CLASS lcl_loucutor IMPLEMENTATION.
  METHOD constructor.
   ME->nome = iv_nome.
   ME->idade = iv_idade.
  ENDMETHOD.

  METHOD falar.
    IF iv_ultima_mensagem IS NOT SUPPLIED.
      WRITE:/ 'O LOUCUTOR', NOME COLOR COL_TOTAL, 'DIZ:', iv_mensagem COLOR COL_POSITIVE.
    ELSE.
      WRITE:/ 'O LOUCUTOR', NOME, 'DIZ NOVAMENTE:', iv_mensagem COLOR COL_GROUP.
    ENDIF.

    ultima_mensagem = iv_mensagem.

  ENDMETHOD.

  METHOD dizer_ultima_mensagem.
    DATA: ultima_mensagem TYPE string.

     me->falar( iv_mensagem        = me->ultima_mensagem
                iv_ultima_mensagem = abap_true ).
*    WRITE:/ 'ULTIMA MENSAGEM DITA: ', me->ultima_mensagem COLOR COL_GROUP.
  ENDMETHOD.

ENDCLASS.
