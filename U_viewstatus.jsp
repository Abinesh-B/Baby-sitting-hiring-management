<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page import="mypack.dbo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
    <title>SiTTer</title>
    
    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" type="image/x-icon" href="images/favicon/apple-touch-icon.png">
    
    <!-- All CSS Plugins -->
    <link rel="stylesheet" type="text/css" href="css/plugin.css">
    
    <!-- Main CSS Stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <!-- Google Web Fonts  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">
    
    
    <!-- HTML5 shiv and Respond.js support IE8 or Older for HTML5 elements and media queries -->
    <!--[if lt IE 9]>
	   <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 </head>
 
 <body>
 <% 

	if(session.getAttribute("mymail")==null)
	{
		response.sendRedirect("login.jsp");
	}
	String mail=request.getSession().getAttribute("mymail").toString();;
	String cmail="";
	String work1="";
	String work1s="";
	String work2="";
	String work2s="";
	String work3="";
	String work3s="";
	String work4="";
	String work4s="";
	String work5="";
	String work5s="";
	String status="";
	try
	{
    	Connection con= dbo.getConnection();
    	PreparedStatement st2 = con.prepareStatement("select c_email,work1,work1status,work2,work2status,work3,work3status,work4,work4status,work5,work5status,status from requests where u_email=?;");
    	st2.setString(1,mail);
    	ResultSet rs=st2.executeQuery();
    	if(rs.next())
    	{
    	 cmail=rs.getString(1);
    	 work1=rs.getString(2);
    	 work1s=rs.getString(3);
    	 work2=rs.getString(4);
    	 work2s=rs.getString(5);
    	 work3=rs.getString(6);
    	 work3s=rs.getString(7);
    	 work4=rs.getString(8);
    	 work4s=rs.getString(9);
    	 work5=rs.getString(10);
    	 work5s=rs.getString(11);
    	 status=rs.getString(12);
    	}

	}
	catch(Throwable e)
	{
		e.printStackTrace();
	} 

%>
    <!-- Menu Section Start -->
    <header id="home">
        
        <div class="header-top-area">
            <div class="container">
                <div class="row">
                
                    <div class="col-sm-3">
                        <div class="logo">
                            <a href="index-2.html">siTTer</a>
                        </div>
                    </div>
                    
                    <div class="col-sm-9">
                        <div class="navigation-menu">
                            <div class="navbar">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <div class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/index.jsp">HOME</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/U_view.jsp">MY PROFILE</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/U_edit.jsp">EDIT PROFILE</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/U_viewcaretakertable.jsp">FIND SITTER</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/U_viewstatus.jsp">STATUS</a>
                                        </li>
                                        <li><a class="smoth-scroll" href="http://localhost:8080/siTTer/logoutcon">LOGOUT</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </header>
     <!-- Menu Section End -->  
     <!-- Home Section Start -->
    <section class="home-section">
        <div class="container">
            <div class="row">
                
                 <div class="col-sm-offset-1 col-md-5 col-sm-6 margin-left-setting">
                    <div class="margin-top-150">
                        <form>
                     <div class="table-responsive">
					    <table class="table">
							<tr>
							    <td>CARETAKER MAIL</td>
								<td><label><%out.println(cmail);%></label></td>
							 </tr>
                             <tr>
								<td>WORK 1</td>
								<td><%out.println(work1);%></td>
							</tr>
							<tr>
								<td>STATUS</td>
								<td><%out.println(work1s);%></td>
							 </tr>
							<tr>
								<td>WORK 2</td>
								<td><%out.println(work2);%></td>
							</tr>
							<tr>
								<td>STATUS</td>
								<td><%out.println(work2s);%></td>
							</tr>
							<tr>
								<td>WORK 3</td>
								<td><%out.println(work3);%></td>
							</tr>
							<tr>
							    <td>STATUS</td>
								<td><%out.println(work3s);%></td>
							 </tr>
                             <tr>
								<td>WORK 4</td>
								<td><%out.println(work4);%></td>
							</tr>
							<tr>
								<td>STATUS</td>
								<td><%out.println(work4s);%></td>
							</tr>
							<tr>
								<td>WORK 5</td>
								<td><%out.println(work5);%></td>
							</tr>
							<tr>
							    <td>STATUS</td>
								<td><%out.println(work5s);%></td>
							 </tr>
							 <tr>
							    <td>REQUEST STATUS</td>
								<td><%out.println(status);%></td>
							 </tr>
						</table>
					  </div>
					  <div>
					  	</br>
					  </div>
					  <div>
					  	</br>
					  </div>
	                  </form>
                     </div>
                   </div>
                 
                 <div class="col-md-5 col-sm-6">
                    <div class="me-image">
                      <img src="images/bg/profile.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
        </section>
        <!-- Home Section End -->
</body>
</html>