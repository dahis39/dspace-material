<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - HTML header for main home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="org.dspace.app.webui.util.JSPManager" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="org.dspace.core.ConfigurationManager" %>
<%@ page import="org.dspace.app.util.Util" %>
<%@ page import="javax.servlet.jsp.jstl.core.*" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.*" %>

<%
    String title = (String) request.getAttribute("dspace.layout.title");
    String navbar = (String) request.getAttribute("dspace.layout.navbar");
    boolean locbar = ((Boolean) request.getAttribute("dspace.layout.locbar")).booleanValue();

    String siteName = ConfigurationManager.getProperty("dspace.name");
    String feedRef = (String) request.getAttribute("dspace.layout.feedref");
    boolean osLink = ConfigurationManager.getBooleanProperty("websvc.opensearch.autolink");
    String osCtx = ConfigurationManager.getProperty("websvc.opensearch.svccontext");
    String osName = ConfigurationManager.getProperty("websvc.opensearch.shortname");
    List parts = (List) request.getAttribute("dspace.layout.linkparts");
    String extraHeadData = (String) request.getAttribute("dspace.layout.head");
    String extraHeadDataLast = (String) request.getAttribute("dspace.layout.head.last");
    String dsVersion = Util.getSourceVersion();
    String generator = dsVersion == null ? "DSpace" : "DSpace " + dsVersion;
    String analyticsKey = ConfigurationManager.getProperty("jspui.google.analytics.key");
    String currentPage = UIUtil.getOriginalURL(request);
    boolean isHomePage = currentPage.endsWith("/home.jsp");
    boolean isPricingPage = currentPage.endsWith("/pricing.jsp");
%>

<!DOCTYPE html>
<html>
<head>
    <title><%= siteName %>: <%= title %>
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="Generator" content="<%= generator %>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="<%= request.getContextPath() %>/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet"
          href="<%= request.getContextPath() %>/static/css/jquery-ui-1.10.3.custom/redmond/jquery-ui-1.10.3.custom.css"
          type="text/css"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/bootstrap.min.css"
          type="text/css"/>
    <link rel="stylesheet"
          href="<%= request.getContextPath() %>/static/css/bootstrap/material-design/bootstrap-material-design.min.css"
          type="text/css"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/material-design/ripples.min.css"
          type="text/css"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/dspace-theme.css"
          type="text/css"/>
    <%
        if (!"NONE".equals(feedRef)) {
            for (int i = 0; i < parts.size(); i += 3) {
    %>
    <link rel="alternate" type="application/<%= (String)parts.get(i) %>" title="<%= (String)parts.get(i+1) %>"
          href="<%= request.getContextPath() %>/feed/<%= (String)parts.get(i+2) %>/<%= feedRef %>"/>
    <%
            }
        }

        if (osLink) {
    %>
    <link rel="search" type="application/opensearchdescription+xml"
          href="<%= request.getContextPath() %>/<%= osCtx %>description.xml" title="<%= osName %>"/>
    <%
        }

        if (extraHeadData != null) { %>
    <%= extraHeadData %>
    <%
        }
    %>

    <script type='text/javascript' src="<%= request.getContextPath() %>/static/js/jquery/jquery-1.12.4.min.js"></script>
    <script type='text/javascript'
            src='<%= request.getContextPath() %>/static/js/jquery/jquery-ui-1.10.3.custom.min.js'></script>
    <script type='text/javascript' src='<%= request.getContextPath() %>/static/js/bootstrap/bootstrap.min.js'></script>
    <script type='text/javascript' src='<%= request.getContextPath() %>/static/js/holder.js'></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/utils.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/static/js/choice-support.js"></script>

    <script type="text/javascript"
            src="<%= request.getContextPath() %>/static/js/bootstrap/material-design/material.min.js"></script>
    <script type="text/javascript"
            src="<%= request.getContextPath() %>/static/js/bootstrap/material-design/ripples.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/static/js/jquery/jquery.mobile.custom.min.js"></script>
    <script>
        $(function () {
            $.material.init();

            $("#home-carousel").swiperight(function() {
                $(this).carousel('prev');
            });
            $("#home-carousel").swipeleft(function() {
                $(this).carousel('next');
            });

            $("#recent-submissions-carousel").swiperight(function() {
                $(this).carousel('prev');
            });
            $("#recent-submissions-carousel").swipeleft(function() {
                $(this).carousel('next');
            });
        });
    </script>
    <dspace:include page="/layout/google-analytics-snippet.jsp"/>

    <%
        if (extraHeadDataLast != null) { %>
    <%= extraHeadDataLast %>
    <%
        }
    %>


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="<%= request.getContextPath() %>/static/js/html5shiv.js"></script>
    <script src="<%= request.getContextPath() %>/static/js/respond.min.js"></script>
    <![endif]-->
</head>

