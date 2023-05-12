const Pool = require("pg").Pool;

const pool = new Pool({
    user: "postgres",
    password: "jMycR9l70IH4UNMKK3UI",
    host: "containers-us-west-173.railway.app",
    port: 6909,
    database: "railway"
});

module.exports = pool;