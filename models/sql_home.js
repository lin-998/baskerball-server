//首页
const {
	query
} = require('../utils/db');
//轮播图
let getSlideShow=(data)=>{
    let _sql="select * from slideshow;"
    return query(_sql,data)
}
let insertData = function(value) {
	let _sql = "insert into user_info(name,password) values(?,?);"
	return query(_sql, value)
}
module.exports={
    getSlideShow
}