<%-- HACK: leftmargin, topmargin: for non-CSS compliant Microsoft IE browser --%>
<%-- HACK: marginwidth, marginheight: for non-CSS compliant Netscape browser --%>
<body class="undernavigation">
<a class="sr-only" href="#content">Skip navigation</a>
<header class="navbar navbar-inverse navbar-fixed-top">
    <%
        if (!navbar.equals("off")) {
    %>
    <div class="container">
        <dspace:include page="<%= navbar %>"/>
    </div>
    <%
    } else {
    %>
    <div class="container">
        <dspace:include page="/layout/navbar-minimal.jsp"/>
    </div>
    <%
        }
    %>
</header>

<main id="content" role="main">

<%
    if (isHomePage) {
%>
    <!-- Home Carousel -->
    <div id="home-carousel" class="carousel slide" data-ride="carousel" data-interval="8000">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#home-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#home-carousel" data-slide-to="1"></li>
            <li data-target="#home-carousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img class="img-fluid" src="<%= request.getContextPath() %>/carousel-img/grey-stuttgart-library.jpg" alt="First slide">
                <!-- Static Header -->
                <div class="header-text">
                    <div class="col-md-12 text-center">
                        <h2><span>Welcome to <a href="http://www.saturnringstation.com/portfolio" class="text-danger">Tom</a>'s book share</span>
                        </h2>
                        <br class="hidden-xs">
                        <h3><span>
                            <a href="http://www.oracle.com/technetwork/java/javaee/jsp/index.html" class="text-danger "><strong>JSP</strong></a> can look awesome;
                            This is a <a href="http://www.dspace.org/" class="dspace">DSpace</a> customization showcase.
                        </span></h3>
                        <br>
                        <div class="btn-grounp hidden-xs">
                            <a class="btn btn-warning btn-raised btn-min-block" href="<%= request.getContextPath() %>/pricing.jsp">Pricing</a>
                            <a class="btn btn-info btn-raised btn-min-block" href="http://www.saturnringstation.com/portfolio">About Me</a>
                        </div>
                    </div>
                </div><!-- /header-text -->
            </div>
            <div class="item">
                <img src="http://via.placeholder.com/1900x1080" alt="Second slide">
                <!-- Static Header -->
                <div class="header-text">
                    <div class="col-md-12 text-center">
                        <h2>
                            <span>Welcome to LOREM IPSUM</span>
                        </h2>
                        <br class="hidden-xs">
                        <h3>
                            <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
                        </h3>
                        <br>
                        <div class="btn-grounp hidden-xs">
                            <a class="btn btn-success btn-raised btn-min-block" href="#">Button1</a><a
                                class="btn btn-default btn-raised btn-min-block" href="#">Button2</a></div>
                    </div>
                </div><!-- /header-text -->
            </div>
            <div class="item">
                <img src="http://via.placeholder.com/1900x1080" alt="Third slide">
                <!-- Static Header -->
                <div class="header-text">
                    <div class="col-md-12 text-center">
                        <h2>
                            <span>Welcome to LOREM IPSUM</span>
                        </h2>
                        <br class="hidden-xs">
                        <h3>
                            <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
                        </h3>
                        <br>
                        <div class="btn-grounp hidden-xs">
                            <a class="btn btn-theme btn-sm btn-min-block" href="#">Button1</a><a
                                class="btn btn-theme btn-sm btn-min-block" href="#">Button2</a></div>
                    </div>
                </div><!-- /header-text -->
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#home-carousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#home-carousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
    <!-- end of home carousel -->
<%
    }
    if (!isHomePage && !isPricingPage) {
%>
    <%--Banner--%>
    <div class="container banner">
        <div class="row">
            <div class="col-md-9 brand">
                <%--<h1><fmt:message key="jsp.layout.header-default.brand.heading" /></h1>--%>
                <%--<fmt:message key="jsp.layout.header-default.brand.description" /> --%>
                <h1>Welcome to <a href="http://www.saturnringstation.com/portfolio" class="text-danger">Tom</a>'s book
                    share</h1>
                <h4> This is a DSpace customization showcase, with my short reviews on books as content. </h4>

                <%-- Location bar --%>
                <%
                    if (locbar) {
                %>
                <div>
                    <dspace:include page="/layout/location-bar.jsp"/>
                </div>
                <%
                    }
                %>
            </div>
            <div class="col-md-3">
                <a href="http://www.saturnringstation.com/portfolio">
                    <img class="pull-right img-responsive" src="<%= request.getContextPath() %>/image/fitlogo.png"
                         alt="Brand logo"/>
                </a>
            </div>
        </div>
    </div>
    <br/>
<%
    }
%>




    <%-- Page contents --%>
    <div class="container">
            <% if (request.getAttribute("dspace.layout.sidebar") != null) { %>
        <div class="row">
            <div class="col-md-9">
                    <% } %>
