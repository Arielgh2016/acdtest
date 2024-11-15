namespace dp;

entity cl_n3_maestroProduccion
{
    key ID_ORDER_VP_NSAM : String(20);
    key ASSIGNMENT_PERIOD : String(7);
    key EIM : String(18);
    key COUNTRY : String(10);
    DATE_CREATION_ORDER_VP_NSAM : String(8);
    DATE_CHANGE_ORDER_VP_NSAM : String(8);
    STATUS_VEHICLE : String(2);
    ALLOCATION_KEY_CODE : String(1);
    DATE_CODE_STATUS_EVENT : String(8);
    PRODUCTION_ORDER_RECEIVER : String(2);
    BUYER_CODE : String(6);
    ORDER_TAKE_BASE_PERIOD : String(8);
    ETA_ASN : String(8);
    ETD_ASN : String(8);
    CAR_SERIES : String(6);
    DESCRIPTION_EIM : String(5000);
    EXTERIOR_COLOR_CODE : String(3);
    INTERIOR_COLOR_CODE : String(2);
    PLANNED_PRODUCTION_DATE_OFFLINE : String(8);
    PRODUCTION_FAMILY_CODE : String(8);
    VESSEL_CODE : String(5000);
    VESSEL_NAME : String(5000);
    PORT_DEPARTURE : String(5000);
    PORT_ARRIVAL : String(5000);
    ETA : String(8);
    ETD : String(8);
    DATE_CONFIRMED_ETA : String(8);
    VIN_CODE : String(17);
    DATE_EVENT_CODE_5_PLANNED : FechaEvent;
    DATE_EVENT_CODE_5_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_6_PLANNED : FechaEvent;
    DATE_EVENT_CODE_6_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_7_PLANNED : FechaEvent;
    DATE_EVENT_CODE_7_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_8_PLANNED : FechaEvent;
    DATE_EVENT_CODE_8_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_9_PLANNED : FechaEvent;
    DATE_EVENT_CODE_9_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_10_PLANNED : FechaEvent;
    DATE_EVENT_CODE_10_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_11_PLANNED : FechaEvent;
    DATE_EVENT_CODE_11_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_20_PLANNED : FechaEvent;
    DATE_EVENT_CODE_20_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_25_PLANNED : FechaEvent;
    DATE_EVENT_CODE_25_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_30_PLANNED : FechaEvent;
    DATE_EVENT_CODE_30_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_35_PLANNED : FechaEvent;
    DATE_EVENT_CODE_35_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_40_PLANNED : FechaEvent;
    DATE_EVENT_CODE_40_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_50_PLANNED : FechaEvent;
    DATE_EVENT_CODE_50_ACTUAL : FechaEvent;
    DATE_CREATION : String(8);
    DATE_MODIFICATION : String(8);
    DEALER_ID : String(12);
    DATE_ASSIGNMENT : String(8);
    STOCK_PISO : String(1);
    CODCANAL : Integer;
    SKU : String(15);
    DATE_PLANNED_WHOLESALE : FechaEvent;
    DATE_PLANNED_ARRIVAL : FechaEvent;
    DATE_REAL_WHOLESALE : FechaEvent;
    DATE_REAL_ARRIVAL : FechaEvent;
    BLOQUEADO : String(1);
    COMENTARIO_BLOQUEO : String(255);
    DATE_BLOQUEO : String(8);
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = DEALER_ID;
    NavToColor : Association to one cl_n3_color on NavToColor.codcolor = EXTERIOR_COLOR_CODE and NavToColor.country = COUNTRY;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = EIM and NavToVehiculo.country = COUNTRY;
    NavToCanal : Association to one cl_n3_canales_ventas on NavToCanal.codcanal = CODCANAL;
    NavToOrden : Association to one cl_n3_DetalleAsignacion on NavToOrden.id_order_vp_nsam = ID_ORDER_VP_NSAM and NavToOrden.codestadoasignacion = 1 and NavToOrden.country = COUNTRY;
    NavToDocumentos : Association to many cl_n3_documentos on NavToDocumentos.vin = VIN_CODE;
    NavToVLC : Association to one CL_N3_VLCVEHICLE_ABAP on NavToVLC.VHVIN = VIN_CODE;
}

