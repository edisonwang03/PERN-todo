const { Pool } = require('pg');

const pool = new Pool({
    connectionString: "postgresql://postgres:osz5AGVGlKTbUPwsDXMr@containers-us-west-111.railway.app:6473/railway",
    ssl: {
        rejectUnauthorized: false
  }
});

module.exports = pool;