*&---------------------------------------------------------------------*
*& Report zatributos_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zatributos_eri001.

CLASS LCL_LOUCUTOR DEFINITION.
    PUBLIC SECTION.
        CLASS-DATA:
                  INSTANCIA TYPE REF TO lcl_loucutor.
        DATA:
            NOME TYPE STRING,
            IDADE           TYPE I,
            ULTIMA_MENSAGEM TYPE STRING.
    CLASS-METHODS:
        GERAR_INSTACIA RETURNING VALUE(INSTANCIA) TYPE REF TO lcl_loucutor.

    METHODS:
        FALAR IMPORTING IV_MENSAGEM TYPE STRING.

ENDCLASS.

CLASS LCL_LOUCUTOR IMPLEMENTATION.
    METHOD FALAR.
    ENDMETHOD.

    METHOD gerar_instacia.
    ENDMETHOD.

ENDCLASS.
