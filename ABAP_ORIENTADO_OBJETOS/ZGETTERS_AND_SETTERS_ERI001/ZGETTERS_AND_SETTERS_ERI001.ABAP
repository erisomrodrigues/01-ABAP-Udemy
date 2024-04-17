*&---------------------------------------------------------------------*
*& Report ZGETTERS_AND_SETTERS_ERI001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgetters_and_setters_eri001.

CLASS lcl_doc_contabil DEFINITION.
  PUBLIC SECTION.
    METHODS:
      constructor IMPORTING iv_belnr TYPE belnr_d
                            iv_bukrs TYPE bukrs
                            iv_gjahr TYPE gjahr
                            iv_blart TYPE blart OPTIONAL,

      apresentar_documento,

      set_blart IMPORTING iv_blart TYPE blart,     "Define
      get_blart RETURNING VALUE(return) TYPE blart, "Resgata

      set_belnr IMPORTING iv_belnr TYPE belnr_d,
      get_belnr RETURNING VALUE(return) TYPE  belnr_d.

  PRIVATE SECTION.
    DATA:
      belnr TYPE belnr_d,
      bukrs TYPE bukrs,
      gjahr TYPE gjahr,
      blart TYPE blart.
ENDCLASS.

START-OF-SELECTION.
  DATA: lo_documento TYPE REF TO lcl_doc_contabil.

  CREATE OBJECT lo_documento
    EXPORTING
      iv_belnr = '1'
      iv_bukrs = '9999'
      iv_gjahr = '2019'.

  lo_documento->set_blart( 'DZ' ).
  lo_documento->apresentar_documento( ).
  lo_documento->set_blart( 'PC' ).
  lo_documento->apresentar_documento( ).

  WRITE:/ lo_documento->get_belnr( ).


CLASS lcl_doc_contabil IMPLEMENTATION.
  "$. Region Gettes e Setters
  METHOD set_blart.
    me->blart = iv_blart.
  ENDMETHOD.

  METHOD get_blart.
    blart = me->blart.
  ENDMETHOD.

  METHOD set_belnr.
    me->belnr = iv_belnr.
  ENDMETHOD.
  METHOD get_belnr.
    belnr = me->belnr.
  ENDMETHOD.
  "$. Endregion Gettes e Setters

  METHOD constructor.
    me->belnr = iv_belnr.
    me->bukrs = iv_bukrs.
    me->gjahr = iv_gjahr.
    me->blart = iv_blart.
  ENDMETHOD.

  METHOD apresentar_documento.
    WRITE:/'Documento contábil',me->belnr,
    /'Exercício',me->bukrs,
    /'Empresa',me->gjahr,
    /'Tipo de documento',me->blart.
  ENDMETHOD.
ENDCLASS.
