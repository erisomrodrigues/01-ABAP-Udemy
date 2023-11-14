REPORT zaula.

TYPE-POOLS: slis.

DATA: lt_fieldcat TYPE slis_t_fieldcat_alv,
      ls_layout   TYPE slis_layout_alv.


SELECT *
  INTO TABLE @DATA(lt_ekko)
  FROM ekko.

"Cria o lt_fieldcat[] com base em uma estrutura de dados criados na SE11.
CALL FUNCTION 'REUSE_ALV_FIELDCATALOG_MERGE'
  EXPORTING
    i_structure_name = 'ekko'
  CHANGING
    ct_fieldcat      = lt_fieldcat[].

ls_layout-colwidth_optimize = 'x'. "SIGGA56 - colunas com as lacunas configuradas automaticamente

CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    is_layout     = ls_layout
    it_fieldcat   = lt_fieldcat[]
  TABLES
    t_outtab      = lt_ekko[] "Tabela interna de saída. (Retorno dos dados)
  EXCEPTIONS
    program_error = 1
    OTHERS        = 2.