entity cl_n3_maestroProduccion_hist
{
    ID_ORDER_VP_NSAM : String(20);
    ASSIGNMENT_PERIOD : String(7);
    EIM : String(18);
    COUNTRY : String(10);
    DATE_CREATION_ORDER_VP_NSAM : String(8);
    DATE_CHANGE_ORDER_VP_NSAM : String(8);
    STATUS_VEHICLE : String(2);
    ALLOCATION_KEY_CODE : String(1);
    DATE_CODE_STATUS_EVENT : String(8);
    PRODUCTION_ORDER_RECEIVER : String(2);
    BUYER_CODE : String(6);
    ORDER_TAKE_BASE_PERIOD : String(8);
    ETA_ASN : String(8);
    ETD_ASN : String(8);
    CAR_SERIES : String(6);
    DESCRIPTION_EIM : String(5000);
    EXTERIOR_COLOR_CODE : String(3);
    INTERIOR_COLOR_CODE : String(2);
    PLANNED_PRODUCTION_DATE_OFFLINE : String(8);
    PRODUCTION_FAMILY_CODE : String(8);
    VESSEL_CODE : String(5000);
    VESSEL_NAME : String(5000);
    PORT_DEPARTURE : String(5000);
    PORT_ARRIVAL : String(5000);
    ETA : String(8);
    ETD : String(8);
    DATE_CONFIRMED_ETA : String(8);
    VIN_CODE : String(17);
    DATE_EVENT_CODE_5_PLANNED : FechaEvent;
    DATE_EVENT_CODE_5_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_6_PLANNED : FechaEvent;
    DATE_EVENT_CODE_6_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_7_PLANNED : FechaEvent;
    DATE_EVENT_CODE_7_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_8_PLANNED : FechaEvent;
    DATE_EVENT_CODE_8_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_9_PLANNED : FechaEvent;
    DATE_EVENT_CODE_9_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_10_PLANNED : FechaEvent;
    DATE_EVENT_CODE_10_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_11_PLANNED : FechaEvent;
    DATE_EVENT_CODE_11_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_20_PLANNED : FechaEvent;
    DATE_EVENT_CODE_20_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_25_PLANNED : FechaEvent;
    DATE_EVENT_CODE_25_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_30_PLANNED : FechaEvent;
    DATE_EVENT_CODE_30_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_35_PLANNED : FechaEvent;
    DATE_EVENT_CODE_35_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_40_PLANNED : FechaEvent;
    DATE_EVENT_CODE_40_ACTUAL : FechaEvent;
    DATE_EVENT_CODE_50_PLANNED : FechaEvent;
    DATE_EVENT_CODE_50_ACTUAL : FechaEvent;
    DATE_CREATION : String(8);
    DATE_MODIFICATION : String(8);
    DEALER_ID : String(12);
    DATE_ASSIGNMENT : String(8);
    STOCK_PISO : String(1);
    CODCANAL : Integer;
    SKU : String(15);
    DATE_PLANNED_WHOLESALE : FechaEvent;
    DATE_PLANNED_ARRIVAL : FechaEvent;
    DATE_REAL_WHOLESALE : FechaEvent;
    DATE_REAL_ARRIVAL : FechaEvent;
    BLOQUEADO : String(1);
    COMENTARIO_BLOQUEO : String(255);
    DATE_BLOQUEO : String(8);
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = DEALER_ID;
    NavToColor : Association to one cl_n3_color on NavToColor.codcolor = EXTERIOR_COLOR_CODE;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = EIM;
    NavToCanal : Association to one cl_n3_canales_ventas on NavToCanal.codcanal = CODCANAL;
    NavToOrden : Association to one cl_n3_DetalleAsignacion on NavToOrden.id_order_vp_nsam = ID_ORDER_VP_NSAM and NavToOrden.country = COUNTRY;
    NavToDocumentos : Association to one cl_n3_documentos on NavToDocumentos.vin = VIN_CODE;
}

entity cl_n3_Periodo
{
    key codperiodo : Integer;
    key pais : String(10);
    periodo : String;
    visi_vin : Integer;
}

entity cl_n3_EstadoPeriodo
{
    key codestado : Integer;
    estado : String;
}

entity cl_n3_ProcesoPeriodo
{
    key codperiodo : Integer;
    key country : String(10);
    key mes : Integer;
    key anio : Integer;
    key dealer_id : String(12);
    codestado : Integer;
    periodoproceso : String(7);
    fechaproceso : DateTime;
    aprobdom : String(1);
    fechavigencia : DateTime;
    observacion : String(255);
    NavToPeriodo : Association to one cl_n3_Periodo on NavToPeriodo.codperiodo = codperiodo;
    NavToEstado : Association to one cl_n3_EstadoPeriodo on NavToEstado.codestado = codestado;
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = dealer_id;
    NavToAsig : Association to one cl_n3_ResumenAsignacion on NavToAsig.dealer_id = dealer_id and NavToAsig.mes = mes and NavToAsig.anio = anio and NavToAsig.codperiodo = codperiodo;
}

entity cl_n3_ResumenAsignacion
{
    key codperiodo : Integer;
    key country : String(10);
    key mes : Integer;
    key anio : Integer;
    key dealer_id : String(12);
    key eim : String(18);
    sku : String(15);
    periodoproceso : String(7);
    cantasig1 : Integer;
    cantasig2 : Integer;
    stock_dealer : Integer;
    potenc_retail : Integer;
    fecha_asig : String(10);
    observacion : String(255);
    user_asig : String(25);
    asig_mos : String(10);
    cant_ajust : Integer;
    fecha_ajust : Date;
    user_ajust : String(25);
    ajus_mos : String(10);
    cant_dom : Integer;
    dom_mos : String(10);
    fecha_dom : Date;
    user_dom : String(25);
    estado_dom : String(1);
    obs_dom : String;
    cant_reque : Integer;
    flag_process : Integer;
    fecha_reque : Date;
    user_reque : String(25);
    reque_mos : String(10);
    cant_acept : Integer;
    fecha_acept : Date;
    user_acept : String(25);
    acept_mos : String(10);
    acept_dealer : String(1);
    fechacreacion : Date;
    NavToPeriodo : Association to one cl_n3_Periodo on NavToPeriodo.codperiodo = codperiodo;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim and NavToVehiculo.country = country;
    NavToDistColor : Association to many cl_n3_DistribucionColores on NavToDistColor.sku = sku and NavToDistColor.country = country and NavToDistColor.anio = anio and NavToDistColor.mes = mes and NavToDistColor.dealer_id = dealer_id and NavToDistColor.cantidad > 0;
    NavToDistColorMasCeros : Association to many cl_n3_DistribucionColores on NavToDistColorMasCeros.sku = sku and NavToDistColorMasCeros.country = country and NavToDistColorMasCeros.anio = anio and NavToDistColorMasCeros.mes = mes and NavToDistColorMasCeros.dealer_id = dealer_id and NavToDistColorMasCeros.cantidad >= 0;
    NavToProceso : Association to one cl_n3_ProcesoPeriodo on NavToProceso.codperiodo = codperiodo and NavToProceso.country = country and NavToProceso.mes = mes and NavToProceso.anio = anio and NavToProceso.dealer_id = dealer_id;
}

