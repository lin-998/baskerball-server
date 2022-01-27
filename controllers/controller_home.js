const homeModel=require('../models/sql_home')
/**
 * @param   time  时间
 * @return
 */
//轮播图
 let getSlideShow = async (ctx, next) => {
	try {
		const RowDataPacket = await homeModel.getSlideShow(),
			imgList = JSON.parse(JSON.stringify(RowDataPacket));
		ctx.body = {
			code:200,
			data: {
				imgList: imgList
			}
		};
	} catch (error) {
		console.log(error);
	}
};
module.exports={
	getSlideShow
}
