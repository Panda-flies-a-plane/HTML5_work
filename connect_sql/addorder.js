//创建订单，订单创建后和买家卖家余额和库存都会自动变更，相当于购买
var mysql  = require('mysql');  
 
var connection = mysql.createConnection({     
  host     : 'localhost',       
  user     : 'root',              //自己数据库的用户名
  password : 'qw789123',       //自己数据库的密码
  port: '3306',                   
  database: 'mywork'              //自己的库名
}); 
 
connection.connect();

var ID = '87921'    //此处输入订单ID
var s_id = '01243'  //此处输入卖家ID
var b_id = '12345'  //此处输入买家ID
var m_id = 'c1001';   //此处输入商品ID
var num = 1  //此处输入数量
var  addSql = 'INSERT INTO `order`(ID,s_id,b_id,m_id,num) VALUES(?,?,?,?,?)';
var  addSqlParams = [ID, s_id,b_id, m_id,num];
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