entity cl_n3_ResumenAsignacion_hist
{
    key codperiodo : Integer;
    key country : String(10);
    key mes : Integer;
    key anio : Integer;
    key dealer_id : String(12);
    key eim : String(18);
    sku : String(15);
    periodoproceso : String(7);
    cantasig1 : Integer;
    cantasig2 : Integer;
    stock_dealer : Integer;
    potenc_retail : Integer;
    fecha_asig : String(10);
    observacion : String(255);
    user_asig : String(25);
    asig_mos : String(10);
    cant_ajust : Integer;
    fecha_ajust : Date;
    user_ajust : String(25);
    ajus_mos : String(10);
    cant_dom : Integer;
    dom_mos : String(10);
    fecha_dom : Date;
    user_dom : String(25);
    estado_dom : String(1);
    obs_dom : String;
    cant_reque : Integer;
    flag_process : Integer;
    fecha_reque : Date;
    user_reque : String(25);
    reque_mos : String(10);
    cant_acept : Integer;
    fecha_acept : Date;
    user_acept : String(25);
    acept_mos : String(10);
    acept_dealer : String(1);
    fechacreacion : Date;
    NavToPeriodo : Association to one cl_n3_Periodo on NavToPeriodo.codperiodo = codperiodo;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim and NavToVehiculo.country = country;
    NavToDistColor : Association to many cl_n3_DistribucionColores on NavToDistColor.sku = sku and NavToDistColor.country = country and NavToDistColor.anio = anio and NavToDistColor.mes = mes and NavToDistColor.dealer_id = dealer_id and NavToDistColor.cantidad > 0;
}

entity cl_n3_DealerParametros
{
    key dealer_id : String(12);
    key country : String(10);
    key codperiodo : Integer;
    perc_more : String(4);
    perc_less : String(4);
    max_asignacion_cero : Integer;
    NavToPeriodo : Association to one cl_n3_Periodo on NavToPeriodo.codperiodo = codperiodo;
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = dealer_id;
}

entity cl_n3_OperacionParametros
{
    key country : String(10);
    key parameter : String;
    value : String;
}

entity cl_n3_DistribucionColores
{
    key sku : String(15);
    key codcolor : String(10);
    key dealer_id : String(12);
    key country : String(10);
    key periodoasignacion : String(7);
    mes : Integer;
    anio : Integer;
    cantidad : Integer;
    cantidad_dealer : Integer;
    fechacreacion : Date default $now;
    procesado : String(1);
    cantidad_aceptada : Integer;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.sku = sku and NavToVehiculo.country = country;
    NavToColor : Association to one cl_n3_color on NavToColor.codcolor = codcolor and NavToColor.country = country;
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = dealer_id and NavToDealer.country = country;
}

entity cl_n3_DetalleAsignacion
{
    key idordendp : String(20);
    key id_order_vp_nsam : String(20);
    key country : String(10);
    eim : String(18);
    codcanal : Integer;
    sku : String(15);
    mes : Integer;
    anio : Integer;
    dealer_id : String(12);
    fecha_asig : DateTime;
    usuario : String;
    codestadoasignacion : Integer;
    is_freedemand0 : Integer;
    fecha_modificacion : DateTime;
    observacion : String;
    codcolor : String(10);
    tipo_asig : String(1);
    id_order_vp_nsam_ante : String(20);
    facturado : String(1);
    num_facturado : String(30);
    fec_facturado : String(24);
    NavtoProduccion : Association to one cl_n3_maestroProduccion on NavtoProduccion.ID_ORDER_VP_NSAM = id_order_vp_nsam;
    NavtoProduccionAnt : Association to one cl_n3_maestroProduccion on NavtoProduccionAnt.ID_ORDER_VP_NSAM = id_order_vp_nsam_ante;
    NavToEstadoAsignacion : Association to one cl_n3_EstadoAsignacion on NavToEstadoAsignacion.codestadoasignacion = codestadoasignacion;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim and NavToVehiculo.country = country;
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = dealer_id;
    NavToCanal : Association to one cl_n3_canales_ventas on NavToCanal.codcanal = codcanal and NavToCanal.country = country;
}

entity cl_n3_EstadoAsignacion
{
    key codestadoasignacion : Integer;
    estadoasignacion : String(20);
}

entity cl_n3_DetalleProduccion
{
    key id_order_vp_nsam : String(10);
    key country : String(10);
    eim : String(18);
    codcolor : String(10);
    vin : String(17);
    status_vehicle : String(2);
    periodoasignacion : String(7);
    asignado : String(1);
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
    NavToColor : Association to one cl_n3_color on NavToColor.codcolor = codcolor;
}

entity cl_n3_Freedemand
{
    key idfreedemand : Integer;
    key country : String(10);
    mes : Integer;
    anio : Integer;
    dealer_id : String(12);
    fechacreacion : Date;
    idmodelo : Integer;
    idversion : Integer;
    idcolor : String(5);
    requerido : Integer;
    user_reque : String(25);
    aceptado : Integer;
    fecha_acept : Date;
    user_acept : String(25);
    asignado : String(1);
    fecha_asignado : Date;
}

entity cl_n3_sku_details
{
    key country : String(10);
    key sku : String(15);
    key eim : String(18);
    displayed_order : Integer;
    model : String(25);
    version : String(60);
    origin : String(15);
    validity_date_start : String(10);
    validity_date_end : String(10);
    distribution_order : Integer;
    NavToMedia : Association to one cl_n3_sku_media on NavToMedia.model = model;
}

