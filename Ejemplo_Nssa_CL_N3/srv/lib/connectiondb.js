module.exports = {
    getConnection : async (db) => {
      const dbClass = require("sap-hdbext-promisfied");
    
      try {
        return new dbClass(await dbClass.createConnection(db.options.credentials));
      } catch (exception) {
        return undefined;
      }
    },
    execute : async(connection, storeProcedure, param) => {
      try {
        const hdbext = require("@sap/hdbext");
  
        const sp = await connection.loadProcedurePromisified(hdbext, null, storeProcedure);
        const output = await connection.callProcedurePromisified(sp, param);
  
        return output.results;
      } catch (exception) {
        console.error(exception);
        return {};
      }    
    }
  };