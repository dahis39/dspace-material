<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Footer for home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/dspace-tags.tld" prefix="dspace" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.LocaleSupport" %>

<%
    String sidebar = (String) request.getAttribute("dspace.layout.sidebar");
%>

<%-- Right-hand side bar if appropriate --%>
<%
    if (sidebar != null) {
%>
</div>
<div class="col-md-3">
    <%= sidebar %>
</div>
</div>
<%
    }
%>
</div>
</main>
<%-- Page footer --%>
<div class="main-footer">
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-5 widget">
                    <h2>My Service</h2>
                    <article class="widget_content">
                        <ul>
                            <li>General frontend development with HTML/CSS and JS</li>
                            <li>Modern frontend JS framework: Angular 2/4</li>
                            <li>General backend development with Spring MVC/Boot</li>
                            <li>WordPress theme development</li>
                            <li>DSpace customization</li>
                            <li>Server environment setup and installation for all of the above</li>
                        </ul>
                    </article>
                </div>
                <div class="col-md-3 widget">
                    <h2>Link</h2>
                    <article class="widget_content">
                        <ul>
                            <li><a href="http://www.saturnringstation.com/portfolio">My Portfolio</a></li>
                            <li><a href="http://www.saturnringstation.com">My Blog</a></li>
                            <li><a href="http://getbootstrap.com/">Get Bootstrap</a></li>
                            <li><a href="https://github.com/FezVrasta/bootstrap-material-design">Get Material Design</a></li>
                            <li><a href="http://www.dspace.org/">Get DSpace</a></li>
                        </ul>
                    </article>
                </div>
                <div class="col-md-4 widget">
                    <h2>Contact Me</h2>
                    <article class="widget_content">
                        <p> <a href="mailto:tomhdotcom@gmail.com">tomhdotcom@gmail.com</a><br>Phone: (415)988-0220 <br>Location: San Francisco, CA 94131</p>
                    </article>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom navbar-inverse">
        <div class="container">
            <div class="row">
                <div class="col-md-12 widget">© 2017 | Created with DSpace, themed with Boostrap + Material Design
                    <span class="pull-right">
                        <dspace:popup page="<%= LocaleSupport.getLocalizedMessage(pageContext, \"help.index\") %>"><fmt:message key="jsp.layout.navbar-default.help"/></dspace:popup>
                         | <a target="_blank" href="<%= request.getContextPath() %>/feedback"><fmt:message key="jsp.layout.footer-default.feedback"/></a>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>