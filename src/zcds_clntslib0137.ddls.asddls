@AbapCatalog.sqlViewName: 'ZV_CLNTSLIB0137'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Clientes Libros'
define view ZCDS_CLNTSLIB0137 as select from ztb_clntslib0137 {
    key id_libro,
    count(distinct id_cliente) as VENTAS
}
group by id_libro
