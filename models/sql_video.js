//首页
const {
	query
} = require('../utils/db');
//获取短视频信息
let getVideo=(data)=>{
    let _sql="select * from videos;"
    return query(_sql,data)
}

module.exports={
    getVideo
}