entity cl_n3_sku_media
{
    key country : String(10);
    key model : String(25);
    image : LargeBinary
        @Core.MediaType : imageType
        @Core.ContentDisposition : 
        {
            Filename : fileName
        };
    imageUrl : String;
    imageType : String
        @Core.IsMediaType;
    fileName : String;
}

entity cl_n3_dealers_details
{
    key country : String(10);
    key dealer_id : String(12);
    displayed_order : Integer;
    dealer_name : String(60);
    dealer_email : String(255);
    validity_date_start : String(10);
    validity_date_end : String(10);
}

entity cl_n3_dealer_sucursales
{
    key country : String(10);
    key dealer_id : String(12);
    key sucursal_id : String(12);
}

entity cl_n3_carflow
{
    key mes : Integer;
    key anio : Integer;
    key eim : String(18);
    key country : String(10);
    codcanal : Integer;
    cantidad : Integer;
    NavToCanal : Association to one cl_n3_canales_ventas on NavToCanal.codcanal = codcanal;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
}

entity cl_n3_canales_ventas
{
    key country : String(10);
    key codcanal : Integer;
    canal : String(25);
}

entity cl_n3_optimization_parameters
{
    key country : String(10);
    key parameter : String;
    value : Double;
}

entity cl_n3_origen_visibility
{
    key country : String(10);
    key codperiodo : Integer;
    key origin : String;
    visibility_percentage : Double;
    NavToPeriodo : Association to one cl_n3_Periodo on NavToPeriodo.codperiodo = codperiodo;
}

entity cl_n3_mos_target
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key sku : String(15);
    key eim : String(18);
    key dealer_id : String(12);
    mos_target : Double;
    mos_target_allowed_difference : Double;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
}

entity cl_n3_csa_segmento
{
    key country : String(10);
    key sku : String(15);
    eim : String(18);
    key dealer_id : String(12);
    csa : Double;
    segmento : Double;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = dealer_id;
}

entity cl_n3_forecast_retail
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key sku : String(15);
    key eim : String(18);
    forecast_rt : Integer;
    codcanal : Integer;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
    NavToCanal : Association to one cl_n3_canales_ventas on NavToCanal.codcanal = codcanal;
}

entity cl_n3_wholesale_forecast
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key codperiodo : Integer;
    key sku : String(15);
    eim : String(18);
    wholesale : Integer;
    t_arribos : Integer;
    e_arribos : Integer;
    stock_disp : Integer;
    stock_rest : Integer;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim and NavToVehiculo.country = country;
    NavToSkuDetails : Association to many cl_n3_sku_details on NavToSkuDetails.sku = sku and NavToSkuDetails.country = country;
    NavToPeriodo : Association to one cl_n3_Periodo on NavToPeriodo.codperiodo = codperiodo;
}

entity cl_n3_color_version
{
    key eim : String(18);
    key codcolor : String(10);
    NavToColor : Association to one cl_n3_color on NavToColor.codcolor = codcolor;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
}

entity cl_n3_color
{
    key country : String(10);
    key codcolor : String(10);
    color : String(60);
    color_fab : String(60);
}

entity cl_n3_diccionario_sku
{
    key country : String(10);
    key model : String(25);
    key version : String(60);
    key sku : String(15);
    key eim : String(18);
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
}

entity cl_n3_initial_stock
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key sku : String(15);
    key eim : String(18);
    key dealer_id : String(12);
    initial_stock : Integer;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
}

entity cl_n3_stock_nissan
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key sku : String(15);
    key eim : String(18);
    key dealer_id : String(12);
    floor_stock : Integer;
    arrival_stock : Integer;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
}

entity cl_n3_expected_sales
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key sku : String(15);
    key eim : String(18);
    key dealer_id : String(12);
    expected_sales : Integer;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
}

entity cl_n3_commitments
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key sku : String(15);
    key eim : String(18);
    key dealer_id : String(12);
    min_assigned_units : Integer;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
}

entity cl_n3_proposal
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key codperiodo : Integer;
    key sku : String(15);
    key eim : String(18);
    key dealer_id : String(12);
    model1_proposed_units : Integer;
    model2_proposed_units : Integer;
    observations : String;
    NavToVehiculo : Association to one cl_n3_sku_details on NavToVehiculo.eim = eim;
}

entity cl_n3_dealer_dom
{
    key country : String(10);
    key email_dom : String(60);
    nombre_dom : String(60);
    key dealer_id : String(12);
    notifica : String(1);
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = dealer_id;
}

entity cl_n3_estados_tracking
{
    key country : String(10);
    key estado_sap : String(10);
    key estado_dp : String(50);
    order : Integer;
}

entity cl_n3_notificaciones
{
    key country : String(10);
    key rol : String(10);
    key email : String(60);
    nombre : String(60);
}

entity cl_n3_master_dom
{
    key country : String(10);
    key dom_id : String(12);
    nombre_dom : String(60);
    email_dom : String(60);
    notifica : String(1);
}

entity cl_n3_carga_necesidades
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key codcanal : Integer;
    key sku : String(15);
    key periodo : String(60);
    key codcolor : String(10);
    cantidad : Integer;
    cant_orig : Integer;
    beneficiario : String(100);
    dealer_id : String(12);
    user_carga : String(25);
    fecha_carga : String(12);
    estado_carga : String(10);
    ico_estado : String(25);
    NavToCanal : Association to one cl_n3_canales_ventas on NavToCanal.codcanal = codcanal and NavToCanal.country = country;
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = dealer_id;
    NavToColor : Association to one cl_n3_color on NavToColor.codcolor = codcolor and NavToColor.country = country;
    NavToVehiculo : Association to many cl_n3_sku_details on NavToVehiculo.sku = sku and NavToVehiculo.country = country;
}

