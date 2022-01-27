const jwt = require("jsonwebtoken");
const secret = require("../config").secret;
const userModel = require("../models/user_info");
const md5 = require("md5");
module.exports = async (ctx, next) => {
	let name = ctx.request.body.name || "",
		password = ctx.request.body.password || "";
	if (name === "" || password === "") {
		ctx.body = {
			success: false,
			message: "用户名或密码不能为空"
		};
		return;
	}
	const RowDataPacket = await userModel.DataByName(name);
	const res = JSON.parse(JSON.stringify(RowDataPacket));
	if (res.length > 0) {
		//   验证成功后，服务端会签发一个 Token，再把这个 Token 发送给客户端
		if (md5(password) === res[0]["password"]) {
			const payload = { //payload
				name: name,
				id: res[0]["id"]
			};
			const token = jwt.sign(payload, secret, {
				expiresIn: Math.floor(Date.now() / 1000) + 24 * 60 * 60 // 一天
			});
			ctx.body = {
				success: true,
				message: "登录成功",
				code:200,
				token: token,
				userInfo: {
					name: res[0]["name"],
					user_id: res[0]["id"],
					avator: res[0]["avator"],
				}
			};
		} else {
			ctx.body = {
				success: false,
				message: "密码错误"
			};
		}
	} else {
		ctx.body = {
			success: false,
			message: "用户名错误"
		};
	}
};