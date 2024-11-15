using dp as mod from '../db/data-model';

@requires : 'authenticated-user'
@impl : './handler/n3-handler.js'

service CatalogService {

    entity cl_n3_maestroproduccion as projection on mod.cl_n3_maestroProduccion;
    entity cl_n3_maestroProduccion_hist as projection on mod.cl_n3_maestroProduccion_hist;
    
    entity cl_n3_periodo as projection on mod.cl_n3_Periodo;
    entity cl_n3_estadoperiodo as projection on mod.cl_n3_EstadoPeriodo;

    entity cl_n3_procesoperiodo as projection on mod.cl_n3_ProcesoPeriodo;
    entity cl_n3_resumenasignacion as projection on mod.cl_n3_ResumenAsignacion;
    entity cl_n3_ResumenAsignacion_hist as projection on mod.cl_n3_ResumenAsignacion_hist;


    entity cl_n3_dealerparametros as projection on mod.cl_n3_DealerParametros;
    entity cl_n3_detalleasignacion as projection on mod.cl_n3_DetalleAsignacion;
    entity cl_n3_estadoasignacion as projection on mod.cl_n3_EstadoAsignacion;
    entity cl_n3_detalleproduccion as projection on mod.cl_n3_DetalleProduccion;
    entity cl_n3_freedemand as projection on mod.cl_n3_Freedemand;
    entity cl_n3_sku_details as projection on mod.cl_n3_sku_details;
    entity cl_n3_sku_media as projection on mod.cl_n3_sku_media;
    entity cl_n3_dealers_details as projection on mod.cl_n3_dealers_details;
    entity cl_n3_dealer_sucursales as projection on mod.cl_n3_dealer_sucursales;

    entity cl_n3_carflow as projection on mod.cl_n3_carflow;
    entity cl_n3_canales_ventas as projection on mod.cl_n3_canales_ventas;
    
    entity cl_n3_optimization_parameters as projection on mod.cl_n3_optimization_parameters;
    entity cl_n3_origen_visibility as projection on mod.cl_n3_origen_visibility;
    entity cl_n3_mos_target as projection on mod.cl_n3_mos_target;
    entity cl_n3_csa_segmento as projection on mod.cl_n3_csa_segmento;
    entity cl_n3_forecast_retail as projection on mod.cl_n3_forecast_retail;
    entity cl_n3_wholesale_forecast as projection on mod.cl_n3_wholesale_forecast;
    entity cl_n3_color_version as projection on mod.cl_n3_color_version;
    entity cl_n3_color as projection on mod.cl_n3_color;
    entity cl_n3_diccionario_sku as projection on mod.cl_n3_diccionario_sku;

    entity cl_n3_initial_stock as projection on mod.cl_n3_initial_stock;
    entity cl_n3_stock_nissan as projection on mod.cl_n3_stock_nissan;
    entity cl_n3_expected_sales as projection on mod.cl_n3_expected_sales;
    entity cl_n3_commitments as projection on mod.cl_n3_commitments;
    entity cl_n3_proposal as projection on mod.cl_n3_proposal;

    entity cl_n3_dealer_dom as projection on mod.cl_n3_dealer_dom;
    entity cl_n3_master_dom as projection on mod.cl_n3_master_dom;

    entity cl_n3_estados_tracking as projection on mod.cl_n3_estados_tracking;
    
    entity cl_n3_DistribucionColores as projection on mod.cl_n3_DistribucionColores;
    entity cl_n3_OperacionParametros as projection on mod.cl_n3_OperacionParametros;
    entity cl_n3_carga_necesidades as projection on mod.cl_n3_carga_necesidades;
    entity cl_n3_notificaciones as projection on mod.cl_n3_notificaciones;
    entity cl_n3_historic_sales as projection on mod.cl_n3_historic_sales;
    entity cl_n3_errorlog_app as projection on mod.cl_n3_errorlog_app;
    entity cl_n3_log_unidad as projection on mod.cl_n3_log_unidad;
    entity cl_n3_documentos as projection on mod.cl_n3_documentos;

    entity cl_n3_vlcvehicle_abap as projection on mod.CL_N3_VLCVEHICLE_ABAP;
    entity cl_n3_vbrp_abap as projection on mod.CL_N3_VBRP_ABAP;
    entity cl_n3_vbrk_abap as projection on mod.CL_N3_VBRK_ABAP;
    entity cl_n3_kna1_abap as projection on mod.CL_N3_KNA1_ABAP;

    entity DatosVin {
       VIN : String;
    }

    //action ins_maestroproduccion_sp(request : RequestMaestroSp) returns Boolean;
    @asynchronous  action ins_maestroproduccion_sincro(request : array of RequestMaestroSincro) returns Boolean;
    @asynchronous  action ins_maestroproduccion_sp(request : array of RequestMaestroSp) returns Boolean;
    @asynchronous  action del_parametricas_sp(request : array of RequestDelete) returns Boolean;
    @asynchronous  action inscsasegmento_sp(request : array of RequestCSA) returns Boolean;
    @asynchronous  action regstock_sp(request : array of RequestVIN) returns array of responseStockVin;
    @asynchronous  action regstockmasivo_sp(country : String, accion : String, request : array of RequestMasivoVIN) returns array of responseStockMasivoVin;
    @asynchronous  action stockDisponible_sp(request : array of RequestStockDisp) returns array of responseStockDisp;
    @asynchronous  action asignacion_sp (request : array of RequestAsignaciones) returns array of responseAsignaciones;
    @asynchronous  action actualizaCantidadAceptada_sp (request : array of RequestActualizaCantAcep) returns array of responseActualizaCantAcep;    
    @asynchronous  action sync_facturas(request : array of RequestSyncFactura) returns array of responseUnidadesProcesadas;


type responseStockVin {
        status_load: Boolean;
        message: String;
}

type responseStockMasivoVin {
    VIN: String;
    MSG: String;
    RESULT: String
}

 type RequestSyncFactura {
        country : String;
 }

 type RequestVIN {
        vin     : String;
        country : String;
 }

 type RequestMasivoVIN {
       //VIN : Composition of many DatosVin;
       VIN : String;
 }


 type RequestCSA {
        country    : String;
        sku        : String;   
        eim        : String;
        dealer_id  : String;
        csa        : Double;
        segmento   : Double; 
 }

 type RequestDelete {
        parametro : String; 
        country  : String;
 }
type RequestMaestroSincro {
    ID_ORDER_VP_NSAM : String; 
    ASSIGMENT_PERIOD : String;
    EIM  : String;
    COUNTRY  : String;
    DATE_CREATION_ORDER_VP_NSAM : String;
    DATE_CHANGE_ORDER_VP_NSAM : String;
    STATUS_VEHICULE : String; 
    ALLOCATION_KEY_CODE : String;
    DATE_CODE_STATUS_EVENT : String;
    BUYER_CODE : String;
    PRODUCTION_ORDER_RECEIVER : String;
    ORDER_TAKE_BASE_PERIOD : String;
    ETA_ASN : String;
    ETD_ASN : String;
    CAR_SERIES : String;
    DESCRIPTION_EIM : String;
    EXTERIOR_COLOUR_CODE : String;
    INTERIOR_COLOUR_CODE : String;
    PLANNED_PRODUCTION_DATE : String;
    PRODUCTION_FAMILY_CODE : String;
    VESSEL_CODE : String;
    VESSEL_NAME : String;
    PORT_DEPART : String;
    PORT_ARRIVAL : String;
    ETA : String;
    ETD : String;
    DATE_CONFIRMED_ETA : String;
    VIN_NUMBER : String;
    EVENT5_BODY_IN_PLANNED : String;
    EVENT5_BODY_IN_ACTUAL : String;
    EVENT6_BODY_OUT_PLANNED : String;
    EVENT6_BODY_OUT_ACTUAL : String;
    EVENT7_PAINT_IN_PLANNED : String;
    EVENT7_PAINT_IN_ACTUAL : String;
    EVENT8_PAINT_OUT_PLANNED : String;
    EVENT8_PAINT_OUT_ACTUAL : String;
    EVENT9_TRIM_IN_PLANNED : String;
    EVENT9_TRIM_IN_ACTUAL : String;
    EVENT10_OFFLINE_PLANNED : String;
    EVENT10_OFFLINE_ACTUAL : String;
    EVENT11_FINAL_OK_PLANNED : String;
    EVENT11_FINAL_OK_ACTUAL : String;
    EVENT20_COMPOUND_IN_PLANNED : String;
    EVENT20_COMPOUND_IN_ACTUAL : String;
    EVENT25_COMPOUND_OUT_PLANNED : String;
    EVENT25_COMPOUND_OUT_ACTUAL : String;
    EVENT30_PORT_IN_PLANNED : String;
    EVENT30_PORT_IN_ACTUAL : String;
    EVENT35_SHIPPING_INSTRUCTION_PLANNED : String;
    EVENT35_SHIPPING_INSTRUCTION_ACTUAL : String;
    EVENT40_ON_BOARD_PLANNED : String;
    EVENT40_ON_BOARD_ACTUAL : String;
    EVENT50_PORT_ARRIVAL_PLANNED : String;
    EVENT50_PORT_ARRIVAL_ACTUAL : String;
    DATE_CREATION_ORDER_DEALER : String;
    DATE_CHANGE_ORDER_DEALER : String;
    DEALER_ID : String;
}
 type RequestMaestroSp {
        id_order_vp_nsam : String; 
        assigment_period : String;
        eim  : String;
        country  : String;
        date_creation_order_vp_nsam : String;
        date_change_order_vp_nsam : String;
        status_vehicule : String; 
        allocation_key_code : String;
        date_code_status_event : String;
        buyer_code : String;
        production_order_receiver : String;
        order_take_base_period : String;
        eta_asn : String;
        etd_asn : String;
        car_series : String;
        description_eim : String;
        exterior_colour_code : String;
        interior_colour_code : String;
        planned_production_date : String;
        production_family_code : String;
        vessel_code : String;
        vessel_name : String;
        port_depart : String;
        port_arrival : String;
        eta : String;
        etd : String;
        date_confirmed_eta : String;
        vin_number : String;
        event5_body_in_planned : String;
        event5_body_in_actual : String;
        event6_body_out_planned : String;
        event6_body_out_actual : String;
        event7_paint_in_planned : String;
        event7_paint_in_actual : String;
        event8_paint_out_planned : String;
        event8_paint_out_actual : String;
        event9_trim_in_planned : String;
        event9_trim_in_actual : String;
        event10_offline_planned : String;
        event10_offline_actual : String;
        event11_final_ok_planned : String;
        event11_final_ok_actual : String;
        event20_compound_in_planned : String;
        event20_compound_in_actual : String;
        event25_compound_out_planned : String;
        event25_compound_out_actual : String;
        event30_port_in_planned : String;
        event30_port_in_actual : String;
        event35_shipping_instruction_planned : String;
        event35_shipping_instruction_actual : String;
        event40_on_board_planned : String;
        event40_on_board_actual : String;
        event50_port_arrival_planned : String;
        event50_port_arrival_actual : String;
        date_creation_order_dealer : String;
        date_change_order_dealer : String;
        dealer_id : String;
  }

  type responseStockDisp {
        status_load: Boolean;
        message: String;
  }  

  type RequestStockDisp {
       country : String;
       mes : String;
       anio : String;
       periodo : String;
       codperiodo : String;
       sku : String;
  }

  type responseAsignaciones {
        status_load: Boolean;
        message: String;
  }  

  type responseUnidadesProcesadas{
       ID_ORDER_VP_NSAM:	String;
       IDORDENDP:		String;
       CANAL:	    		String;
       COUNTRY:             String;
       DEALER_ID:		String;
       MES:			String;
       ANIO:			String;
       NUM_DOCUMENTO:       String;
       CLASE_DOCUMENTO:     String;
       DES_DOCUMENTO:       String;
       FEC_DOCUMENTO:       String;  
       DATE_CREATION_ORDER_VP_NSAM: String;
  }

  type RequestAsignaciones{
       country : String;
       periodo : String;
       mes : String;
       anio : String;
       codperiodo : String;
       dealer_id : String;
       dealer_name : String;
       usuario : String;
  }  
  
  type RequestActualizaCantAcep{
       country : String;
       periodo : String;
       mes : String;
       anio : String;
       codperiodo : String;
       dealer_id : String;
       usuario : String;
  }

  type responseActualizaCantAcep {
        status_load: Boolean;
        message: String;
  }
}

