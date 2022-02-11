//发布动态
const {
    query
} = require('../utils/db');

class postSql {
    //发布动态
    createPost(value) {
        let _sql = "insert into posts(post_id,post_content,user_id,post_url) values(?,?,?,?);"
        return query(_sql, value)
    }
     //获取所有动态
     getAllPost(value) {
        let _sql = "select v.*, u.avator as avator, u.nickname as nickname from posts v left join users u on v.user_id = u.id;"
        return query(_sql, value)
    }
    //点赞
    postLike(value) {
        let _sql = "UPDATE `posts` SET  `like_counts` =`like_counts` +1 WHERE `post_id` = ?;"
        return query(_sql, value)
    }
    //取消点赞
    postUnlike(value) {
        let _sql = "UPDATE `posts` SET  `like_counts` =`like_counts` -1 WHERE `post_id` = ?;"
        return query(_sql, value)
    }
    //加入到点赞列表
    insertLike(value) {
        let _sql = "insert into users_like_posts(id,user_id,post_id) values(?,?,?);"
        return query(_sql, value)
    }
    //移除点赞列表
    deleteLike(value) {
        let _sql = "delete from users_like_posts where user_id =? and post_id=?;"
        return query(_sql, value)
    }
    //获取用户点赞动态
    getUserPostLike(value) {
        let _sql = "select v.*, u.avator as avator, u.nickname as nickname from posts v left join users u on v.user_id = u.id where v.post_id in (select ulv.post_id from users_like_posts ulv where ulv.user_id = ?) and v.status = 1 order by v.create_time desc;"
        return query(_sql, value)
    }
    //插入评论
    createComment(value) {
        let _sql = "insert into post_comments(id,to_user_id,post_id,from_user_id,comment,create_time) values(?,?,?,?,?,?);"
        return query(_sql, value)
    }
    //回复评论
    replyComment(value) {
        let _sql = "insert into post_comments(id,comment,from_user_id) values(?,?,?);"
        return query(_sql, value)
    }
    //修改评论
    updateComment(value) {
        let _sql = "insert into post() values(?,?,?,?);"
        return query(_sql, value)
    }
    //删除评论
    removeComment(value) {
        let _sql = "delete from post_comments where id =? ;"
        return query(_sql, value)
    }
    //获取评论
    getlistComment(value) {
        let _sql = "select * from post_comments where post_id =? "
        return query(_sql, value)
    }
}

module.exports = new postSql()