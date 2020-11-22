//登录用户 登录后表中的login变为1
var mysql = require('mysql');

function login() {
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',              //自己数据库的用户名
    password: 'qw789123',       //自己数据库的密码
    port: '3306',
    database: 'mywork'              //自己的库名
  });
  connection.connect();
  var ID = '12345';  //此处输入需要登录的用户ID
  var psword = '12345';  //此处输入密码
  var checkSql = 'SELECT password FROM users WHERE ID = ?';      //退出登录将1改为0并删除校验密码部分即可;
  //校验密码

  connection.query(checkSql, ID, function (err, result) {
    if (err) {
      console.log('[SELECT ERROR] - ', err.message);
      return;
    }
    if (result[0].password != psword) {
      console.log('password do not match, login failed');           //密码错误
    }
    else
      console.log('password correct!');    //密码正确             
  });
  connection.end();
}

login();