entity cl_n3_temp_pais
{
    key country : String(10);
    correo : String(60);
}

entity cl_n3_historic_sales
{
    key country : String(10);
    key year : Integer;
    key month : Integer;
    key sku : String(15);
    key dealer_id : String(12);
    eim : String(18);
    sales : Integer;
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = dealer_id;
    NavToSkuDetails : Association to many cl_n3_sku_details on NavToSkuDetails.sku = sku;
}

entity cl_n3_errorlog_app
{
    key country : String(10);
    key processed_date : String(20);
    key module_name : String(10);
    error_message : String(100);
}

entity cl_n3_log_unidad
{
    country : String(10);
    id_order_vp_nsam : String(20);
    tipo_proceso : String(10);
    usuario : String(25);
    fecha_reg : String(20);
    dealer_id : String(12);
    motivo_obs : String(500);
}

entity cl_n3_documentos
{
    key country : String(10);
    key vin : String(17);
    key num_documento : String(20);
    clase_documento : String(5);
    des_documento : String(60);
    fec_documento : DateTime;
    dealer_id : String(12);
    canal_venta : String(10);
    procesado : String(1);
    fecha_registro : Date;
    observacion : String(255);
}

@cds.persistence.exists
entity CL_N3_VLCVEHICLE_ABAP
{
    MANDT : String(9);
    VGUID : String(66);
    VHCLE : String(30);
    MATNR : String(54);
    LIFNR : String(30);
    CHARG : String(30);
    EQUNR : String(54);
    WERKS : String(12);
    LGORT : String(12);
    BWTAR : String(30);
    CUOBJ : String(54);
    CUABA : String(12);
    MMCTR : String(12);
    MMSTA : String(12);
    MMTSP : Decimal(21,7);
    SDCTR : String(12);
    SDSTA : String(12);
    SDTSP : Decimal(21,7);
    KUNNR : String(30);
    ENDCU : String(30);
    VHVIN : String(105);
    VHCEX : String(105);
    AVAIL : String(6);
    VBLTY : String(3);
    LOCTN : String(30);
    GPRICE : Decimal(17,2);
    GPRICECUKY : String(15);
    CDTSP : Integer64;
    PSTSP : Integer64;
    PDTSP : Integer64;
    ERNAM : String(36);
    VHUSG : String(6);
    CMPGN : String(30);
    PCOUNT : Integer;
    PCOUNT_U : String(9);
    IMMATDATE : String(24);
    VHSAR : String(30);
    VHORD : String(30);
    SHLVL : String(6);
    ARCHIVE_FLAG : String(3);
    USED_VEHICLE : String(3);
    ZZCOLORE : String(90);
    ZZCUCOMER : String(12);
    ZZCODMOD : String(90);
    ZZTIPMOT : String(90);
    ZZNUMMOT : String(90);
    ZZINFTEC : String(90);
    ZZBODTYP : String(90);
    ZZCOLORI : String(90);
    ZZBODTYPPE : String(90);
    ZZMODPE : String(90);
    ZZAPROD : String(12);
    ZZMPROD : String(6);
    ZZPORIGEN : String(90);
    ZZAMODEL : String(12);
    NavToEstadoTracking : Association to one cl_n3_estados_tracking on NavToEstadoTracking.estado_sap = MMSTA;
    NavToVbrp : Association to one CL_N3_VBRP_ABAP on NavToVbrp.CHARG = CHARG;
    NavToDealer : Association to one cl_n3_dealers_details on NavToDealer.dealer_id = KUNNR;
}

