<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<h1>Student Main Page</h1>
<input type="button" id="query" value="查詢"/>
<button onclick="studentadd()">新增</button>
<button onclick="studentupdate()">修改</button>
<button onclick="studentdelete()">刪除</button>
<p>
學號: <input type="text" id="studentId" value="S005"/><p/>
姓名:<input type="text" id="name" value="Scarlet"/><p/>
住址:<input type="text" id="address" value="Kung Yuan"/><p/>
<div id="div1">Show Message</div>
<script>
  $(document).ready(function(){
	    $.ajaxSetup({
	            cache: false,
	    });
	        $("#query").click(studentquery);
	  });

    function studentquery(){
         $.get("student",function(data){
                  $("#div1").html(data);
             });
    }
    function studentadd(){
    	 $.ajaxSetup({
	            cache: false,
	    });
        $.post("student/addStudent",
                {"studentId":$("#studentId").val(),"name":$("#name").val(),"address":$("#address").val()},
                function(data){
                	 $("#div1").html(data);
                }
           );
    }

    function studentupdate(){
   	 $.ajaxSetup({
	            cache: false,
	    });
       $.post("student/updateStudent",
               {"studentId":$("#studentId").val(),"name":$("#name").val(),"address":$("#address").val()},
               function(data){
               	 $("#div1").html(data);
               }
          );
   }

    function studentdelete(){
   	 $.ajaxSetup({
	            cache: false,
	    });
       $.post("student/deleteStudent",
               {"studentId":$("#studentId").val(),"name":"","address":""},
               function(data){
               	 $("#div1").html(data);
               }
          );
   }
   
</script>

</body>
</html>