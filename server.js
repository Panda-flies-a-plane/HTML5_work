var express = require("express");
var app = express();
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',              //自己数据库的用户名
    password: 'qw789123',       //自己数据库的密码
    port: '3306',
    database: 'mywork'              //自己的库名
});

app.get('/login_get', function (req, res) {

    connection.connect();
    var ID = req.query.ID;  //此处输入需要登录的用户ID
    var psword = req.query.passwd;  //此处输入密码
    var checkSql = 'SELECT password FROM users WHERE ID = ?';      //退出登录将1改为0并删除校验密码部分即可;
    //校验密码
    connection.query(checkSql, ID, function (err, result) {
        if (err) {
            res.send('[SELECT ERROR] - ', err.message);
            return;
        }
        if (result[0].password != psword) {
            res.send('password do not match, login failed');           //密码错误
        }
        else
            res.send('password correct!');    //密码正确             
    });
    connection.end();
})

app.get('/regis_get', function (req, res) {

    connection.connect();
    var ID = req.query.a;    //此处输入ID
    var psword = req.query.b;  //此处输入密码
    var username = req.query.c;  //此处输入用户名
    var  addSql = 'INSERT INTO users(ID,password,user_name) VALUES(?,?,?)';
    var  addSqlParams = [ID, psword,username];
    //增
    connection.query(addSql,addSqlParams,function (err, result) {
            if(err){
             console.log('[INSERT ERROR] - ',err.message);
             res.send("failed!");
             return;
            }        
     
           console.log('--------------------------INSERT----------------------------');
           //console.log('INSERT ID:',result.insertId);        
           console.log('INSERT ID:',result);        
           console.log('-----------------------------------------------------------------\n\n');  
           res.send('register successfully!');
    });
    connection.end();
})
app.use(express.static("buyer")).listen(8080); 