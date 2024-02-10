*&---------------------------------------------------------------------*
*& Report zconstrutores_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zconstrutores_eri001.

CLASS LCL_DOMINIO DEFINITION.
    PUBLIC SECTION.
        DATA:
            NOME    TYPE DD01L-domname,
            TAB_A   TYPE TABLE OF dd07v,
            TAB_B   TYPE TABLE OF dd07v.

    CLASS-METHODS:
        CLASS_CONSTRUCTOR.

    METHODS:
        CONSTRUCTOR IMPORTING IV_NOME TYPE DD01L-domname,
        RESGATAR_VALORES.

ENDCLASS.

    START-OF-SELECTION.
    DATA:
        LO_DOMINIO_XFELD TYPE REF TO lcl_dominio.

        CREATE OBJECT lo_dominio_xfeld
          EXPORTING
            iv_nome = 'XFELD'.

        CREATE OBJECT lo_dominio_xfeld
          EXPORTING
            iv_nome = 'XFELD'.



          .

CLASS lcl_dominio IMPLEMENTATION.
    METHOD resgatar_valores.
        CALL FUNCTION 'DD_DOMA_GET'
          EXPORTING
            domain_name   = NOME
          TABLES
            dd07v_tab_a   = TAB_A
            dd07v_tab_n   = TAB_B
          EXCEPTIONS
            illegal_value = 1
            op_failure    = 2
            others        = 3
          .
        IF SY-SUBRC <> 0.
        " DEU ERRO, MAS NÃO FAÇA NADA
        ENDIF.
    ENDMETHOD.

    METHOD constructor.

    NOME = IV_NOME.
    WRITE:/ 'O DOMINIO', NOME, 'FOI CRIADO'.

    ENDMETHOD.

    METHOD class_constructor.
        WRITE:/ 'CLASSE INICIADA'.

    ENDMETHOD.


ENDCLASS.
