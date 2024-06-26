import mysql from 'mysql2'
import dotenv from 'dotenv'
dotenv.config()


const pool = mysql.createPool({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASS,
    database: process.env.MYSQL_DATABASE
}).promise()

async function getFromDB() {
    const [rows] = await pool.query("QUERY HERE");
    return rows;
}

/*


const notes = await getFromDB();
console.log(notes)
*/