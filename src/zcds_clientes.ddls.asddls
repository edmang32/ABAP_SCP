@AbapCatalog.sqlViewName: 'ZCDSV_CLIENTES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
@UI.headerInfo : { typeName       : 'Cliente',
                   title          : {type  : #STANDARD,
                                     value : 'NombreCompleto' },
                   description    : {type  : #STANDARD,
                                     value : 'IdCliente'},
                   imageUrl       : 'Imagen'}
define view ZCDS_CLIENTES
  as select from ztb_clientes0137 as clientes
    inner join   ztb_clntslib0137 as cltslibs on cltslibs.id_cliente = clientes.id_cliente
{
  key id_libro            as IdLibro,
  key clientes.id_cliente as IdCliente,
  key tipo_acceso         as Acceso,
      nombre              as Nombre,
      apellidos           as Apellidos,
      email               as email,
      url                 as Imagen,
      concat_with_space(nombre, apellidos, 1) as NombreCompleto
}
