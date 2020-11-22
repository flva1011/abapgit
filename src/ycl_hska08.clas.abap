CLASS ycl_hska08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.

    TYPES: BEGIN OF ts_person,
             id        TYPE i,
             firstname TYPE c LENGTH 20,
             lastname  TYPE c LENGTH 20,
             age       TYPE i,
             gender    TYPE c LENGTH 1,
           END OF ts_person.

    TYPES: BEGIN OF ts_person2,
             id        TYPE i,
             firstname TYPE c LENGTH 40,
             lastname  TYPE c LENGTH 40,
             age       TYPE i,
             gender    TYPE c LENGTH 1,
           END OF ts_person2.

    METHODS:
      idiot,
      idiot2,
      idiot3.

    DATA: mo_out TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.

CLASS ycl_hska08 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    mo_out = out.

    idiot3(  ).

  ENDMETHOD.

  METHOD idiot3.

    TYPES: tt_person        TYPE STANDARD TABLE OF ts_person WITH NON-UNIQUE KEY id.

    DATA: lt_person TYPE tt_person.

    FIELD-SYMBOLS: <ls_person2> TYPE ts_person,
                   <ls_person3> TYPE ts_person,
                   <ls_person4> TYPE ts_person.

    APPEND INITIAL LINE TO lt_person ASSIGNING <ls_person3>.
    <ls_person3> = VALUE ts_person(
    id = 2
    firstname = 'Jürgen'
    lastname = 'Gertbrenner'
    age = 4
    gender = 'd').

    APPEND INITIAL LINE TO lt_person ASSIGNING <ls_person4>.
    <ls_person4> = VALUE ts_person(
    id = 1
    firstname = 'Gudrun'
    lastname = 'Wirtskrepper'
    age = 3
    gender = 'm').

    APPEND INITIAL LINE TO lt_person.
    APPEND INITIAL LINE TO lt_person.

    READ TABLE lt_person INDEX 2 INTO DATA(ls_person).
    READ TABLE lt_person INDEX 3 ASSIGNING <ls_person2>.

*    this can't do anything
    ls_person-firstname = 'Rudolf'.

    <ls_person2>-id = 7.
    <ls_person2>-firstname = 'Max'.
    <ls_person2>-lastname = 'Malmer'.

    mo_out->write( lt_person ).

    SORT lt_person BY firstname ASCENDING lastname DESCENDING.

    mo_out->write( lt_person ).

  ENDMETHOD.

  METHOD idiot2.

    TYPES: standard_tabelle TYPE STANDARD TABLE OF i.

    DATA: tabelle TYPE standard_tabelle.

*    INSERT 8 INTO tabelle.
    APPEND 3 TO tabelle.
    APPEND 53 TO tabelle.
    APPEND 63 TO tabelle.
    APPEND 36 TO tabelle.
    APPEND 763 TO tabelle.
    APPEND 63 TO tabelle.
    APPEND 37 TO tabelle.
    APPEND 53 TO tabelle.

    mo_out->write( tabelle ).

    SORT tabelle DESCENDING.

    mo_out->write( tabelle ).

  ENDMETHOD.

  METHOD idiot.

*    out->write( 'Hello ABAP!' ).

    DATA(ls_person) = VALUE ts_person(
    id = 0
    firstname = 'Jürgen'
    lastname = 'Gertbrenner'
    age = 4
    gender = 'd').

    mo_out->write( ls_person ).

    DATA(ls_person2) = VALUE ts_person2(
    id = 1
    firstname = 'Gudrun'
    lastname = 'Wirtskrepper'
    age = 3
    gender = 'm').

*    ls_person2 = ls_person.
    MOVE-CORRESPONDING ls_person TO ls_person2.
*    ls_person2 = CORRESPONDING #( ls_person ).

    mo_out->write( ls_person2 ).

  ENDMETHOD.

ENDCLASS.
