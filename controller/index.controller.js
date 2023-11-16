module.exports = {
    get : (req,res,next) => {
        res.send({message: 'get '})
    },
    post : (req,res,next) => {
        res.send({message: 'post '})
    },
    put : (req,res,next) => {
        res.send({message: 'put '})
    },
    delete : (req,res,next) => {
        res.send({message: 'delete '})
    }
}