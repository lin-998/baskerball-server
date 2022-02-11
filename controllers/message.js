const jwt = require("jsonwebtoken");
const secret = require("../config").secret;
const msgModel = require("../models/message");

module.exports = async (ctx, next) => {
	try {
		    	 //解码取出之前存在payload的user_id 和 name
	const auth = ctx.get('Authorization')
	const token = auth.split(' ')[1];
		const payload = jwt.verify(token, secret)
		ctx.id = payload.id;
		const res1 = await msgModel.getPrivateList(ctx.id);
		const privateList = JSON.parse(JSON.stringify(res1));
		const res2 = await msgModel.getGroupList(ctx.id);
		const groupList = JSON.parse(JSON.stringify(res2));
		ctx.body = {
			success: true,
			data: {
				privateList: privateList,
				groupList: groupList
			}
		};
	} catch (error) {
		console.log(error);
	}
};