<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.File" %>
<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/png" href="favi.png" />
<link rel="stylesheet"
	href="<spring:url value='/static/css/style.css'/>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>JK Cement Works</title>
<div id="logo_right"><a title="JK CEMENT"><img class="imgright"	src="<c:url value="/static/images/jkLogo.jpg"/>"></img></a>

</div>
</head>
<style>
.btn-xl {
    font-size: 14px;
    font-weight: 700;
    padding: 20px 40px;
    border-radius: 3px;
    color: #fff;
    border-color: #fed136;
    background-color: #0000FF;
    font-family: Montserrat,'Helvetica Neue',Helvetica,Arial,sans-serif;
    text-transform: uppercase;
    box-shadow: 0 5px 10px 0 rgba(0,0,0,0.16),0 2px 5px 0 rgba(0,0,0,0.12)!important;
}
#divC {
 margin-left:auto;
margin-right:auto;
width:80%;
margin-top: -3%;
}
.imgright,.imgcenter
{
    height: 79px;
    width:35%;
    padding-left:1px;
    padding-right:1px;
    /* padding-top: 1px; */
}
/* footer */

.footer_pos  {
   bottom:0px; 
 }
footer {
   width:100%;
   height: 25px;
   position:fixed;
   background: rgb(21, 20, 20);
  }
  #footerContent  {

    margin: 10px auto 0px auto;
    text-align: left;
    }
    
.div_footer{
    bottom:0;
   font-size: 2.0vmin;
    
}   
    
#footer-right    {
     color:#FFFFFF;
   font-size: 2.0vmin;
    line-height: 11px;
    text-align:right;
    margin-top:20%;
    
    } 
#footer-right a  {
    color:#FFFFFF;
    text-decoration: none;
    }
#footer-right     a.selected,
#footer-right     a:hover    {
    color: white;
    text-decoration: none;
    }
</style>
<body>
<%
String autoVC="";
String autoWeb="";
String autoMrp="";
String autoAuction="";
try{
//InputStream is = Demo.class.getResourceAsStream("/settings.properties");
InputStream is = Thread.currentThread().getContextClassLoader().getResourceAsStream("/settings.properties");
Properties props = new Properties();
props.load(is);
autoVC=props.getProperty("Autoplant.VC");
autoWeb=props.getProperty("Autoplant.WEB");
autoMrp=props.getProperty("Autoplant.MRP");
autoAuction=props.getProperty("Autoplant.Auction");
}
catch(IOException e)
{
	out.println("Excdeption Related to parsing the properties");
	e.printStackTrace();
}
 
  %>

<h1 align="center" style="margin-top: 8%;">Welcome to JK Cement Works</h1>


<div id="divC" align="center">

<br>
<br>
<br>
<br>


<a class="btn btn-xl js-scroll-trigger" target="_blank" href=<%=autoVC %> style="text-decoration:none">Vendor Collaboration</a> &nbsp;&nbsp; <a class="btn btn-xl js-scroll-trigger" target="_blank" href=<%= autoWeb%> style="text-decoration:none">In Plant</a> &nbsp;&nbsp;
<a class="btn btn-xl js-scroll-trigger" target="_blank" href=<%=autoMrp %> style="text-decoration:none">Smart Loading Soln</a> &nbsp;&nbsp; <a class="btn btn-xl js-scroll-trigger" target="_blank" href=<%= autoAuction%> style="text-decoration:none">Reverse Auctioning</a>
<%--  <a class="btn btn-xl js-scroll-trigger" target="_blank" href=<%=autoConnector%> style="text-decoration:none">CONECTOR</a> --%>


</div>

<div>
<div id="footer-right"><a title="JK CEMENT"><img class="imgright"	src="<c:url value="/static/images/logo.jpg"/>"></img></a>
</div>

</body>
</html>