@cds.persistence.exists
entity CL_N3_VBRP_ABAP
{
    MANDT : String(9);
    VBELN : String(30);
    POSNR : String(18);
    UEPOS : String(18);
    FKIMG : Decimal(13,3);
    VRKME : String(9);
    UMVKZ : Integer;
    UMVKN : Integer;
    MEINS : String(9);
    SMENG : Decimal(13,3);
    FKLMG : Decimal(13,3);
    LMENG : Decimal(13,3);
    NTGEW : Decimal(15,3);
    BRGEW : Decimal(15,3);
    GEWEI : String(9);
    VOLUM : Decimal(15,3);
    VOLEH : String(9);
    GSBER : String(12);
    PRSDT : String(24);
    FBUDA : String(24);
    KURSK : Decimal(9,5);
    NETWR : Decimal(15,2);
    VBELV : String(30);
    POSNV : String(18);
    VGBEL : String(30);
    VGPOS : String(18);
    VGTYP : String(3);
    AUBEL : String(30);
    AUPOS : String(18);
    AUREF : String(3);
    MATNR : String(54);
    ARKTX : String(120);
    PMATN : String(54);
    CHARG : String(30);
    MATKL : String(27);
    PSTYV : String(12);
    POSAR : String(3);
    PRODH : String(54);
    VSTEL : String(12);
    ATPKZ : String(3);
    SPART : String(6);
    POSPA : String(18);
    WERKS : String(12);
    ALAND : String(9);
    WKREG : String(9);
    WKCOU : String(9);
    WKCTY : String(12);
    TAXM1 : String(3);
    TAXM2 : String(3);
    TAXM3 : String(3);
    TAXM4 : String(3);
    TAXM5 : String(3);
    TAXM6 : String(3);
    TAXM7 : String(3);
    TAXM8 : String(3);
    TAXM9 : String(3);
    KOWRR : String(3);
    PRSFD : String(3);
    SKTOF : String(3);
    SKFBP : Decimal(13,2);
    KONDM : String(6);
    KTGRM : String(6);
    KOSTL : String(30);
    BONUS : String(6);
    PROVG : String(6);
    EANNR : String(39);
    VKGRP : String(9);
    VKBUR : String(12);
    SPARA : String(6);
    SHKZG : String(3);
    ERNAM : String(36);
    ERDAT : String(24);
    ERZET : String(18);
    BWTAR : String(30);
    LGORT : String(12);
    STAFO : String(18);
    WAVWR : Decimal(13,2);
    KZWI1 : Decimal(13,2);
    KZWI2 : Decimal(13,2);
    KZWI3 : Decimal(13,2);
    KZWI4 : Decimal(13,2);
    KZWI5 : Decimal(13,2);
    KZWI6 : Decimal(13,2);
    STCUR : Decimal(9,5);
    UVPRS : String(3);
    UVALL : String(3);
    EAN11 : String(54);
    PRCTR : String(30);
    KVGR1 : String(9);
    KVGR2 : String(9);
    KVGR3 : String(9);
    KVGR4 : String(9);
    KVGR5 : String(9);
    MVGR1 : String(9);
    MVGR2 : String(9);
    MVGR3 : String(9);
    MVGR4 : String(9);
    MVGR5 : String(9);
    MATWA : String(54);
    BONBA : Decimal(13,2);
    KOKRS : String(12);
    PAOBJNR : String(30);
    PS_PSP_PNR : String(24);
    AUFNR : String(36);
    TXJCD : String(45);
    CMPRE : Decimal(11,2);
    CMPNT : String(3);
    CUOBJ : String(54);
    CUOBJ_CH : String(54);
    KOUPD : String(3);
    UECHA : String(18);
    XCHAR : String(3);
    ABRVW : String(9);
    SERNR : String(24);
    BZIRK_AUFT : String(18);
    KDGRP_AUFT : String(6);
    KONDA_AUFT : String(6);
    LLAND_AUFT : String(9);
    MPROK : String(3);
    PLTYP_AUFT : String(6);
    REGIO_AUFT : String(9);
    VKORG_AUFT : String(12);
    VTWEG_AUFT : String(6);
    ABRBG : String(24);
    PROSA : String(3);
    UEPVW : String(3);
    AUTYP : String(3);
    STADAT : String(24);
    FPLNR : String(30);
    FPLTR : String(18);
    AKTNR : String(30);
    KNUMA_PI : String(30);
    KNUMA_AG : String(30);
    PREFE : String(3);
    MWSBP : Decimal(13,2);
    AUGRU_AUFT : String(9);
    FAREG : String(3);
    UPMAT : String(54);
    UKONM : String(6);
    CMPRE_FLT : Double;
    ABFOR : String(6);
    ABGES : Double;
    J_1ARFZ : String(3);
    J_1AREGIO : String(9);
    J_1AGICD : String(6);
    J_1ADTYP : String(6);
    J_1ATXREL : String(30);
    J_1BCFOP : String(30);
    J_1BTAXLW1 : String(9);
    J_1BTAXLW2 : String(9);
    J_1BTXSDC : String(6);
    BRTWR : Decimal(15,2);
    WKTNR : String(30);
    WKTPS : String(18);
    RPLNR : String(30);
    KURSK_DAT : String(24);
    WGRU1 : String(54);
    WGRU2 : String(54);
    KDKG1 : String(6);
    KDKG2 : String(6);
    KDKG3 : String(6);
    KDKG4 : String(6);
    KDKG5 : String(6);
    VKAUS : String(9);
    J_1AINDXP : String(15);
    J_1AIDATEP : String(24);
    KZFME : String(3);
    MWSKZ : String(6);
    VERTT : String(3);
    VERTN : String(39);
    SGTXT : String(150);
    DELCO : String(9);
    BEMOT : String(6);
    RRREL : String(3);
    AKKUR : Decimal(9,5);
    WMINR : String(30);
    VGBEL_EX : String(30);
    VGPOS_EX : String(18);
    LOGSYS : String(30);
    VGTYP_EX : String(9);
    J_1BTAXLW3 : String(9);
    J_1BTAXLW4 : String(9);
    J_1BTAXLW5 : String(9);
    MSR_ID : String(30);
    MSR_REFUND_CODE : String(9);
    MSR_RET_REASON : String(9);
    NRAB_KNUMH : String(30);
    NRAB_VALUE : Decimal(13,2);
    DISPUTE_CASE : Binary(16);
    FUND_USAGE_ITEM : Binary(16);
    FARR_RELTYPE : String(30);
    CLAIMS_TAXATION : String(3);
    KURRF_DAT_ORIG : String(24);
    AUFPL : String(30);
    APLZL : String(24);
    AUDAT : String(24);
    EDATU : String(24);
    PLAUFZ : String(9);
    PLAUEZ : String(3);
    CONTNBR : String(30);
    CONTITM : String(18);
    DPCNR : String(30);
    DCPNR : String(9);
    DPNRB : String(9);
    BOSFAR : String(3);
    DP_BELNR : String(30);
    DP_BUKRS : String(12);
    DP_GJAHR : String(12);
    DP_BUZEI : String(9);
    PACKNO : String(30);
    PEROP_BEG : String(24);
    PEROP_END : String(24);
    FMFGUS_KEY : String(66);
    FONDS : String(30);
    FISTL : String(48);
    FKBER : String(48);
    GRANT_NBR : String(60);
    BUDGET_PD : String(30);
    J_3GBELNRI : String(30);
    J_3GPMAUFE : String(36);
    J_3GPMAUFV : String(36);
    J_3GETYPA : String(6);
    J_3GETYPE : String(6);
    J_3GORGUEB : String(3);
    PRS_WORK_PERIOD : String(21);
    PPRCTR : String(30);
    PARGB : String(12);
    AUFPL_OAA : String(30);
    APLZL_OAA : String(24);
    CAMPAIGN : Binary(16);
    COMPREAS : String(12);
    NavToVbrk : Association to one CL_N3_VBRK_ABAP on NavToVbrk.VBELN = VBELN;
}

