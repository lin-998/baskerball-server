const shortid= require ("js-shortid");
const inst=shortid.inst({
    salts:4,
    initTime:'1587025320000'
})
 function uuid() {
    return inst.gen()
    
}
module.exports={
    uuid,
}