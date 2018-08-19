<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<dspace:layout locbar="link" titlekey="jsp.home.title" feedData="NONE">

    <section id="pricing">
        <div class="well well-lg">
            <h1><span class="dspace">DSpace</span> Installation</h1>
            <h3>Server</h3>
            <p>Linux or Windows. Dedicated server, visual server or cloud platform. It's your pick. Shared host is not recommended.</p>
            <h3>Version</h3>
            <p>It will be DSpace 6.x default installation. Here's a <a href="http://demo.dspace.org/jspui/home.jsp?locale=en">demo</a> from official site.</p>
            <p>A free update on Bootstrap and JQuery to latest version is included.</p>
            <h3>Hosting Setup</h3>
            <p>After you purchase your server and domain, I set them up for you. Apache or Nginx doing the reverse proxy? It's your choice. I prefer Tomcat as servlet container.</p>
            <h3>Hosting and Maintenance?</h3>
            <p>I'm not providing <strong>monthly</strong> hosting, maintenance and backup service for now. I can do them as one-time purchase, but I don't want to own domain or server for you.</p>
            <p>After my installation and setup, all you need to pay yearly is your regular server and domain bills.</p>
            <h3>Pricing</h3>
            <p> Installation $300, Hosting Setup $100.</p>
        </div>
        <div class="well well-lg">
            <h1><span class="dspace">DSpace</span> Customization</h1>
            <h3>Visual</h3>
            <p>Thanks to the on-board Bootstrap structure, you can use any Bootstrap based theme/template/framework
                out there for your DSpace site. </p>
            <p>Here is some examples and marketplaces:</p>
            <ul>
                <li><a href="wrapbootstrap.com">WrapBootstrap.com</a></li>
                <li><a href="https://www.templatemonster.com/bootstrap-website-templates/?gclid=Cj0KEQjw6-PJBRCO_br1qoOB4LABEiQAEkqcVYDjOxyMhwcake0GMgLJ12qM-NcrekI0M_2LROx8C4oaAnYd8P8HAQ">TemplateMonster.com</a></li>
                <li><a href="https://github.com/FezVrasta/bootstrap-material-design">Material Design for Bootstrap</a> (current theme)</li>
                <li><a href="http://talkslab.github.io/metro-bootstrap/">metro-bootstrap</a></li>
                <li><a href="http://propeller.in/index.html">Propeller</a></li>
            </ul>
            <p>Every theme does thing a little bit different, so adjustment is mostly needed. </p>
            <p>Any visual features like carousel, gallery, tables, JS effects and side panel not from the DSpace default install will require coding in the JSPs.</p>
            <h3>Feature and Function</h3>
            <p>There are quite a few build-in features are disabled by default. Take a look at the
                <a href="https://wiki.duraspace.org/display/DSDOC6x/DSpace+6.x+Documentation">document</a> or ask me for recommendation.
                They can be enable easily by editing the config file.
            </p>
            <p>Panel moving from page to page, new page and redo page. Anything you like.</p>
            <p>Third party integrations as service are relatively easy task(low cost) yet powerful options.</p>
            <p>For examples:</p>
            <ul>
                <li>Google Map</li>
                <li>Google Analytics</li>
                <li>SurveyMonkey</li>
                <li>Twitter Tweets Embedded</li>
                <li>Facebook Embedded Posts</li>
            </ul>
            <h3>Development</h3>
            <p>DSpace development is welcome. I do TDD + agile.</p>
            <h3>Pricing</h3>
            <p> Theme install, typography adjust, brand colors match, logo and titles change on default installation: $200.</p>
            <p> Anything beyond will be hourly charged or project-based. Email me details for pricing.</p>
        </div>
        <div class="well well-lg">
            <h3>About Current Theme</h3>
            <p>The site you're seeing now is running <a href="<%= request.getContextPath() %>" class="dspace">DSpace 6.0 JSPUI</a> with
                <a href="https://github.com/FezVrasta/bootstrap-material-design">Material Design for Bootstrap</a> theme.
                I made a lot of code change in dozen of JSP files and others in order to achieve such result. Well, work had already been
                done. If you like the overall layout and style. You just want to change colors and font, and put your
                titles and logo on. I got a deal for you: $500.
            </p>
        </div>
    </section>

    <div class="bg-svg" aria-hidden="true">
    </div>

</dspace:layout>
