const Pool = require("pg").Pool;

const pool = new Pool({
    connectionString: "postgresql://postgres:jMycR9l70IH4UNMKK3UI@containers-us-west-173:6909/railway",
});

module.exports = pool;