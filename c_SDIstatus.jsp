<%@ include file="connect.jsp" %>
<%
try{
	String id=request.getParameter("id");
	String str="SDI Issued";
	Statement st1=connection.createStatement();
	String query1="update sender set status='"+str+"' where id='"+id+"'";
	st1.executeUpdate(query1);
	connection.close();
	response.sendRedirect("c_ViewSendersSDI.jsp");
}
catch(Exception e)
{
out.println(e);
}
%>
