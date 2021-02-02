CLASS zcl_books_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_books_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*   Internal Tables
    DATA:
      lt_acccateg TYPE TABLE OF ztb_acccateg0137,
      lt_catego   TYPE TABLE OF ztb_catego_0137,
      lt_clientes TYPE TABLE OF ztb_clientes0137,
      lt_clntslib TYPE TABLE OF ztb_clntslib0137,
      lt_libros   TYPE TABLE OF ztb_libros_0137.


* Categorías / Tipo Acceso ztb_acccateg0137
    lt_acccateg = VALUE #(
      ( bi_categ    = 'A' tipo_acceso = '1')
      ( bi_categ    = 'B' tipo_acceso = '2')
      ( bi_categ    = 'C' tipo_acceso = '3')
    ).
    DELETE FROM ztb_acccateg0137.
    INSERT ztb_acccateg0137 FROM TABLE @lt_acccateg.


* Categorías / Descripción ZTB_CATEGO_0137
    lt_catego = VALUE #(
    ( bi_categ = 'A' descripcion = 'A - Categoría A')
    ( bi_categ = 'B' descripcion = 'B - Categoría B')
    ( bi_categ = 'C' descripcion = 'C - Categoría C')
    ).
    DELETE FROM ztb_catego_0137.
    INSERT ztb_catego_0137 FROM TABLE @lt_catego.

* Clientes ZTB_CLIENTES0137
    lt_clientes = VALUE #(
    ( id_cliente = 'C001'  tipo_acceso = '1'  nombre = 'Cliente_1'  apellidos = 'UNO'  email = 'clt1@gmail.com'   url = 'www.c1.com.mx')
    ( id_cliente = 'C002'  tipo_acceso = '2'  nombre = 'Cliente_2'  apellidos = 'DOS'  email = 'clt2@gmail.com'   url = 'www.c2.com.mx')
    ( id_cliente = 'C003'  tipo_acceso = '3'  nombre = 'Cliente_3'  apellidos = 'TRES' email = 'clt3@gmail.com'   url = 'www.c3.com.mx')
  ).
    DELETE FROM ztb_clientes0137.
    INSERT ztb_clientes0137 FROM TABLE @lt_clientes.

* Libros ZTB_LIBROS_0137
    lt_libros = VALUE #(
    ( id_libro = 'LBR1'  bi_categ = 'A' Titulo = 'Título LIBUNO'  autor = 'AutorUNO'  editorial = 'Editorial UNO'  Idioma = 'S' paginas = '1' precio = '1.1' moneda = 'MXN' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = 'LBR2'  bi_categ = 'B' Titulo = 'Título LIBDOS'  autor = 'AutorDOS'  editorial = 'Editorial DOS'  Idioma = 'S' paginas = '2' precio = '2.2' moneda = 'MXN' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = 'LBR3'  bi_categ = 'C' Titulo = 'Título LIBTRES' autor = 'AutorTRES' editorial = 'Editorial TRES' Idioma = 'S' paginas = '3' precio = '3.3' moneda = 'MXN' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ).
    DELETE FROM ztb_libros_0137.
    INSERT ztb_libros_0137 FROM TABLE @lt_libros.


* Clientes / Libros ZTB_CLNTSLIB0137
    lt_clntslib = VALUE #(
    ( Id_cliente = 'C001' id_libro = 'LBR1' )
    ( Id_cliente = 'C002' id_libro = 'LBR2' )
    ( Id_cliente = 'C003' id_libro = 'LBR3' )
    ).
    DELETE FROM ztb_clntslib0137.
    INSERT ztb_clntslib0137 FROM TABLE @lt_clntslib.


  ENDMETHOD.

ENDCLASS.
