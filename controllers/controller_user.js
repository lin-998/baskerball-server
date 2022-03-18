const userModel=require('../models/user_info')
const {uuid}=require('../utils/createId')
const jwt = require("jsonwebtoken");
const secret = require("../config").secret;

/**
 * @param   time  时间
 * @return
 */
// 通过用户id查找用户信息 users 包括密码
class userController{
	  async findDataByUserId(ctx, next) {
      try {
         	 //解码取出之前存在payload的user_id 和 name
	const auth = ctx.get('Authorization')
	const token = auth.split(' ')[1];
		const payload = jwt.verify(token, secret)
		ctx.id = payload.id;
		   const RowDataPacket=	await userModel.findDataByUserId(ctx.id)
         const rowData = JSON.parse(JSON.stringify(RowDataPacket));
		 
		   ctx.body = {
			   code:200,
			   data:RowDataPacket[0]
		   };
	   } catch (error) {
		   console.log(error);
		   ctx.body = {
			   code:500,
			   data: null
		   };
	   }
   };
   //设置用户头像
   async setAvator(ctx, next) {
      const id=ctx.request.body.id
      const avator=ctx.request.body.avator
      try {
		   const RowDataPacket=	await userModel.setAvator([avator,id])
         const rowData = JSON.parse(JSON.stringify(RowDataPacket));
		   ctx.body = {
			   code:200,
			   data: rowData
		   };
	   } catch (error) {
		   console.log(error);
		   ctx.body = {
			   code:500,
			   data: null
		   };
	   }
   };
   //设置用户背景图片
   async setBackImage(ctx, next) {
	const id=ctx.request.body.id
	const background=ctx.request.body.background
	try {
		 const RowDataPacket=	await userModel.setBackImage([background,id])
	   const rowData = JSON.parse(JSON.stringify(RowDataPacket));
		 ctx.body = {
			 code:200,
			 data: rowData
		 };
	 } catch (error) {
		 console.log(error);
		 ctx.body = {
			 code:500,
			 data: null
		 };
	 }
 }; 
  
  
}
module.exports=new userController()
