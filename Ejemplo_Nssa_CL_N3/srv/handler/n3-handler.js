const cds = require("@sap/cds");
const database = require('../lib/connectiondb');

module.exports = async function() {
  const db = await cds.connect.to("db");
  this.on("actualizaCantidadAceptada_sp", async (req) => {
    const { request } = req.data;

    const hdbext = require("@sap/hdbext");
    let connection = await database.getConnection(db);
    const sp = await connection.loadProcedurePromisified(hdbext, null, "actualizaCantidadAceptada");
    
    let output = undefined;
    let result = [];

        try {

          console.log("request");
          console.log(request);

            output = await connection.callProcedurePromisified(sp, [request[0]?.country, request[0]?.periodo, request[0]?.mes, request[0]?.anio, request[0]?.codperiodo, request[0]?.dealer_id, request[0]?.usuario]);
            

              var jsonObject = {
                status_load: output.outputScalar.RESULT,
                message: output.outputScalar.MESSAGE
              };
              result.push(jsonObject);
            console.log("country:" + request[0]?.country);
            console.log(output.outputScalar);
            console.log("output.outputScalar.RESULT :" + output.outputScalar.RESULT);
            console.log("output.outputScalar.message :" + output.outputScalar.MESSAGE);
        }
        catch (exception) {
            //response.status_load = false;
            //response.message = exception.message

            var jsonObject = {
              status_load: false,
              message: exception.message
            };
            result.push(jsonObject);

            //console.log("inserted error : " + request);
            console.log(output.outputScalar);
            //return exception.message;
        }
    
    return result;

  }); 
    this.on("asignacion_sp", async (req) => {
      const { request } = req.data;

      const hdbext = require("@sap/hdbext");
      let connection = await database.getConnection(db);
      const sp = await connection.loadProcedurePromisified(hdbext, null, "asignacion");
      
      let output = undefined;
      let result = [];

          try {

            console.log("request");
            console.log(request);

              output = await connection.callProcedurePromisified(sp, [request[0]?.country, request[0]?.periodo, request[0]?.mes, request[0]?.anio, request[0]?.codperiodo, request[0]?.dealer_id, request[0]?.dealer_name, request[0]?.usuario]);
              

                var jsonObject = {
                  status_load: output.outputScalar.RESULT,
                  message: output.outputScalar.MESSAGE
                };
                result.push(jsonObject);
              console.log("country:" + request[0]?.country);
              console.log(output.outputScalar);
              console.log("output.outputScalar.RESULT :" + output.outputScalar.RESULT);
              console.log("output.outputScalar.message :" + output.outputScalar.MESSAGE);
          }
          catch (exception) {
              //response.status_load = false;
              //response.message = exception.message

              var jsonObject = {
                status_load: false,
                message: exception.message
              };
              result.push(jsonObject);

              //console.log("inserted error : " + request);
              console.log(output.outputScalar);
              //return exception.message;
          }
      
      return result;

    });

    this.on("ins_maestroproduccion_sp", async (req) => {
        const { request } = req.data;

        console.log("request ins_maestroproduccion_sp");
        console.log(request);

        let response = {
          status_load: false
        };   

        const hdbext = require("@sap/hdbext");
        let connection = await database.getConnection(db);
        const sp = await connection.loadProcedurePromisified(hdbext, null, "ins_maestroproduccion");
        
        let output = undefined;

        for (let index in request) {
            try {

                output = await connection.callProcedurePromisified(sp, [request[index]?.id_order_vp_nsam, request[index]?.assigment_period, request[index]?.eim, request[index]?.country, request[index]?.date_creation_order_vp_nsam, request[index]?.date_change_order_vp_nsam, request[index]?.status_vehicule, request[index]?.allocation_key_code, request[index]?.date_code_status_event, request[index]?.buyer_code, request[index]?.production_order_receiver, request[index]?.order_take_base_period, request[index]?.eta_asn, request[index]?.etd_asn, request[index]?.car_series, request[index]?.description_eim, request[index]?.exterior_colour_code, request[index]?.interior_colour_code, request[index]?.planned_production_date, request[index]?.production_family_code, request[index]?.vessel_code, request[index]?.vessel_name, request[index]?.port_depart, request[index]?.port_arrival, request[index]?.eta, request[index]?.etd, request[index]?.date_confirmed_eta, request[index]?.vin_number, request[index]?.event5_body_in_planned, request[index]?.event5_body_in_actual, request[index]?.event6_body_out_planned, request[index]?.event6_body_out_actual, request[index]?.event7_paint_in_planned, request[index]?.event7_paint_in_actual, request[index]?.event8_paint_out_planned, request[index]?.event8_paint_out_actual, request[index]?.event9_trim_in_planned, request[index]?.event9_trim_in_actual, request[index]?.event10_offline_planned, request[index]?.event10_offline_actual, request[index]?.event11_final_ok_planned, request[index]?.event11_final_ok_actual, request[index]?.event20_compound_in_planned, request[index]?.event20_compound_in_actual, request[index]?.event25_compound_out_planned, request[index]?.event25_compound_out_actual, request[index]?.event30_port_in_planned, request[index]?.event30_port_in_actual, request[index]?.event35_shipping_instruction_planned, request[index]?.event35_shipping_instruction_actual, request[index]?.event40_on_board_planned, request[index]?.event40_on_board_actual, request[index]?.event50_port_arrival_planned, request[index]?.event50_port_arrival_actual, request[index]?.date_creation_order_dealer, request[index]?.date_change_order_dealer, request[index]?.dealer_id ]);
                
                console.log(output.outputScalar);
                response.status_load = output.outputScalar.RESULT;
                response.message = output.outputScalar.MESSAGE;
                console.log("response.message");
                console.log(response.message);
                var jsonString = JSON.stringify(request[index]);

                console.log("request send:");
                console.log(jsonString);
            }
            catch (exception) {
                response.status_load = false;
                response.message = exception.message
                console.log("inserted error : " + request[index]);
                console.log(output.outputScalar);
                //return exception.message;
            }
        }
      
      return response;
    });
    this.on("ins_maestroproduccion_sincro", async (req) => {
      const { request } = req.data;

      console.log("request ins_maestroproduccion_sp");
      console.log(request);

      let response = {
        status_load: false
      };   

      const hdbext = require("@sap/hdbext");
      let connection = await database.getConnection(db);
      const sp = await connection.loadProcedurePromisified(hdbext, null, "ins_maestroproduccion");
      
      let output = undefined;

      for (let index in request) {
          try {

            output = await connection.callProcedurePromisified(sp, [request[index]?.ID_ORDER_VP_NSAM, 
              request[index]?.ASSIGMENT_PERIOD, 
              request[index]?.EIM, request[index]?.COUNTRY, 
              request[index]?.DATE_CREATION_ORDER_VP_NSAM, 
              request[index]?.DATE_CHANGE_ORDER_VP_NSAM, 
              request[index]?.STATUS_VEHICULE, 
              request[index]?.ALLOCATION_KEY_CODE, 
              request[index]?.DATE_CODE_STATUS_EVENT, 
              request[index]?.BUYER_CODE, 
              request[index]?.PRODUCTION_ORDER_RECEIVER, 
              request[index]?.ORDER_TAKE_BASE_PERIOD, 
              request[index]?.ETA_ASN, 
              request[index]?.ETD_ASN, 
              request[index]?.CAR_SERIES, 
              request[index]?.DESCRIPTION_EIM, 
              request[index]?.EXTERIOR_COLOUR_CODE, 
              request[index]?.INTERIOR_COLOUR_CODE, 
              request[index]?.PLANNED_PRODUCTION_DATE, 
              request[index]?.PRODUCTION_FAMILY_CODE, 
              request[index]?.VESSEL_CODE, 
              request[index]?.VESSEL_NAME, 
              request[index]?.PORT_DEPART, 
              request[index]?.PORT_ARRIVAL, 
              request[index]?.ETA, 
              request[index]?.ETD, 
              request[index]?.DATE_CONFIRMED_ETA, 
              request[index]?.VIN_NUMBER,
              request[index]?.EVENT5_BODY_IN_PLANNED,
              request[index]?.EVENT5_BODY_IN_ACTUAL,
              request[index]?.EVENT6_BODY_OUT_PLANNED,
              request[index]?.EVENT6_BODY_OUT_ACTUAL,
              request[index]?.EVENT7_PAINT_IN_PLANNED,
              request[index]?.EVENT7_PAINT_IN_ACTUAL,
              request[index]?.EVENT8_PAINT_OUT_PLANNED,
              request[index]?.EVENT8_PAINT_OUT_ACTUAL,
              request[index]?.EVENT9_TRIM_IN_PLANNED,
              request[index]?.EVENT9_TRIM_IN_ACTUAL,
              request[index]?.EVENT10_OFFLINE_PLANNED,
              request[index]?.EVENT10_OFFLINE_ACTUAL,
              request[index]?.EVENT11_FINAL_OK_PLANNED,
              request[index]?.EVENT11_FINAL_OK_ACTUAL,
              request[index]?.EVENT20_COMPOUND_IN_PLANNED,
              request[index]?.EVENT20_COMPOUND_IN_ACTUAL,
              request[index]?.EVENT25_COMPOUND_OUT_PLANNED,
              request[index]?.EVENT25_COMPOUND_OUT_ACTUAL,
              request[index]?.EVENT30_PORT_IN_PLANNED,
              request[index]?.EVENT30_PORT_IN_ACTUAL,
              request[index]?.EVENT35_SHIPPING_INSTRUCTION_PLANNED,
              request[index]?.EVENT35_SHIPPING_INSTRUCTION_ACTUAL,
              request[index]?.EVENT40_ON_BOARD_PLANNED,
              request[index]?.EVENT40_ON_BOARD_ACTUAL,
              request[index]?.EVENT50_PORT_ARRIVAL_PLANNED,
              request[index]?.EVENT50_PORT_ARRIVAL_ACTUAL, 
              request[index]?.DATE_CREATION_ORDER_DEALER, 
              request[index]?.DATE_CHANGE_ORDER_DEALER, 
              request[index]?.DEALER_ID ]);
  
              console.log(output.outputScalar);
              response.status_load = output.outputScalar.RESULT;
              response.message = output.outputScalar.MESSAGE;
              console.log("response.message");
              console.log(response.message);
              var jsonString = JSON.stringify(request[index]);

              console.log("request send:");
              console.log(jsonString);
          }
          catch (exception) {
              response.status_load = false;
              response.message = exception.message
              console.log("inserted error : " + request[index]);
              console.log(output.outputScalar);
              //return exception.message;
          }
      }
    
    return response;
  });
    this.on("del_parametricas_sp", async (req) => {
      const { request } = req.data;

      let response = {
        status_load: false
      };   

      const hdbext = require("@sap/hdbext");
      let connection = await database.getConnection(db);
      const sp = await connection.loadProcedurePromisified(hdbext, null, "del_parametricas");
      
      let output = undefined;

      for (let index in request) {
          try {
              output = await connection.callProcedurePromisified(sp, [request[index]?.parametro, request[index]?.country]);
              console.log(output.outputScalar);
              response.status_load = output.outputScalar.RESULT;
              response.message = output.outputScalar.message;
              console.log("inserted succesfull :" + request[index]);
          }
          catch (exception) {
              response.status_load = false;
              response.message = exception.message
              console.log("inserted error : " + request[index]);
              console.log(output.outputScalar);
              //return exception.message;
          }
      }
    
      return response;
    });
    this.on("sync_facturas", async (req) => {
      const { request } = req.data;

      let response = [];   

      const hdbext = require("@sap/hdbext");
      let connection = await database.getConnection(db);
      const sp = await connection.loadProcedurePromisified(hdbext, null, "sync_facturasdp");
      
      let output = undefined;

      for (let index in request) {
          try {
              output = await connection.callProcedurePromisified(sp, [request[index]?.country]);
              console.log("outputScalar");
              console.log(output);
              
              //let results = output.outputScalar.procesados;
              let result = output.results;
              console.log("results del SP");
              console.log(result);

              let row = {};
              result.forEach(function(item, index) {
                  row = {};
                  row.ID_ORDER_VP_NSAM = item.ID_ORDER_VP_NSAM;
                  row.IDORDENDP        = item.IDORDENDP;
                  row.CANAL            = item.CANAL;
                  row.COUNTRY          = item.COUNTRY;
                  row.DEALER_ID        = item.DEALER_ID;
                  row.MES              = item.MES;
                  row.ANIO             = item.ANIO;
                  row.NUM_DOCUMENTO    = item.NUM_DOCUMENTO;
                  row.CLASE_DOCUMENTO  = item.CLASE_DOCUMENTO;
                  row.DES_DOCUMENTO    = item.DES_DOCUMENTO;
                  row.FEC_DOCUMENTO    = item.FEC_DOCUMENTO;
                  row.DATE_CREATION_ORDER_VP_NSAM = item.DATE_CREATION_ORDER_VP_NSAM;
                  console.log('Item procesados:' + index + ':', item);
                  response.push(row);
              });

          }
          catch (exception) {
              console.log(exception.message);
              //return exception.message;
          }
      }
    
      return response;
    });
    this.on("inscsasegmento_sp", async (req) => {
      const { request } = req.data;

      let response = {
        status_load: false
      };   

      const hdbext = require("@sap/hdbext");
      let connection = await database.getConnection(db);
      const sp = await connection.loadProcedurePromisified(hdbext, null, "inscsasegmento");
      
      let output = undefined;

      for (let index in request) {
          try {
              output = await connection.callProcedurePromisified(sp, [request[index]?.country, request[index]?.sku, request[index]?.eim, request[index]?.dealer_id, request[index]?.csa, request[index]?.segmento]);
              console.log(output.outputScalar);
              response.status_load = output.outputScalar.RESULT;
              response.message = output.outputScalar.message;
              console.log("inserted succesfull :" + request[index]);
          }
          catch (exception) {
              response.status_load = false;
              response.message = exception.message
              console.log("inserted error : " + request[index]);
              console.log(output.outputScalar);
              //return exception.message;
          }
      }
    
      return response;
    });

    this.on("regstock_sp", async (req) => {
      const { request } = req.data;


      const hdbext = require("@sap/hdbext");
      let connection = await database.getConnection(db);
      const sp = await connection.loadProcedurePromisified(hdbext, null, "regstock");
      
      let output = undefined;
      let result = [];

      for (let index in request) {
          try {
              output = await connection.callProcedurePromisified(sp, [request[index]?.vin, request[index]?.country]);
              

                var jsonObject = {
                  status_load: output.outputScalar.RESULT,
                  message: output.outputScalar.MESSAGE
                };
                result.push(jsonObject);

              console.log("vin :" + request[index].vin);
              console.log(output.outputScalar);
              console.log("output.outputScalar.RESULT :" + output.outputScalar.RESULT);
              console.log("output.outputScalar.message :" + output.outputScalar.MESSAGE);
          }
          catch (exception) {
              //response.status_load = false;
              //response.message = exception.message

              var jsonObject = {
                status_load: false,
                message: exception.message
              };
              result.push(jsonObject);

              //console.log("inserted error : " + request[index]);
              console.log(output.outputScalar);
              //return exception.message;
          }
      }
      
      return result;

    });
    this.on("regstockmasivo_sp", async (req) => {
      const { request } = req.data;
      const { country } = req.data;
      const { accion } = req.data;

      console.log("regstockmasivo_sp");
      console.log(req.data);

      console.log(request);
      console.log(country);
      console.log(accion);

      const hdbext = require("@sap/hdbext");
      let connection = await database.getConnection(db);
      const sp = await connection.loadProcedurePromisified(hdbext, null, "regstockmasivo");
      
      let output = undefined;
      let response = [];

          try {
              output = await connection.callProcedurePromisified(sp, [country, accion, request]);

              let result = output.results;
              console.log("results del SP");
              console.log(result);

              let row = {};
              result.forEach(function(item, index) {
                  row = {};
                  row.VIN     = item.VIN;
                  row.MSG     = item.MSG;
                  row.RESULT  = item.RESULT;
                  console.log('Item procesados:' + index + ':', item);
                  response.push(row);
              });              

          }
          catch (exception) {
              console.log(exception.message);
          }
      
      return response;

    });
    this.on("stockDisponible_sp", async (req) => {
      const { request } = req.data;


      const hdbext = require("@sap/hdbext");
      let connection = await database.getConnection(db);
      const sp = await connection.loadProcedurePromisified(hdbext, null, "stockDisponible");
      
      let output = undefined;
      let result = [];

      for (let index in request) {
          try {

            console.log("request[index]");
            console.log(request[index]);

              output = await connection.callProcedurePromisified(sp, [request[index]?.country, request[index]?.mes, request[index]?.anio, request[index]?.periodo, request[index]?.codperiodo, request[index]?.sku]);
              

                var jsonObject = {
                  status_load: output.outputScalar.RESULT,
                  message: output.outputScalar.MESSAGE
                };
                result.push(jsonObject);

              console.log("country :" + request[index].country);
              console.log("mes :" + request[index].mes);
              console.log("anio :" + request[index].anio);
              console.log("periodo :" + request[index].periodo);
              console.log("codperiodo :" + request[index].codperiodo);
              console.log("sku :" + request[index].sku);
              console.log(output.outputScalar);
              console.log("output.outputScalar.RESULT :" + output.outputScalar.RESULT);
              console.log("output.outputScalar.message :" + output.outputScalar.MESSAGE);
          }
          catch (exception) {
              //response.status_load = false;
              //response.message = exception.message

              var jsonObject = {
                status_load: false,
                message: exception.message
              };
              result.push(jsonObject);

              //console.log("inserted error : " + request[index]);
              console.log(output.outputScalar);
              //return exception.message;
          }
      }
      
      return result;

    });

};