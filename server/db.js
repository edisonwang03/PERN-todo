const { Pool } = require('pg');

const pool = new Pool({
    user: "postgres",
    password: "osz5AGVGlKTbUPwsDXMr",
    host: "containers-us-west-111.railway.app",
    port: 6473,
    database: "railway",
    ssl: {
        rejectUnauthorized: false
  }
});

module.exports = pool;