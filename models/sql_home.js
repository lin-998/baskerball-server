//首页
const {
	query
} = require('../utils/db');
//轮播图
let getSlideShow=(data)=>{
    let _sql="select * from slideshow;"
    return query(_sql,data)
}
module.exports={
    getSlideShow
}