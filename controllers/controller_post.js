const postModel=require('../models/sql_post ')
const {uuid}=require('../utils/createId')
/**
 * @param   time  时间
 * @return
 */
class postController{
	//发布动态
	  async createPost(ctx, next) {
		// 1. 获取数据(user_id, content)
	   //  console.log(ctx)
		const fileArr=ctx.request.body.fileArr;
		 const user_id = ctx.request.body.id;
		 const post_content = ctx.request.body.content;
	   //   console.log(fileArr)
	   try {
		   const RowDataPacket = await postModel.createPost([uuid(),post_content,user_id,fileArr]),
			   imgList = JSON.parse(JSON.stringify(RowDataPacket));
		   ctx.body = {
			   code:200,
			   data: null
		   };
	   } catch (error) {
		   console.log(error);
		   ctx.body = {
			   code:500,
			   data: null
		   };
	   }
   };
   //获取动态
   async getAllPost(ctx, next) {
   try {
	   const RowDataPacket = await postModel.getAllPost()
	   ctx.body = {
		   code:200,
		   data:RowDataPacket
	   };
   } catch (error) {
	   console.log(error);
	   ctx.body = {
		   code:500,
		   data: null
	   };
   }
};
   //动态点赞
   async postLike(ctx, next)  {
	  //  console.log(ctx.params)
   //    console.log(ctx.request.query)
		const post_id = ctx.request.query.post_id;
		const user_id = ctx.request.query.user_id;
		const post_content = ctx.request.body.content;
	  //   console.log(fileArr)
	  try {
		  const RowDataPacket = await postModel.postLike([post_id,])
		  const RowData = await postModel.insertLike([uuid(),user_id,post_id])
		  ctx.body = {
			  code:200,
			  data: null
		  };
	  } catch (error) {
		  console.log(error);
		  ctx.body = {
			  code:500,
			  data: null
		  };
	  }
   };
   //取消点赞
  async postUnlike(ctx, next)  {
		 //  console.log(ctx.params)
   //    console.log(ctx.request.query)
   const post_id = ctx.request.query.post_id;
   const user_id = ctx.request.query.user_id;
   const post_content = ctx.request.body.content;
   //   console.log(fileArr)
   try {
	 const RowDataPacket = await postModel.postUnlike([post_id,])
	 const RowData = await postModel.deleteLike([user_id,post_id])
	 ctx.body = {
		 code:200,
		 data: null
	 };
   } catch (error) {
	 console.log(error);
	 ctx.body = {
		 code:500,
		 data: null
	 };
   }
	};
	//获取用户点赞动态
	async getUserPostLike(ctx, next){
		// 1. 需要获取动态的id和评论的内容(从请求体中获取)， 用户的id(从ctx.user中获取)
		const { user_id } = ctx.request.query;
		// console.log(ctx.request.query)
		try {
			const result = await postModel.getUserPostLike(user_id);
			ctx.body = {
				code:200,
				data: result 
			};
		  } catch (error) {
			console.log(error);
			ctx.body = {
				code:500,
				data: null
			};
		  }
	  }
	// 插入评论
	async createComment(ctx, next){
		// 1. 需要获取动态的id和评论的内容(从请求体中获取)， 用户的id(从ctx.user中获取)
		const { post_id, content,to_user_id,from_user_id } = ctx.request.body;
		
		// 2. 将数据插入到数据库的comment表中
		const result = await postModel.createComment([uuid(),to_user_id,post_id,from_user_id,content,new Date()]);
		ctx.body = result;
	  }
	  // 回复评论
	  async replyComment(ctx, next){
		// 1. 需要获取动态的id 评论的内容content, (从请求体中获取)， 
		// 用户的id(从ctx.user中获取)
		const { comment_id, content,user_id } = ctx.request.body;
		// 评论的id从url的params中获取
		const { commentId } = ctx.params;
	
		// 2. 将数据插入到数据库的comment表中
		const result = await postModel.replyComment(comment_id, content, user_id);
		ctx.body = result;
	  }
	  // 修改评论
	  async updateComment(ctx, next){
		const { commentId } = ctx.params;
		const { content } = ctx.request.body;
		const result = await postModel.updateComment(commentId, content);
		ctx.body = result;
	  }
	  // 删除评论
	  async removeComment(ctx, next){
		const { comment_id } = ctx.params;
		const result = await postModel.removeComment(comment_id);
		ctx.body = result;
	  }
	
	  // 获取指定动态下的所有评论--通过对应的动态id
	  async getlistComment(ctx, next){
		const { comment_id } = ctx.query;
		const result = await postModel.getlistComment(comment_id);
		ctx.body = result;
	  }
}
module.exports=new postController()
