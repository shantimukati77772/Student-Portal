<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page  import  = "java.sql.DriverManager"%>
    <%@page  import  = "java.sql.ResultSet"%>
    <%@page  import  = "java.sql.PreparedStatement"%>
    <%@page  import  = "java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <title>Panel</title>
    
    <style>
    body {
    font-family: 'Open Sans', sans-serif;
    background-color: #f9fafb;
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    margin: 0;
}

#container {
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
    width: 400px;
}

form {
    max-width: 400px;
    margin: 10px auto;
    padding: 16px;
}

label,
select {
    display: block;
    margin: 10px 0;
}

select {
    width: 100%;
    font-size: 1em;
    padding: 5px;
}

button {
    box-sizing: border-box;
    width: 100%;
    padding: 3%;
    background: #007bff;
    border-bottom: 2px solid #007bff;
    border-top-style: none;
    border-right-style: none;
    border-left-style: none;
    color: #fff;
    font-size: 14px;
}

button:hover {
    background: #0069d9;
    cursor: pointer;
}


form input[type="text"] {
    outline: none;
    box-sizing: border-box;
    width: 100%;
    background: #fff;
    margin-bottom: 2%;
    border: 1px solid #ccc;
    padding: 3%;
    color: #555;
    font-size: 1em;
}

form input[type="text"]:focus {
    box-shadow: 0 0 5px #f0db4f;
    padding: 3%;
    border: 1px solid #f0db4f;
}
    </style>
</head>

<body>

 <%

String driver="org.postgresql.Driver";
String url="jdbc:postgresql://ec2-34-200-101-236.compute-1.amazonaws.com:5432/dfs9n2v4auvav1";
String user="dwvpbgiyykbnot";
String pass="97f63975d28168a585839ca7afb0811073caa7a2ff8ac0b6d5c0ef62703f47d8";


try {
	Class.forName(driver);

} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();}
Connection con = null;
PreparedStatement statement = null;
ResultSet resultset = null;


%>

  
    <div id="container">
        <form action = "panel" method = "post">
            <label for="name">Panel :</label>
            <select  id="name" >
            <%
String sql = "select * from faculty";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql);
	
	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
	 <option value = "<%=resultset.getString("name") %>" ><%=resultset.getString("name")%> (<%=resultset.getString("post") %>)</option>
              <%

 }
 
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	
}
con.close();
%>	
 
            </select>

            <button id="btnAdd">Add</button>

            <label for="list">Panel List:</label>
            <select id="list" name="list" multiple>

            </select>
            <button id="btnRemove">Remove Selected </button>
            <hr>
            <button type = "submit" id="submit">Submit</button>
 			<hr>
                  
        </form>
        
        <button type = "goback" id="goback"onclick="window.location.href='admin.jsp'">Go back</button> 
    </div>

    <script>
        const btnAdd = document.querySelector('#btnAdd');
        const btnRemove = document.querySelector('#btnRemove');
        const sb = document.querySelector('#list');
        const name = document.querySelector('#name');

        btnAdd.onclick = (e) => {
            e.preventDefault();

            // validate the option
            if (name.value == '') {
                alert('Please enter the name.');
                return;
            }
            // create a new option
            const option = new Option(name.value, name.value);
            // add it to the list
            sb.add(option, undefined);

            // reset the value of the input
            name.value = '';
            name.focus();
        };

        // remove selected option
        btnRemove.onclick = (e) => {
            e.preventDefault();

            // save the selected option
            let selected = [];

            for (let i = 0; i < sb.options.length; i++) {
                selected[i] = sb.options[i].selected;
            }

            // remove all selected option
            let index = sb.options.length;
            while (index--) {
                if (selected[index]) {
                    sb.remove(index);
                }
            }
        };
    </script>
</body>
</html>