@cds.persistence.exists
entity CL_N3_VBRK_ABAP
{
    MANDT : String(9);
    VBELN : String(30);
    FKART : String(12);
    FKTYP : String(3);
    VBTYP : String(3);
    WAERK : String(15);
    VKORG : String(12);
    VTWEG : String(6);
    KALSM : String(18);
    KNUMV : String(30);
    VSBED : String(6);
    FKDAT : String(24);
    BELNR : String(30);
    GJAHR : String(12);
    POPER : String(9);
    KONDA : String(6);
    KDGRP : String(6);
    BZIRK : String(18);
    PLTYP : String(6);
    INCO1 : String(9);
    INCO2 : String(84);
    EXPKZ : String(3);
    RFBSK : String(3);
    MRNKZ : String(3);
    KURRF : Decimal(9,5);
    CPKUR : String(3);
    VALTG : String(6);
    VALDT : String(24);
    ZTERM : String(12);
    ZLSCH : String(3);
    KTGRD : String(6);
    LAND1 : String(9);
    REGIO : String(9);
    COUNC : String(9);
    CITYC : String(12);
    BUKRS : String(12);
    TAXK1 : String(3);
    TAXK2 : String(3);
    TAXK3 : String(3);
    TAXK4 : String(3);
    TAXK5 : String(3);
    TAXK6 : String(3);
    TAXK7 : String(3);
    TAXK8 : String(3);
    TAXK9 : String(3);
    NETWR : Decimal(15,2);
    ZUKRI : String(120);
    ERNAM : String(36);
    ERZET : String(18);
    ERDAT : String(24);
    STAFO : String(18);
    KUNRG : String(30);
    KUNAG : String(30);
    MABER : String(6);
    STWAE : String(15);
    EXNUM : String(30);
    STCEG : String(60);
    AEDAT : String(24);
    SFAKN : String(30);
    KNUMA : String(30);
    FKART_RL : String(12);
    FKDAT_RL : String(24);
    KURST : String(12);
    MSCHL : String(3);
    MANSP : String(3);
    SPART : String(6);
    KKBER : String(12);
    KNKLI : String(30);
    CMWAE : String(15);
    CMKUF : Decimal(9,5);
    HITYP_PR : String(3);
    BSTNK_VF : String(105);
    VBUND : String(18);
    FKART_AB : String(12);
    KAPPL : String(6);
    LANDTX : String(9);
    STCEG_H : String(3);
    STCEG_L : String(9);
    XBLNR : String(48);
    ZUONR : String(54);
    MWSBK : Decimal(13,2);
    LOGSYS : String(30);
    FKSTO : String(3);
    XEGDR : String(3);
    RPLNR : String(30);
    LCNUM : String(30);
    J_1AFITP : String(6);
    KURRF_DAT : String(24);
    AKWAE : String(15);
    AKKUR : Decimal(9,5);
    KIDNO : String(90);
    BVTYP : String(12);
    NUMPG : String(9);
    BUPLA : String(12);
    VKONT : String(36);
    FKK_DOCSTAT : String(3);
    NRZAS : String(36);
    SPE_BILLING_IND : String(3);
    VTREF : String(60);
    FK_SOURCE_SYS : String(30);
    FKTYP_CRM : String(3);
    STGRD : String(6);
    DPC_REL : String(3);
    AD01BASDOC : String(30);
    AD01FAREG : String(3);
    VCHRNMBR : String(24);
    SWENR : String(24);
    SMENR : String(24);
    PHASE : String(33);
    MTLAUR : String(3);
    STAGE : Integer64;
    HB_CONT_REASON : String(6);
    HB_EXPDATE : String(24);
    HB_RESDATE : String(24);
    J_3GKBAUL : String(3);
    J_3GKENIE : String(3);
    KUNWE : String(30);
    MNDID : String(105);
    PAY_TYPE : String(3);
    SEPON : String(3);
    MNDVG : String(3);
    SPPAYM : String(6);
    SPPORD : String(30);
    NavToCanal : Association to one cl_n3_canales_ventas on NavToCanal.codcanal = VTWEG;
    NavToKna1 : Association to one CL_N3_KNA1_ABAP on NavToKna1.KUNNR = KUNAG;
}

