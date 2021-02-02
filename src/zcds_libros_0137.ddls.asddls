@AbapCatalog.sqlViewName: 'ZCDS_LIBROS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.allowExtensions: true
@Search.searchable: true
@UI.headerInfo : { typeName       : 'Libro',
                   typeNamePlural : 'Libros',
                   title          : {type  : #STANDARD,
                                     value : 'Titulo' },
                   description    : {type  : #STANDARD,
                                     value : 'Autor'},
                   imageUrl       : 'Imagen'}
define view ZCDS_LIBROS_0137
  as select from    ztb_libros_0137   as libros
    inner join      ztb_catego_0137   as catego on libros.bi_categ = catego.bi_categ
    left outer join ZCDS_CLNTSLIB0137 as ventas on libros.id_libro = ventas.id_libro
  association [0..*] to ZCDS_CLIENTES as _clientes on $projection.IdLibro = _clientes.IdLibro
{
  key libros.id_libro as IdLibro,
      titulo          as Titulo,
      libros.bi_categ as Categoria,
      autor           as Autor,
      editorial       as Editorial,
      idioma          as Idioma,
      paginas         as Paginas,
      @Semantics.amount.currencyCode: 'moneda'
      precio          as Precio,
      case
      when ventas.VENTAS < 1 then 0
      when ventas.VENTAS = 1 then 1
      when ventas.VENTAS = 2 then 2
      when ventas.VENTAS > 2 then 3
      else 0
      end             as Ventas,
      case ventas.VENTAS
      when 0 then ''
      else ''
      end             as Text,
      @Semantics.currencyCode
      moneda          as Moneda,
      formato         as Formato,
      descripcion     as Descripcion,
      url             as Imagen,
      _clientes
}
