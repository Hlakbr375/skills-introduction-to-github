// 这是路由处理函数模块

// 导入数据库操作模块
const db = require('../db/index')

// 获取文章分类列表的处理函数
exports.getArtCates = (req, res) => {
    // 定义查询分类列表数据的 SQL 语句
    const sql = `select * from ev_article_cate where is_delete=0 order by id asc` // 调用 db.query() 执行 SQL 语句

    db.query(sql, (err, results) => {
        if (err)
            return res.cc(err)
        res.send({ code: 0, message: '获取文章分类数据成功！', data: results, })
    })
}

// 新增文章分类的处理函数
exports.addArticleCates = (req, res) => {
   
}

// 删除文章分类的处理函数
exports.deleteCateById = (req, res) => {

}

// 根据 Id 获取文章分类的处理函数
exports.getArtCateById = (req, res) => {
    // 定义根据 ID 获取文章分类数据的 SQL 语句
    const sql = `select * from ev_article_cate where id=?`
        // 调用 db.query() 执行 SQL 语句
    db.query(sql, req.params.id, (err, results) => {
        if (err) return res.cc(err)
        if (results.length !== 1) return res.cc('获取文章分类数据失败！')
        res.send({
            status: 0,
            message: '获取文章分类数据成功！',
            data: results[0],
        })
    })
}

// 根据 Id 更新文章分类的处理函数
exports.updateCateById = (req, res) => {

}