@cds.persistence.exists
entity CL_N3_KNA1_ABAP
{
    MANDT : String(9);
    KUNNR : String(30);
    LAND1 : String(9);
    NAME1 : String(105);
    NAME2 : String(105);
    ORT01 : String(105);
    PSTLZ : String(30);
    REGIO : String(9);
    SORTL : String(30);
    STRAS : String(105);
    TELF1 : String(48);
    TELFX : String(93);
    XCPDK : String(3);
    ADRNR : String(30);
    MCOD1 : String(75);
    MCOD2 : String(75);
    MCOD3 : String(75);
    ANRED : String(45);
    AUFSD : String(6);
    BAHNE : String(75);
    BAHNS : String(75);
    BBBNR : String(21);
    BBSNR : String(15);
    BEGRU : String(12);
    BRSCH : String(12);
    BUBKZ : String(3);
    DATLT : String(42);
    ERDAT : String(24);
    ERNAM : String(36);
    EXABL : String(3);
    FAKSD : String(6);
    FISKN : String(30);
    KNAZK : String(6);
    KNRZA : String(30);
    KONZS : String(30);
    KTOKD : String(12);
    KUKLA : String(6);
    LIFNR : String(30);
    LIFSD : String(6);
    LOCCO : String(30);
    LOEVM : String(3);
    NAME3 : String(105);
    NAME4 : String(105);
    NIELS : String(6);
    ORT02 : String(105);
    PFACH : String(30);
    PSTL2 : String(30);
    COUNC : String(9);
    CITYC : String(12);
    RPMKR : String(15);
    SPERR : String(3);
    SPRAS : String(3);
    STCD1 : String(48);
    STCD2 : String(33);
    STKZA : String(3);
    STKZU : String(3);
    TELBX : String(45);
    TELF2 : String(48);
    TELTX : String(90);
    TELX1 : String(90);
    LZONE : String(30);
    XZEMP : String(3);
    VBUND : String(18);
    STCEG : String(60);
    DEAR1 : String(3);
    DEAR2 : String(3);
    DEAR3 : String(3);
    DEAR4 : String(3);
    DEAR5 : String(3);
    GFORM : String(6);
    BRAN1 : String(30);
    BRAN2 : String(30);
    BRAN3 : String(30);
    BRAN4 : String(30);
    BRAN5 : String(30);
    EKONT : String(30);
    UMSAT : Decimal(8,2);
    UMJAH : String(12);
    UWAER : String(15);
    JMZAH : String(18);
    JMJAH : String(12);
    KATR1 : String(6);
    KATR2 : String(6);
    KATR3 : String(6);
    KATR4 : String(6);
    KATR5 : String(6);
    KATR6 : String(9);
    KATR7 : String(9);
    KATR8 : String(9);
    KATR9 : String(9);
    KATR10 : String(9);
    STKZN : String(3);
    UMSA1 : Decimal(15,2);
    TXJCD : String(45);
    PERIV : String(6);
    ABRVW : String(9);
    INSPBYDEBI : String(3);
    INSPATDEBI : String(3);
    KTOCD : String(12);
    PFORT : String(105);
    WERKS : String(12);
    DTAMS : String(3);
    DTAWS : String(6);
    DUEFL : String(3);
    HZUOR : String(6);
    SPERZ : String(3);
    ETIKG : String(30);
    CIVVE : String(3);
    MILVE : String(3);
    KDKG1 : String(6);
    KDKG2 : String(6);
    KDKG3 : String(6);
    KDKG4 : String(6);
    KDKG5 : String(6);
    XKNZA : String(3);
    FITYP : String(6);
    STCDT : String(6);
    STCD3 : String(54);
    STCD4 : String(54);
    STCD5 : String(180);
    XICMS : String(3);
    XXIPI : String(3);
    XSUBT : String(9);
    CFOPC : String(6);
    TXLW1 : String(9);
    TXLW2 : String(9);
    CCC01 : String(3);
    CCC02 : String(3);
    CCC03 : String(3);
    CCC04 : String(3);
    CASSD : String(6);
    KNURL : String(396);
    J_1KFREPRE : String(30);
    J_1KFTBUS : String(90);
    J_1KFTIND : String(90);
    CONFS : String(3);
    UPDAT : String(24);
    UPTIM : String(18);
    NODEL : String(3);
    DEAR6 : String(3);
    SUFRAMA : String(27);
    RG : String(33);
    EXP : String(9);
    UF : String(6);
    RGDATE : String(24);
    RIC : String(33);
    RNE : String(30);
    RNEDATE : String(24);
    CNAE : String(21);
    LEGALNAT : String(12);
    CRTN : String(3);
    ICMSTAXPAY : String(6);
    INDTYP : String(6);
    TDT : String(6);
    COMSIZE : String(6);
    DECREGPC : String(6);
    ALC : String(24);
    PMT_OFFICE : String(15);
    FEE_SCHEDULE : String(12);
    DUNS : String(27);
    DUNS4 : String(12);
    PSOFG : String(30);
    PSOIS : String(60);
    PSON1 : String(105);
    PSON2 : String(105);
    PSON3 : String(105);
    PSOVN : String(105);
    PSOTL : String(60);
    PSOHS : String(18);
    PSOST : String(84);
    PSOO1 : String(150);
    PSOO2 : String(150);
    PSOO3 : String(150);
    PSOO4 : String(150);
    PSOO5 : String(150);
    J_3GETYP : String(6);
    J_3GREFTYP : String(6);
    PSPNR : String(24);
    COAUFNR : String(36);
    J_3GAGEXT : String(30);
    J_3GAGINT : String(30);
    J_3GAGDUMI : String(30);
    J_3GAGSTDI : String(30);
    LGORT : String(12);
    KOKRS : String(12);
    KOSTL : String(30);
    J_3GABGLG : String(3);
    J_3GABGVG : String(3);
    J_3GABRART : String(3);
    J_3GSTDMON : Decimal(5,2);
    J_3GSTDTAG : Decimal(5,2);
    J_3GTAGMON : Decimal(5,2);
    J_3GZUGTAG : String(3);
    J_3GMASCHB : String(3);
    J_3GMEINSA : String(3);
    J_3GKEINSA : String(3);
    J_3GBLSPER : String(3);
    J_3GKLEIVO : String(3);
    J_3GCALID : String(6);
    J_3GVMONAT : String(3);
    J_3GABRKEN : String(3);
    J_3GLABRECH : String(24);
    J_3GAABRECH : String(24);
    J_3GZUTVHLG : String(3);
    J_3GNEGMEN : String(3);
    J_3GFRISTLO : String(3);
    J_3GEMINBE : String(15);
    J_3GFMGUE : String(15);
    J_3GZUSCHUE : String(15);
    J_3GSCHPRS : String(3);
    J_3GINVSTA : String(3);
}

type FechaEvent : String(8);

type SDate : DateTime;

type Enum1 : Integer enum
{
}
