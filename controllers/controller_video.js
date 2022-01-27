const videoModel=require('../models/sql_video')
/**
 * @param   time  时间
 * @return
 */
//获取视频
 let getVideo = async (ctx, next) => {
	try {
		const RowDataPacket = await videoModel.getVideo(),
			videoInfo = JSON.parse(JSON.stringify(RowDataPacket));
		ctx.body = {
			code:200,
			data: {
				videoInfo: videoInfo
			}
		};
	} catch (error) {
		ctx.body={
			message:'获取失败'
		}
		console.log(error);
	}
};
module.exports={
	getVideo
}
