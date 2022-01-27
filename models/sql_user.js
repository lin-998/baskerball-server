//用户信息
const {
    query
} = require('../utils/db');

class userSql {
    //修改用户头像
    setAvator(value) {
        let _sql = "insert into posts(post_id,post_content,user_id,post_url) values(?,?,?,?);"
        return query(_sql, value)
    }
   
}

module.exports = new userSql()