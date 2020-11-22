//检索商品
var mysql  = require('mysql');  
 
var connection = mysql.createConnection({     
  host     : 'localhost',       
  user     : 'root',              //自己数据库的用户名
  password : 'qw789123',       //自己数据库的密码
  port: '3306',                   
  database: 'mywork'              //自己的库名
});
 
connection.connect();
 
var  ID = 'c1002' ; //此处输入需要查找的商品ID
var  sql = 'SELECT* FROM commodity where ID = ?' ;            
//查
connection.query(sql,ID,function (err, result) {
        if(err){
          console.log('[SELECT ERROR] - ',err.message);
          return;
        }
 
       console.log('--------------------------SELECT----------------------------');
       console.log(result);
       console.log('------------------------------------------------------------\n\n');  
});
 
connection.end();