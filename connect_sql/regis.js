//注册一个新的用户
var mysql  = require('mysql');  
 
var connection = mysql.createConnection({     
  host     : 'localhost',       
  user     : 'root',              //自己数据库的用户名
  password : 'qw789123',       //自己数据库的密码
  port: '3306',                   
  database: 'mywork'              //自己的库名
}); 
 
connection.connect();

var ID = '33711'    //此处输入ID
var psword = '33711'  //此处输入密码
var username = '12345'  //此处输入用户名
var  addSql = 'INSERT INTO users(ID,password,user_name) VALUES(?,?,?)';
var  addSqlParams = [ID, psword,username];
//增
connection.query(addSql,addSqlParams,function (err, result) {
        if(err){
         console.log('[INSERT ERROR] - ',err.message);
         return;
        }        
 
       console.log('--------------------------INSERT----------------------------');
       //console.log('INSERT ID:',result.insertId);        
       console.log('INSERT ID:',result);        
       console.log('-----------------------------------------------------------------\n\n');  
});
 
connection.end();