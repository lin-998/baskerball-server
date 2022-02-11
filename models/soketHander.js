
let saveUserSocketId  = function(userId, socketId){
    const data = [socketId,userId]
    let _sql = ' UPDATE  users SET socketid = ? WHERE id= ? limit 1 ; '
    return query( _sql,data)
}


let getUserSocketId  = function(toUserId){
    let _sql = ' SELECT socketid FROM users WHERE id=? limit 1 ;'
    return query( _sql,[toUserId])
}

module.exports = {
    saveUserSocketId,
    getUserSocketId
}
