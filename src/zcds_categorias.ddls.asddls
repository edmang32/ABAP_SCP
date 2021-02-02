@AbapCatalog.sqlViewName: 'ZCDSV_CATEGORIAS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorías'
define view ZCDS_CATEGORIAS as select from ztb_catego_0137 {
    key bi_categ    as Categoria,
        descripcion as Descripcion
}
